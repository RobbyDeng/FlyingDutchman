package com.utils.helper;

import com.utils.hadoop.Ticket;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.codehaus.jackson.map.ObjectMapper;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public class FileReader {
    private String departureCity;
    private String arrivalCity;
    private String date;
    private String flightNumber;
    private String type;
    private String fileName;
    private String srcName;
    private JSONArray result;


    public JSONArray getResult() {
        return result;
    }

    public  FileReader(String srcName, String flightNumber, String date){
        this.flightNumber=flightNumber;
        this.date=date;
        this.srcName=srcName;
        this.fileName=flightNumber+"_"+date+".json";
        this.type="flight";
        System.out.println("以下是航班查询：");
    }

    public  FileReader(String srcName,String departureCity,String arrivalCity,String date){
        this.arrivalCity=arrivalCity;
        this.departureCity=departureCity;
        this.date=date;
        this.srcName=srcName;
        this.fileName=departureCity+"_"+arrivalCity+"_"+date+".json";
        this.type="city";

        System.out.println("以下是票价与航线查询：");
    }

    public void Reader(){

        if(this.type.equals("flight")&&(this.flightNumber==null||this.date==null)){
            return;
        }
        if(this.type.equals("city")&&(this.departureCity==null||this.arrivalCity==null||this.date==null)){
            return;
        }
        String fileAddr = "E:\\localData\\"+this.srcName+"\\"+this.fileName;


        File file = new File(fileAddr);
        //判断文件是否为空
        if(file.length()==0){
            System.err.println("查询结果为空！！");
            return;
        }

        if(!file.exists()){
            System.err.println("查询文件不存在！！");
            return;
        }
        BufferedReader reader = null;
        String tmpString;
        JSONArray recordArrayList = new JSONArray();
        ObjectMapper objectMapper = new ObjectMapper();

        int line = 1;

        try{

            reader = new BufferedReader(new java.io.FileReader(file));
            if((this.srcName=="tuniu")||(this.srcName=="ctrip")||(this.srcName=="suning")) {
                while ((tmpString = reader.readLine()) != null) {
                    System.out.println("Record" + line + ":" + tmpString + "\n");
                    Ticket ticket = objectMapper.readValue(tmpString, Ticket.class);
                    recordArrayList.add(ticket);
                    line++;
                }
                result = recordArrayList;
            }
            if(this.srcName=="variflight") {
                while ((tmpString = reader.readLine()) != null) {
                    System.out.println("Record" + line + ":" + tmpString + "\n");
                    JSONObject record = JSONObject.fromObject(tmpString);
                    recordArrayList.add(record);
                    line++;
                }
                result = recordArrayList;
            }
            reader.close();

        }catch (FileNotFoundException e){
            e.printStackTrace();
        }
        catch (IOException e){
            e.printStackTrace();
        }
        finally{
            if(reader!=null){
                try{
                    reader.close();
                } catch (IOException e1){
                    e1.printStackTrace();
                }
            }
        }
    }

}
