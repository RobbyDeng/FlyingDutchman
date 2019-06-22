package com.service.impl;

import com.dao.TicketDao;
import com.pojo.Ticket;
import com.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2019/2/27.
 */
@Service
public class TicketServiceImpl implements TicketService {
    @Autowired
    private TicketDao ticketDao;

    public int addTicket(Ticket ticket){
        return ticketDao.addTicket(ticket);
    }

    public int updateTicket(Ticket ticket){
        return ticketDao.updateTicket(ticket);
    }

    public Ticket queryTicketById(String id){
        return ticketDao.queryTicketById(id);
    }

    public List<Ticket> queryAllTicket(){
        return ticketDao.queryAllTicket();
    }
}
