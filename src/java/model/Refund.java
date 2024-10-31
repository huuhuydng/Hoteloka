/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hadi
 */

public class Refund {

    private String refund_id;
    private String acc_id;
    private String booking_id;
    private String bank_id;
    private String bank_name;
    private String refund_amount;
    private String refund_reason;

    public Refund(String refund_id, String acc_id, String booking_id, String bank_id, String bank_name, String refund_amount, String refund_reason) {
        this.refund_id = refund_id;
        this.acc_id = acc_id;
        this.booking_id = booking_id;
        this.bank_id = bank_id;
        this.bank_name = bank_name;
        this.refund_amount = refund_amount;
        this.refund_reason = refund_reason;
    }

    public String getRefund_id() {
        return refund_id;
    }

    public void setRefund_id(String refund_id) {
        this.refund_id = refund_id;
    }

    public String getAcc_id() {
        return acc_id;
    }

    public void setAcc_id(String acc_id) {
        this.acc_id = acc_id;
    }

    public String getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(String booking_id) {
        this.booking_id = booking_id;
    }

    public String getBank_id() {
        return bank_id;
    }

    public void setBank_id(String bank_id) {
        this.bank_id = bank_id;
    }

    public String getBank_name() {
        return bank_name;
    }

    public void setBank_name(String bank_name) {
        this.bank_name = bank_name;
    }

    public String getRefund_amount() {
        return refund_amount;
    }

    public void setRefund_amount(String refund_amount) {
        this.refund_amount = refund_amount;
    }

    public String getRefund_reason() {
        return refund_reason;
    }

    public void setRefund_reason(String refund_reason) {
        this.refund_reason = refund_reason;
    }

    @Override
    public String toString() {
        return "Refund{" + "refund_id=" + refund_id + ", acc_id=" + acc_id + ", booking_id=" + booking_id + ", bank_id=" + bank_id + ", bank_name=" + bank_name + ", refund_amount=" + refund_amount + ", refund_reason=" + refund_reason + '}';
    }
    


    
}
