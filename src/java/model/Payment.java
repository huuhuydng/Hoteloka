package model;

import java.util.Date;

public class Payment {
    
    private String payment_id;    
    private String booking_id;  
    private String amount;    
    private String method;       
    private Date payDate;        


    public Payment() {
    }


    public Payment(String payment_id, String booking_id, String amount, String method, Date payDate) {
        this.payment_id = payment_id;
        this.booking_id = booking_id;
        this.amount = amount;
        this.method = method;
        this.payDate = payDate;
    }

    // Getter và Setter cho từng trường
    public String getPaymentid() {
        return payment_id;
    }

    public void setPaymentid(String payment_id) {
        this.payment_id = payment_id;
    }

    public String getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(String booking_id) {
        this.booking_id = booking_id;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public Date getPayDate() {
        return payDate;
    }

    public void setPayDate(Date payDate) {
        this.payDate = payDate;
    }

    @Override
    public String toString() {
        return "Payment{" +
                "payment_id='" + payment_id + '\'' +
                ", booking_id='" + booking_id + '\'' +
                ", amount='" + amount + '\'' +
                ", method='" + method + '\'' +
                ", payDate=" + payDate +
                '}';
    }
}
