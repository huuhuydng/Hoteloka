/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Room {

    private String room_id;
    private String hotel_id;
    private String room_name;
    private String room_price;
    private String room_img;
    private String numPeople;
    private String numRoom;

    public Room() {
    }

    public Room(String room_id, String hotel_id, String room_name, String room_price, String room_img, String numPeople, String numRoom) {
        this.room_id = room_id;
        this.hotel_id = hotel_id;
        this.room_name = room_name;
        this.room_price = room_price;
        this.room_img = room_img;
        this.numPeople = numPeople;
        this.numRoom = numRoom;
    }

    public String getRoom_id() {
        return room_id;
    }

    public void setRoom_id(String room_id) {
        this.room_id = room_id;
    }

    public String getHotel_id() {
        return hotel_id;
    }

    public void setHotel_id(String hotel_id) {
        this.hotel_id = hotel_id;
    }

    public String getRoom_name() {
        return room_name;
    }

    public void setRoom_name(String room_name) {
        this.room_name = room_name;
    }

    public String getRoom_price() {
        return room_price;
    }

    public void setRoom_price(String room_price) {
        this.room_price = room_price;
    }

    public String getRoom_img() {
        return room_img;
    }

    public void setRoom_img(String room_img) {
        this.room_img = room_img;
    }

    public String getNumPeople() {
        return numPeople;
    }

    public void setNumPeople(String numPeople) {
        this.numPeople = numPeople;
    }

    public String getNumRoom() {
        return numRoom;
    }

    public void setNumRoom(String numRoom) {
        this.numRoom = numRoom;
    }

    @Override
    public String toString() {
        return "Room{" + "room_id=" + room_id + ", hotel_id=" + hotel_id + ", room_name=" + room_name + ", room_price=" + room_price + ", room_img=" + room_img + ", numPeople=" + numPeople + ", numRoom=" + numRoom + '}';
    }
    
    
    
}
