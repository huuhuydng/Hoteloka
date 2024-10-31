package model;

import java.util.Date;

public class Booking {
    private String booking_id;     
    private String acc_id;        
    private String hotel_id;       
    private Date booking_date;    
    private Date booking_checkIn;  
    private Date booking_checkOut; 
    private String booking_quantity; 
    private String booking_total;     
    private String booking_status;    
    private String booking_note; 


    public Booking() {
    }

    public Booking(String booking_id, String acc_id, String hotel_id, Date booking_date, Date booking_checkIn, Date booking_checkOut, String booking_quantity, String booking_total, String booking_status, String booking_note) {
        this.booking_id = booking_id;
        this.acc_id = acc_id;
        this.hotel_id = hotel_id;
        this.booking_date = booking_date;
        this.booking_checkIn = booking_checkIn;
        this.booking_checkOut = booking_checkOut;
        this.booking_quantity = booking_quantity;
        this.booking_total = booking_total;
        this.booking_status = booking_status;
        this.booking_note = booking_note; 
    }

    public String getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(String booking_id) {
        this.booking_id = booking_id;
    }

    public String getAcc_id() {
        return acc_id;
    }

    public void setAcc_id(String acc_id) {
        this.acc_id = acc_id;
    }

    public String getHotel_id() {
        return hotel_id;
    }

    public void setHotel_id(String hotel_id) {
        this.hotel_id = hotel_id;
    }

    public Date getBooking_date() {
        return booking_date;
    }

    public void setBooking_date(Date booking_date) {
        this.booking_date = booking_date;
    }

    public Date getBooking_checkIn() {
        return booking_checkIn;
    }

    public void setBooking_checkIn(Date booking_checkIn) {
        this.booking_checkIn = booking_checkIn;
    }

    public Date getBooking_checkOut() {
        return booking_checkOut;
    }

    public void setBooking_checkOut(Date booking_checkOut) {
        this.booking_checkOut = booking_checkOut;
    }

    public String getBooking_quantity() {
        return booking_quantity;
    }

    public void setBooking_quantity(String booking_quantity) {
        this.booking_quantity = booking_quantity;
    }

    public String getBooking_total() {
        return booking_total;
    }

    public void setBooking_total(String booking_total) {
        this.booking_total = booking_total;
    }

    public String getBookingStatus() {
        return booking_status;
    }

    public void setBookingStatus(String booking_status) {
        this.booking_status = booking_status;
    }

    public String getBooking_status() {
        return booking_status;
    }

    public void setBooking_status(String booking_status) {
        this.booking_status = booking_status;
    }

    public String getBooking_note() {
        return booking_note;
    }

    public void setBooking_note(String booking_note) {
        this.booking_note = booking_note;
    }
    
    

    public String getBookingDetails() {
        return booking_note;
    }

    public void setBookingDetails(String booking_note) {
        this.booking_note = booking_note;
    }

    @Override
    public String toString() {
        return "Booking{" +
                "booking_id='" + booking_id + '\'' +
                ", acc_id='" + acc_id + '\'' +
                ", hotel_id='" + hotel_id + '\'' +
                ", booking_date=" + booking_date +
                ", booking_checkIn=" + booking_checkIn +
                ", booking_checkOut=" + booking_checkOut +
                ", booking_quantity='" + booking_quantity + '\'' +
                ", booking_total='" + booking_total + '\'' +
                ", booking_status='" + booking_status + '\'' +
                ", booking_note='" + booking_note + '\'' + // Thêm thông tin booking_note
                '}';
    }
}
