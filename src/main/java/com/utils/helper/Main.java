package com.utils.helper;

import java.io.IOException;

public class Main {
    public static void main(String[] args) throws InterruptedException, IOException, ClassNotFoundException {
//        CityFilterDriver用于处理筛选城市之间的信息，需要参数为出发城市，目的城市和日期以及数据源的配置
//        CityFilterDriver cityFilterDriver = new CityFilterDriver();
//        cityFilterDriver.setDepartureCity("成都");
//        cityFilterDriver.setArrivalCity("南京");
//        cityFilterDriver.setDate("2019-03-24");
//        cityFilterDriver.setSrcName("tuniu");
//        cityFilterDriver.init();

//        //四个参数的FileReader读取的是票价和航班信息，返回
        FileReader fileReader = new FileReader("tuniu","成都","南京","2019-03-24");
        fileReader.Reader();
        //返回一个JSONArray包含筛选信息
        System.out.println(fileReader.getResult());
        //FlightFilterDriver用于处理筛选航班号的信息，需要参数为航班号和日期以及数据源的配置
//        FlightFilterDriver flightFilterDriver = new FlightFilterDriver();
//        flightFilterDriver.setFlightNumber("CZ6445");
//        flightFilterDriver.setDate("2019-04-01");
//        flightFilterDriver.setSrcName("variflight");
//        flightFilterDriver.init();
////
//        FileReader fileReaderAgain = new FileReader("variflight","CZ6445","2019-04-01");
//        fileReaderAgain.Reader();
    }
}
