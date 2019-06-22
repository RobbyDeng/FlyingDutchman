package com.dao;

import com.pojo.Airport;

import java.util.List;

/**
 * Created by dell on 2019/2/27.
 */
public interface AirportDao {
    int addAirport(Airport airport);

    int updateAirport(Airport airport);

    Airport queryAirportById(String airCode);

    List<Airport> queryAllAirport();
}
