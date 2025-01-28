/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author asus
 */
public class Reservation {
    private String name;
    private String checkIn;
    private String checkOut;
    private int guests;
    private String roomType;

    public Reservation(String name, String checkIn, String checkOut, int guests, String roomType) {
        this.name = name;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.guests = guests;
        this.roomType = roomType;
    }

    public String getName() {
        return name;
    }

    public String getCheckIn() {
        return checkIn;
    }

    public String getCheckOut() {
        return checkOut;
    }

    public int getGuests() {
        return guests;
    }

    public String getRoomType() {
        return roomType;
    }
}
