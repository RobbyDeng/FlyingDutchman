package com.service.impl;

import com.dao.AirlineDao;
import com.pojo.Airline;
import com.service.AirlineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2019/2/27.
 */
@Service
public class AirlineServiceImpl implements AirlineService {
    @Autowired
    private AirlineDao airlineDao;

    public int addAirline(Airline airline){
        return airlineDao.addAirline(airline);
    }

    public int updateAirline(Airline airline){
        return airlineDao.updateAirline(airline);
    }

    public Airline queryAirlineById(String code){
        return airlineDao.queryAirlineById(code);
    }

    public List<Airline> queryAllAirline(){
        return airlineDao.queryAllAirline();
    }
}
