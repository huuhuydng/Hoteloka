/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hadi
 */
public class Hotel {
    private String hotel_id;
    private String acc_id;
    private String hotel_name;
    private String hotel_numRoom;
    private String hotel_imagesGeneral;
    private String hotel_imagesDetail;
    private String type_id;
    private String hotel_policy;
    private String hotel_star;
    private String hotel_desc;
    private String hotel_city;
    private String hotel_district;
    private String hotel_ward;
    private String hotel_street;
    private String hotel_status;

    public Hotel(String hotel_id, String acc_id, String hotel_name, String hotel_numRoom, String hotel_imagesGeneral, String hotel_imagesDetail,String type_id, String hotel_policy, String hotel_star, String hotel_desc, String hotel_city, String hotel_district, String hotel_ward, String hotel_street, String hotel_status) {
        this.hotel_id = hotel_id;
        this.acc_id = acc_id;
        this.hotel_name = hotel_name;
        this.hotel_numRoom = hotel_numRoom;
        this.hotel_imagesGeneral = hotel_imagesGeneral;
        this.hotel_imagesDetail = hotel_imagesDetail;
        this.type_id = type_id;
        this.hotel_policy = hotel_policy;
        this.hotel_star = hotel_star;
        this.hotel_desc = hotel_desc;
        this.hotel_city = hotel_city;
        this.hotel_district = hotel_district;
        this.hotel_ward = hotel_ward;
        this.hotel_street = hotel_street;
        this.hotel_status = hotel_status;
    }

    public Hotel(String hotel_id, String hotel_name, String hotel_imagesGeneral, String hotel_star, String hotel_city, String hotel_district, String hotel_ward, String hotel_street) {
        this.hotel_id = hotel_id;
        this.hotel_name = hotel_name;
        this.hotel_imagesGeneral = hotel_imagesGeneral;
        this.hotel_star = hotel_star;
        this.hotel_city = hotel_city;
        this.hotel_district = hotel_district;
        this.hotel_ward = hotel_ward;
        this.hotel_street = hotel_street;
    }

    
    

    public Hotel() {
    }

    public String getHotel_status() {
        return hotel_status;
    }

    public void setHotel_status(String hotel_status) {
        this.hotel_status = hotel_status;
    }
    
    

    public String getHotel_id() {
        return hotel_id;
    }

    public void setHotel_id(String hotel_id) {
        this.hotel_id = hotel_id;
    }

    public String getAcc_id() {
        return acc_id;
    }

    public void setAcc_id(String acc_id) {
        this.acc_id = acc_id;
    }

    public String getHotel_name() {
        return hotel_name;
    }

    public void setHotel_name(String hotel_name) {
        this.hotel_name = hotel_name;
    }

    public String getHotel_numRoom() {
        return hotel_numRoom;
    }

    public void setHotel_numRoom(String hotel_numRoom) {
        this.hotel_numRoom = hotel_numRoom;
    }

    public String getHotel_imagesGeneral() {
        return hotel_imagesGeneral;
    }

    public void setHotel_imagesGeneral(String hotel_imagesGeneral) {
        this.hotel_imagesGeneral = hotel_imagesGeneral;
    }

    public String getHotel_imagesDetail() {
        return hotel_imagesDetail;
    }

    public void setHotel_imagesDetail(String hotel_imagesDetail) {
        this.hotel_imagesDetail = hotel_imagesDetail;
    }

    public String getHotel_type() {
        return type_id;
    }

    public void setHotel_type(String type_id) {
        this.type_id = type_id;
    }

    public String getHotel_policy() {
        return hotel_policy;
    }

    public void setHotel_policy(String hotel_policy) {
        this.hotel_policy = hotel_policy;
    }

    public String getHotel_star() {
        return hotel_star;
    }

    public void setHotel_star(String hotel_star) {
        this.hotel_star = hotel_star;
    }

    public String getHotel_desc() {
        return hotel_desc;
    }

    public void setHotel_desc(String hotel_desc) {
        this.hotel_desc = hotel_desc;
    }

    public String getHotel_city() {
        return hotel_city;
    }

    public void setHotel_city(String hotel_city) {
        this.hotel_city = hotel_city;
    }

    public String getHotel_district() {
        return hotel_district;
    }

    public void setHotel_district(String hotel_district) {
        this.hotel_district = hotel_district;
    }

    public String getHotel_ward() {
        return hotel_ward;
    }

    public void setHotel_ward(String hotel_ward) {
        this.hotel_ward = hotel_ward;
    }

    public String getHotel_street() {
        return hotel_street;
    }

    public void setHotel_street(String hotel_street) {
        this.hotel_street = hotel_street;
    }

    @Override
    public String toString() {
        return "Hotel{" + "hotel_id=" + hotel_id + ", acc_id=" + acc_id + ", hotel_name=" + hotel_name + ", hotel_numRoom=" + hotel_numRoom + ", hotel_imagesGeneral=" + hotel_imagesGeneral + ", hotel_imagesDetail=" + hotel_imagesDetail + ", type_id=" + type_id + ", hotel_policy=" + hotel_policy + ", hotel_star=" + hotel_star + ", hotel_desc=" + hotel_desc + ", hotel_city=" + hotel_city + ", hotel_district=" + hotel_district + ", hotel_ward=" + hotel_ward + ", hotel_street=" + hotel_street + ", hotel_status=" + hotel_status + '}';
    }
    public String hotelList() {
        return "Hotel{" + "hotel_id=" + hotel_id + ", hotel_name=" + hotel_name + ", hotel_imagesGeneral=" + hotel_imagesGeneral + ", hotel_star=" + hotel_star + ", hotel_city=" + hotel_city + ", hotel_district=" + hotel_district + ", hotel_ward=" + hotel_ward + ", hotel_street=" + hotel_street + ", hotel_status=" + hotel_status + '}';
    }
    
    
    
}
