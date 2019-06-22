package com.dao;

import com.pojo.Flight;

import java.util.List;

/**
 * Created by dell on 2019/2/27.
 */
public interface FlightDao {
    int addFlight(Flight flight);

    int updateFlight(Flight flight);

    Flight queryFlightById(String flightCode);

    List<Flight> queryAllFlight();
}
