/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.util.List;
import model.Hotel;
import model.Room;

/**
 *
 * @author ngtam
 */
public class HotelDTO extends Hotel {

    private String type_name;
    private List<String> imagesDetail;
    private List<Room> rooms;

    public HotelDTO() {
    }

    public HotelDTO(String type_name, List<String> imagesDetail, List<Room> rooms, String hotel_id, String acc_id, String hotel_name, String hotel_numRoom, String hotel_imagesGeneral, String hotel_imagesDetail, String type_id, String hotel_policy, String hotel_star, String hotel_desc, String hotel_city, String hotel_district, String hotel_ward, String hotel_street, String hotel_status) {
        super(hotel_id, acc_id, hotel_name, hotel_numRoom, hotel_imagesGeneral, hotel_imagesDetail, type_id, hotel_policy, hotel_star, hotel_desc, hotel_city, hotel_district, hotel_ward, hotel_street, hotel_status);
        this.type_name = type_name;
        this.imagesDetail = imagesDetail;
        this.rooms = rooms;
    }
    
    public List<Room> getRooms() {
        return rooms;
    }

    public void setRooms(List<Room> rooms) {
        this.rooms = rooms;
    }

    public List<String> getImagesDetail() {
        return imagesDetail;
    }

    public void setImagesDetail(List<String> imagesDetail) {
        this.imagesDetail = imagesDetail;
    }

    public String getType_name() {
        return type_name;
    }

    public void setType_name(String type_name) {
        this.type_name = type_name;
    }

}