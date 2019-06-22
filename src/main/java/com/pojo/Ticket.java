package com.pojo;

/**
 * Created by dell on 2019/2/27.
 */
public class Ticket {
    private String flightCode;
    private String dateSource;
    private String date;
    private String ETD;
    private String origPrice;
    private String currPrice;
    private String type;
    private String transit;
    private String transfer;

    public String getFlightCode() {
        return flightCode;
    }

    public void setFlightCode(String flightCode) {
        this.flightCode = flightCode;
    }

    public String getDateSource() {
        return dateSource;
    }

    public void setDateSource(String dateSource) {
        this.dateSource = dateSource;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getETD() {
        return ETD;
    }

    public void setETD(String ETD) {
        this.ETD = ETD;
    }

    public String getOrigPrice() {
        return origPrice;
    }

    public void setOrigPrice(String origPrice) {
        this.origPrice = origPrice;
    }

    public String getCurrPrice() {
        return currPrice;
    }

    public void setCurrPrice(String currPrice) {
        this.currPrice = currPrice;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTransit() {
        return transit;
    }

    public void setTransit(String transit) {
        this.transit = transit;
    }

    public String getTransfer() {
        return transfer;
    }

    public void setTransfer(String transfer) {
        this.transfer = transfer;
    }
}
