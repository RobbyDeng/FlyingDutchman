package com.utils.cityhadoop;


import com.utils.implementation.FilterDriver;
import net.sf.json.JSONArray;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;

import java.io.IOException;
import java.net.URI;

public class CityFilterDriver implements FilterDriver {


    private String departureCity;
    private String arrivalCity;
    private String date;
    private String fileName;
    private String srcPath;
    private JSONArray result = new JSONArray();
    private Path path = new Path("E:\\output");
    private String srcName;
    private boolean flag;
    public CityFilterDriver(){

    }



    private void setSrcPath(String srcPath) {
        this.srcPath = srcPath;
    }

    public void setDepartureCity(String departureCity) {
        this.departureCity = departureCity;
    }

    public void setArrivalCity(String arrivalCity) {
        this.arrivalCity = arrivalCity;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setSrcName(String srcName){
        this.srcName=srcName;
    }

    @Override
    public boolean IsFileExists(Configuration conf) throws IOException {
        FileSystem fs = FileSystem.get(conf);
        this.flag=false;
        this.fileName = conf.get("departureCity")+"_"+conf.get("arrivalCity")+"_"+conf.get("date")+".json";
        if(fs.exists(new Path("E:\\localData\\"+this.srcName+"\\"+this.fileName))){
            this.flag = true;
            return this.flag;
        }
        return this.flag;
    }


    @Override
    public void init() throws ClassNotFoundException, InterruptedException, IOException {

        Configuration conf = new Configuration();
        conf.set("mapred.job.tracker","ubuntu:9001");

        //检查各项查询条件是否配置完成(出发城市，目的城市，日期)
        if(this.departureCity==null){
            System.err.println("还没有配置需要查询的出发城市！");
            return;
        }else{
            System.out.println("已经配置了需要查询的出发城市");
            conf.set("departureCity",this.departureCity);
        }


        if(this.arrivalCity==null){
            System.err.println("还没有配置需要查询的目的城市！");
            return;
        }else{
            System.out.println("已经配置了需要查询的目的城市");
            conf.set("arrivalCity",this.arrivalCity);
        }


        if(this.date==null){
            System.err.println("还没有配置需要查询的日期！");
            return;
        }else{
            System.out.println("已经配置了需要查询的日期");
            conf.set("date", this.date);
        }


        //检查是否输入数据源
        if(this.srcName==null){
            System.err.println("还没有配置需要查询的数据源！！");
            return;
        }
        else{
            System.out.println("已经配置了查询的数据源");
            conf.set("srcName",this.srcName);
        }
        Job job = Job.getInstance(conf);

        job.setJarByClass(CityFilterDriver.class);
        job.setMapperClass(CityFilterMapper.class);
        job.setReducerClass(CityFilterReducer.class);

        job.setMapOutputKeyClass(Text.class);
        job.setMapOutputValueClass(NullWritable.class);

        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(NullWritable.class);




        //将自定义的输出格式组件设置到job中
        job.setOutputFormatClass(CityFilterOutputFormat.class);

        //获取文件系统对象
        FileSystem fs = FileSystem.get(conf);





        //log日志：mapreduce是否成功的文件保存路径(每次执行mapreduce需要删除)
        if(fs.exists(path)){
            fs.delete(path);
            System.out.println("记录mapreduce成功的文件所在的目录已经删除！！！");
        }

        URI uri = URI.create("hdfs://ubuntu:9000/");
        FileSystem fileSystem = FileSystem.get(uri,conf);


        Long maxTime = Long.valueOf(0);
        String parentPath = new String();
        URI uriSrcPath = null;

        if(srcName.equals("ctrip")){
            parentPath = "/hy/flightPrice_ctrip/";

        }
        if(srcName.equals("suning")){
            parentPath = "/hy/flightPrice_suning/";
        }
        if(srcName.equals("tuniu")){
            parentPath = "/hy/flightPrice_tuniu/";
        }
        if(srcName.equals("variflight")){
            parentPath = "/hy/flightInfo_variflight/";
        }

        FileStatus[] listStatus = fileSystem.listStatus(new Path(parentPath));

        if(listStatus.length==0){
            System.err.print("该数据源下没有文件！！");
            return;
        }

        //检索到最新的数据源文件
        for (FileStatus fileStatus : listStatus) {

            if ((Long) fileStatus.getModificationTime() > maxTime) {
                uriSrcPath = fileStatus.getPath().toUri();
            }

        }
        System.out.print("查询的是最新数据源库!!\n");
        //配置数据源文件库的最终位置
        setSrcPath(uriSrcPath.toString());


        //检查是否数据源路径是否存在
        if(!fileSystem.exists(new Path(this.srcPath))){
            System.err.println("hadoop上没有可查询数据源库！！");
            return;
        }
        else{
            System.out.println("该数据源库存在！！");
        }


        //检查是否有缓存文件
        if(IsFileExists(conf)){
            System.err.println("该查询条件的文件已缓存！！(请直接调用FileReader,无需设置Driver)");
            return;
        }
        else{
            System.out.println("该查询条件之前没有查询过，是初次查询！！");
        }


        FileInputFormat.setInputPaths(job,new Path(this.srcPath));
        FileOutputFormat.setOutputPath(job,path);


        boolean result = job.waitForCompletion(true);
        return;

//        System.exit(result?0:1);

    }




}
