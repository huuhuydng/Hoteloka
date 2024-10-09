/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import model.Room;

/**
 *
 * @author ngtam
 */
public class RoomDTO extends Room{
    private String quantity;

    public RoomDTO(String quantity, String room_id, String hotel_id, String room_name, String room_price, String room_img, String numPeople, String numRoom) {
        super(room_id, hotel_id, room_name, room_price, room_img, numPeople, numRoom);
        this.quantity = quantity;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
}