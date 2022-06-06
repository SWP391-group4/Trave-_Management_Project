/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class FlightDetails {

    public String flightId;
    public String from;
    public String to;
    public String startTimeA;
    public String endTimeA;
    public String startTimeB;
    public String endTimeB;
    public String planeId;

    public FlightDetails() {
    }

    public FlightDetails(String flightId, String from, String to, String startTimeA, String endTimeA, String startTimeB, String endTimeB, String planeId) {
        this.flightId = flightId;
        this.from = from;
        this.to = to;
        this.startTimeA = startTimeA;
        this.endTimeA = endTimeA;
        this.startTimeB = startTimeB;
        this.endTimeB = endTimeB;
        this.planeId = planeId;
    }

    public String getFlightId() {
        return flightId;
    }

    public void setFlightId(String flightId) {
        this.flightId = flightId;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getStartTimeA() {
        return startTimeA;
    }

    public void setStartTimeA(String startTimeA) {
        this.startTimeA = startTimeA;
    }

    public String getEndTimeA() {
        return endTimeA;
    }

    public void setEndTimeA(String endTimeA) {
        this.endTimeA = endTimeA;
    }

    public String getStartTimeB() {
        return startTimeB;
    }

    public void setStartTimeB(String startTimeB) {
        this.startTimeB = startTimeB;
    }

    public String getEndTimeB() {
        return endTimeB;
    }

    public void setEndTimeB(String endTimeB) {
        this.endTimeB = endTimeB;
    }

    public String getPlaneId() {
        return planeId;
    }

    public void setPlaneId(String planeId) {
        this.planeId = planeId;
    }

    @Override
    public String toString() {
        return "FlightDetails{" + "flightId=" + flightId + ", from=" + from + ", to=" + to + ", startTimeA=" + startTimeA + ", endTimeA=" + endTimeA + ", startTimeB=" + startTimeB + ", endTimeB=" + endTimeB + ", planeId=" + planeId + '}';
    }

    
    
    
}
