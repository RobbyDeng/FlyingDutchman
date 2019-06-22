package com.utils.cityhadoop;

import com.utils.hadoop.Ticket;
import net.sf.json.JSONObject;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FSDataOutputStream;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IOUtils;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.RecordWriter;
import org.apache.hadoop.mapreduce.TaskAttemptContext;
import org.codehaus.jackson.map.ObjectMapper;

import java.io.IOException;

public class CityFilterRecordWriter extends RecordWriter<Text, NullWritable> {
    FSDataOutputStream filterInfo = null;
//    FSDataOutputStream otherInfo = null;
    Configuration conf = new Configuration();
    ObjectMapper objMapper = new ObjectMapper();
    Ticket ticket = new Ticket();
    JSONObject record = new JSONObject();
    public CityFilterRecordWriter(TaskAttemptContext job) {


        //获取文件系统

        try {
            conf = job.getConfiguration();
            FileSystem fs = FileSystem.get(conf);

            String fileName = conf.get("departureCity")+"_"+conf.get("arrivalCity")+"_"+conf.get("date")+".json";



                filterInfo = fs.create(new Path("E:\\localData\\" +conf.get("srcName")+"\\"+fileName));
//                otherInfo = fs.create(new Path("E:\\localData\\"+conf.get("srcName")+"\\others.json"));

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //判断key中是否有
    @Override
    public void write(Text key, NullWritable nullWritable) throws IOException {
        String jsonStr = key.toString();
        //获取单条记录
        if((conf.get("srcName").equals("tuniu"))||(conf.get("srcName").equals("ctrip"))||(conf.get("srcName").equals("suning"))){
            ticket = objMapper.readValue(jsonStr, Ticket.class);

            if((ticket.getDepCity().equals(conf.get("departureCity")))
                    &&(ticket.getArrCity().equals(conf.get("arrivalCity")))
                    &&(ticket.getDate().equals(conf.get("date")))){
                    filterInfo.write(key.toString().getBytes());
            }

        }
//    {"FlightCompany": "\u5357\u65b9\u822a\u7a7a", "FlightNo": "CZ6445", "generic": "JET", "FlightArrAirport": "\u5e38\u5fb7\u6843\u82b1\u6e90", "FlightDepAirport": "\u6df1\u5733\u5b9d\u5b89", "FlightDeptimePlanDate": "2019-04-01 10:25:00", "FlightArrtimePlanDate": "2019-04-01 12:00:00", "FlightDeptimeDate": "", "FlightArrtimeDate": "", "FlightState": "\u8ba1\u5212", "FlightDuration": "78", "distance": "853", "FlightYear": "", "FlightDep": "\u6df1\u5733", "FlightArr": "\u5e38\u5fb7"}

        if(conf.get("srcName").equals("variflight")){
            record = JSONObject.fromObject(jsonStr);
            if((record.getString("FlightDep").equals(conf.get("departureCity")))&&
                    (record.getString("FlightArr").equals(conf.get("arrivalCity")))&&
                     record.getString("FlightDeptimePlanDate").substring(0,10).equals(conf.get("date"))){
                    filterInfo.write(jsonStr.getBytes());
            }
        }

        return;

    }



    @Override
    public void close(TaskAttemptContext taskAttemptContext) throws IOException, InterruptedException {
        IOUtils.closeStream(filterInfo);

    }
}
