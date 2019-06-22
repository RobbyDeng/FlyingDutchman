package com.service;

import com.pojo.Airline;

import java.util.List;

/**
 * Created by dell on 2019/2/27.
 */
public interface AirlineService {
    int addAirline(Airline airline);

    int updateAirline(Airline airline);

    Airline queryAirlineById(String code);

    List<Airline> queryAllAirline();
}
