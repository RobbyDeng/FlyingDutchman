package com.service.impl;

import com.dao.FlightDao;
import com.pojo.Flight;
import com.service.FlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2019/2/27.
 */
@Service
public class FlightServiceImpl implements FlightService {
    @Autowired
    private FlightDao flightDao;

    public int addFlight(Flight flight){
        return flightDao.addFlight(flight);
    }

    public int updateFlight(Flight flight){
        return flightDao.updateFlight(flight);
    }

    public Flight queryFlightById(String flightCode){
        return flightDao.queryFlightById(flightCode);
    }

    public List<Flight> queryAllFlight(){
        return flightDao.queryAllFlight();
    }
}
