package com.dao;

import com.pojo.AirportWeather;

/**
 * Created by dell on 2019/2/27.
 */
public interface AirportWeatherDao {
    int addAirportWeather(AirportWeather airportWeather);

    int updateAirportWeather(AirportWeather airportWeather);

    AirportWeather queryAirportWeatherById(String airCode);
}
