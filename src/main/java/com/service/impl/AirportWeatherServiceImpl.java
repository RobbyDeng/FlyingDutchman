package com.service.impl;

import com.dao.AirportWeatherDao;
import com.pojo.AirportWeather;
import com.service.AirportWeatherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by dell on 2019/2/27.
 */
@Service
public class AirportWeatherServiceImpl implements AirportWeatherService {
    @Autowired
    private AirportWeatherDao airportWeatherDao;

    public int addAirportWeather(AirportWeather airportWeather){
        return airportWeatherDao.addAirportWeather(airportWeather);
    }

    public int updateAirportWeather(AirportWeather airportWeather){
        return airportWeatherDao.updateAirportWeather(airportWeather);
    }

    public AirportWeather queryAirportWeatherById(String airCode){
        return airportWeatherDao.queryAirportWeatherById(airCode);
    }
}
