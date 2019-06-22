package com.utils.flask;

public class CallDemo {
    public static void main(String[] args){
        SpiderInterface spider = new Spider();
        //爬取从距今天startDateIndex天开始，一共dayCount天的数据
        //途牛
//        spider.tuniuSpider(0,5);
//        //携程
//        spider.ctripSpider(0,5);
//        //variFlight
//        spider.variflightSpider(0,5);
        //苏宁
        spider.suningSpider(0,5);
    }
}
