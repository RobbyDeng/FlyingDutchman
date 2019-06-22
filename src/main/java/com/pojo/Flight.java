package com.pojo;

/**
 * Created by dell on 2019/2/27.
 */
public class Flight {
    private String flightCode;
    private String date;
    private String ETD;
    private String ETA;
    private String ATD;
    private String ATA;
    private String airline;
    private String type;
    private String departurePort;
    private String arrivePort;
    private String mileage;
    private String state;

    public String getFlightCode() {
        return flightCode;
    }

    public void setFlightCode(String flightCode) {
        this.flightCode = flightCode;
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

    public String getETA() {
        return ETA;
    }

    public void setETA(String ETA) {
        this.ETA = ETA;
    }

    public String getATD() {
        return ATD;
    }

    public void setATD(String ATD) {
        this.ATD = ATD;
    }

    public String getATA() {
        return ATA;
    }

    public void setATA(String ATA) {
        this.ATA = ATA;
    }

    public String getAirline() {
        return airline;
    }

    public void setAirline(String airline) {
        this.airline = airline;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDeparturePort() {
        return departurePort;
    }

    public void setDeparturePort(String departurePort) {
        this.departurePort = departurePort;
    }

    public String getArrivePort() {
        return arrivePort;
    }

    public void setArrivePort(String arrivePort) {
        this.arrivePort = arrivePort;
    }

    public String getMileage() {
        return mileage;
    }

    public void setMileage(String mileage) {
        this.mileage = mileage;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
