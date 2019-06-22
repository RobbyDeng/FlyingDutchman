package com.service.impl;

import com.dao.AirportDao;
import com.pojo.Airport;
import com.service.AirportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2019/2/27.
 */
@Service
public class AirportServiceImpl implements AirportService {
    @Autowired
    private AirportDao airportDao;

    public int addAirport(Airport airport){
        return airportDao.addAirport(airport);
    }

    public int updateAirport(Airport airport){
        return airportDao.updateAirport(airport);
    }

    public Airport queryAirportById(String airCode){
        return airportDao.queryAirportById(airCode);
    }

    public List<Airport> queryAllAirport(){
        return airportDao.queryAllAirport();
    }
}
