package com.dao;

import com.pojo.Ticket;

import java.util.List;

/**
 * Created by dell on 2019/2/27.
 */
public interface TicketDao {
    int addTicket(Ticket ticket);

    int updateTicket(Ticket ticket);

    Ticket queryTicketById(String id);

    List<Ticket> queryAllTicket();
}
