package com.utils.flighthadoop;

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

public class FlightFilterRecordWriter extends RecordWriter<Text, NullWritable> {
    FSDataOutputStream filterInfo = null;
//    FSDataOutputStream otherInfo = null;

    Configuration conf = new Configuration();
    ObjectMapper objMapper = new ObjectMapper();
    Ticket ticket = new Ticket();
    Boolean flag = false;
    JSONObject record = new JSONObject();
    public FlightFilterRecordWriter(TaskAttemptContext job) {


        //获取文件系统
        try {
            conf = job.getConfiguration();
            FileSystem fs = FileSystem.get(conf);

            String fileName = conf.get("flightNumber")+"_"+conf.get("date")+".json";

            filterInfo = fs.create(new Path("E:\\localData\\"+conf.get("srcName")+"\\"+fileName));
//            otherInfo = fs.create(new Path("E:\\localData\\"+conf.get("srcName")+"\\others.json"));

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //判断key是否满足条件
    @Override
    public void write(Text key, NullWritable nullWritable) throws IOException {
        String jsonStr = key.toString();
        if((conf.get("srcName").equals("tuniu"))||(conf.get("srcName").equals("ctrip"))||(conf.get("srcName").equals("suning"))) {
            //获取单条记录
            ticket = objMapper.readValue(key.toString(), Ticket.class);

            if ((ticket.getFlightNumber().equals(conf.get("flightNumber")))
                    && (ticket.getDate().equals(conf.get("date")))) {
                filterInfo.write(key.toString().getBytes());
            }
        }


        if(conf.get("srcName").equals("variflight")){
            //获取单条记录
            record = JSONObject.fromObject(jsonStr);
            if((record.getString("FlightNo").equals(conf.get("flightNumber")))&&
                    record.getString("FlightDeptimePlanDate").substring(0,10).equals(conf.get("date"))){
                filterInfo.write(jsonStr.getBytes());
            }
        }
    }



    @Override
    public void close(TaskAttemptContext taskAttemptContext) throws IOException, InterruptedException {
        IOUtils.closeStream(filterInfo);
//        IOUtils.closeStream(otherInfo);
    }
}
