package com;

import java.util.Timer;

/**
 * Created by dell on 2019/3/9.
 */
public class Test {
    public static void main(String[] args) throws InterruptedException {
//        String typeName = "时间";
//        String time = "02:38 PM";
////        String time = "0.000001";
//
//        Timer timer = new Timer();
////        timer.cancel();
//        if (typeName.equals("频率")){
//            System.out.println(Double.parseDouble(time));
//            System.out.println(Double.parseDouble(time) * 3600 * 1000);
//            System.out.println((int) (Double.parseDouble(time) * 3600 * 1000));
//            int millisecond = (int) (Double.parseDouble(time) * 3600 * 1000);
//            System.out.println(millisecond);
//            timer.schedule(new TimerTask() {
//                @Override
//                public void run() {
//                    System.out.println("运行了频率");
//                }
//            }, 1000, millisecond);
//        }else if (typeName.equals("时间")){
//            Calendar c = Calendar.getInstance();
//            int currHour = c.get(Calendar.HOUR_OF_DAY);
//            int currMinute = c.get(Calendar.MINUTE);
//            System.out.println("当前时间: " + currHour + ":" + currMinute);
//
//            String[] timeTmp = time.split(" ");
//            String[] timeList = timeTmp[0].split(":");
//            int hour = Integer.parseInt(timeList[0]);
//            int minute = Integer.parseInt(timeList[1]);
//            if (timeTmp[1].equals("PM")){
//                hour += 12;
//            }
//
//            System.out.println("计划时间: " + hour + ":" + minute);
//
//            int millisecond = ((hour - currHour) * 3600 + (minute - currMinute) * 60) * 1000;
//            if (millisecond < 0){
//                millisecond += 24 * 3600 * 1000;
//            }
//
//            System.out.println(millisecond);
//            timer.schedule(new TimerTask() {
//                @Override
//                public void run() {
//                    System.out.println("运行了时间");
//                }
//            }, millisecond);
//
//            timer.schedule(new TimerTask() {
//                @Override
//                public void run() {
//                    System.out.println("运行了时间");
//                }
//            }, millisecond + 24 * 3600 * 1000,  24 * 3600 * 1000);
//        }

        Timer timer = new Timer();
        System.out.println(timer);
        timer.cancel();

    }
}
