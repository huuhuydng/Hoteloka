/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hadi
 */
public class BookingsDetail {
    private String booking_id;
    private String roomId;
    private String quantity;

    public BookingsDetail(String roomId, String quantity) {
        this.roomId = roomId;
        this.quantity = quantity;
    }

    public BookingsDetail(String booking_id, String roomId, String quantity) {
        this.booking_id = booking_id;
        this.roomId = roomId;
        this.quantity = quantity;
    }
    

    public String getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(String booking_id) {
        this.booking_id = booking_id;
    }
    
    

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public BookingsDetail() {
    }

    @Override
    public String toString() {
        return "BookingsDetail{" + "booking_id" + booking_id + "roomId=" + roomId + ", quantity=" + quantity + '}';
    }

    
}
