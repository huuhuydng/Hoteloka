/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.util.Date;
import model.Booking;

/**
 *
 * @author ngtam
 */
public class BookingDTO extends Booking{
    private String hotel_name;

    public BookingDTO(String hotel_name, String booking_id, String acc_id, String hotel_id, Date booking_date, Date booking_checkIn, Date booking_checkOut, String booking_quantity, String booking_total, String booking_status, String booking_note) {
        super(booking_id, acc_id, hotel_id, booking_date, booking_checkIn, booking_checkOut, booking_quantity, booking_total, booking_status, booking_note);
        this.hotel_name = hotel_name;
    }

    public String getHotel_name() {
        return hotel_name;
    }

    public void setHotel_name(String hotel_name) {
        this.hotel_name = hotel_name;
    }
    
}
