package com.pojo;

/**
 * Created by dell on 2019/2/27.
 */
public class AirportWeather {
    private String airCode;
    private String currTemp;
    private String highTemp;
    private String lowTemp;
    private String weatherInfo;
    private String windInfo;

    public String getAirCode() {
        return airCode;
    }

    public void setAirCode(String airCode) {
        this.airCode = airCode;
    }

    public String getCurrTemp() {
        return currTemp;
    }

    public void setCurrTemp(String currTemp) {
        this.currTemp = currTemp;
    }

    public String getHighTemp() {
        return highTemp;
    }

    public void setHighTemp(String highTemp) {
        this.highTemp = highTemp;
    }

    public String getLowTemp() {
        return lowTemp;
    }

    public void setLowTemp(String lowTemp) {
        this.lowTemp = lowTemp;
    }

    public String getWeatherInfo() {
        return weatherInfo;
    }

    public void setWeatherInfo(String weatherInfo) {
        this.weatherInfo = weatherInfo;
    }

    public String getWindInfo() {
        return windInfo;
    }

    public void setWindInfo(String windInfo) {
        this.windInfo = windInfo;
    }
}
