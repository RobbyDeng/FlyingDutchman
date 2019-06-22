package hdfs;

import org.apache.hadoop.io.Writable;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

public class Ticket implements Writable {
    private String airlineCode;
    private String airlineName;
    private String flightNumber;
    private String craftTypeName;
    private String depCity;
    private String arrCity;
    private String date;
    private String deAirport;
    private String arrAirport;
    private String departureTime;
    private String arrivalTime;
    private String cabinClass;
    private int price;
    private double rate;
    private String puntualityRate;

    public Ticket(){ super();}

    @Override
    public String toString() {
        return this.depCity+"/"+this.arrCity+"/"+this.date+"/"+this.cabinClass;
    }

    public Ticket(String airlineCode, String airlineName, String flightNumber, String craftTypeName, String depCity, String arrCity, String date, String deAirport, String arrAirport, String departureTime, String arrivalTime, String cabinClass, int price, double rate, String puntualityRate) {
        super();
        this.airlineCode = airlineCode;
        this.airlineName = airlineName;
        this.flightNumber = flightNumber;
        this.craftTypeName = craftTypeName;
        this.depCity = depCity;
        this.arrCity = arrCity;
        this.date = date;
        this.deAirport = deAirport;
        this.arrAirport = arrAirport;
        this.departureTime = departureTime;
        this.arrivalTime = arrivalTime;
        this.cabinClass = cabinClass;
        this.price = price;
        this.rate = rate;
        this.puntualityRate = puntualityRate;
    }


    @Override
    public void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeChars(airlineCode);
        dataOutput.writeChars(airlineName);
        dataOutput.writeChars(flightNumber);
        dataOutput.writeChars(craftTypeName);
        dataOutput.writeChars(depCity);
        dataOutput.writeChars(arrCity);
        dataOutput.writeChars(date);
        dataOutput.writeChars(deAirport);
        dataOutput.writeChars(arrAirport);
        dataOutput.writeChars(departureTime);
        dataOutput.writeChars(arrivalTime);
        dataOutput.writeChars(cabinClass);
        dataOutput.writeInt(price);
        dataOutput.writeDouble(rate);
        dataOutput.writeChars(puntualityRate);
    }

    @Override
    public void readFields(DataInput dataInput) throws IOException {
        this.airlineCode=dataInput.readLine();
        this.airlineName=dataInput.readLine();
        this.flightNumber=dataInput.readLine();
        this.craftTypeName=dataInput.readLine();
        this.depCity=dataInput.readLine();
        this.arrCity=dataInput.readLine();
        this.date=dataInput.readLine();
        this.deAirport=dataInput.readLine();
        this.arrAirport=dataInput.readLine();
        this.departureTime=dataInput.readLine();
        this.arrivalTime=dataInput.readLine();
        this.cabinClass=dataInput.readLine();
        this.price=dataInput.readInt();
        this.rate=dataInput.readDouble();
        this.puntualityRate=dataInput.readLine();

    }


    public String query(String departureCity,String arrivalCity,String date,String cabinClass){

        return depCity+"/"+this.arrCity+"/"+this.date+"/"+this.cabinClass;

    }


    public void setAirlineCode(String airlineCode){
        this.airlineCode = airlineCode;
    }
    public String getAirlineCode(){
        return this.airlineCode;
    }
    public void setAirlineName(String airlineName){
        this.airlineName = airlineName;
    }
    public String getAirlineName(){
        return this.airlineName;
    }
    public void setFlightNumber(String flightNumber){
        this.flightNumber = flightNumber;
    }
    public String getFlightNumber(){
        return this.flightNumber;
    }
    public void setCraftTypeName(String craftTypeName){
        this.craftTypeName = craftTypeName;
    }
    public String getCraftTypeName(){
        return this.craftTypeName;
    }
    public void setDepCity(String depCity){
        this.depCity = depCity;
    }
    public String getDepCity(){
        return this.depCity;
    }
    public void setArrCity(String arrCity){
        this.arrCity = arrCity;
    }
    public String getArrCity(){
        return this.arrCity;
    }
    public void setDate(String date){
        this.date = date;
    }
    public String getDate(){
        return this.date;
    }
    public void setDeAirport(String deAirport){
        this.deAirport = deAirport;
    }
    public String getDeAirport(){
        return this.deAirport;
    }
    public void setArrAirport(String arrAirport){
        this.arrAirport = arrAirport;
    }
    public String getArrAirport(){
        return this.arrAirport;
    }
    public void setDepartureTime(String departureTime){
        this.departureTime = departureTime;
    }
    public String getDepartureTime(){
        return this.departureTime;
    }
    public void setArrivalTime(String arrivalTime){
        this.arrivalTime = arrivalTime;
    }
    public String getArrivalTime(){
        return this.arrivalTime;
    }
    public void setCabinClass(String cabinClass){
        this.cabinClass = cabinClass;
    }
    public String getCabinClass(){
        return this.cabinClass;
    }
    public void setPrice(int price){
        this.price = price;
    }
    public int getPrice(){
        return this.price;
    }
    public void setRate(double rate){
        this.rate = rate;
    }
    public double getRate(){
        return this.rate;
    }
    public void setPuntualityRate(String puntualityRate){
        this.puntualityRate = puntualityRate;
    }
    public String getPuntualityRate(){
        return this.puntualityRate;
    }

}