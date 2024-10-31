/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author hadi
 */
public class RoomAvailability {

    private String roomId;
    private String roomName;
    private String price;
    private Date date;
    private String roomsLeft;
    private String roomsBooked;
    private String roomsTotal;

    public RoomAvailability(String roomId, String roomName, String price, Date date, String roomsLeft, String roomsBooked, String roomsTotal) {
        this.roomId = roomId;
        this.roomName = roomName;
        this.price = price;
        this.date = date;
        this.roomsLeft = roomsLeft;
        this.roomsBooked = roomsBooked;
        this.roomsTotal = roomsTotal;
    }

    public RoomAvailability() {
    }
    

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getRoomsLeft() {
        return roomsLeft;
    }

    public void setRoomsLeft(String roomsLeft) {
        this.roomsLeft = roomsLeft;
    }

    public String getRoomsBooked() {
        return roomsBooked;
    }

    public void setRoomsBooked(String roomsBooked) {
        this.roomsBooked = roomsBooked;
    }

    public String getRoomsTotal() {
        return roomsTotal;
    }

    public void setRoomsTotal(String roomsTotal) {
        this.roomsTotal = roomsTotal;
    }

    @Override
    public String toString() {
        return "RoomAvailability{" + "roomId=" + roomId + ", roomName=" + roomName + ", price=" + price + ", date=" + date + ", roomsLeft=" + roomsLeft + ", roomsBooked=" + roomsBooked + ", roomsTotal=" + roomsTotal + '}';
    }

    
    
    
}
