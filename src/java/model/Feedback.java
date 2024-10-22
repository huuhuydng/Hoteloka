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
public class Feedback {
    String feedback_id;
    String booking_id;
    String comment;
    String feedback_rating;
    Date feedback_day;
    String feedback_name;

    public Feedback(String feedback_id, String booking_id, String comment, String feedback_rating, Date feedback_day) {
        this.feedback_id = feedback_id;
        this.booking_id = booking_id;
        this.comment = comment;
        this.feedback_rating = feedback_rating;
        this.feedback_day = feedback_day;
    }

    public Feedback(String feedback_id, String booking_id, String comment, String feedback_rating, Date feedback_day, String feedback_name) {
        this.feedback_id = feedback_id;
        this.booking_id = booking_id;
        this.comment = comment;
        this.feedback_rating = feedback_rating;
        this.feedback_day = feedback_day;
        this.feedback_name = feedback_name;
    }
    

    public Feedback() {
    }
    

    public String getFeedback_id() {
        return feedback_id;
    }

    public void setFeedback_id(String feedback_id) {
        this.feedback_id = feedback_id;
    }

    public String getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(String booking_id) {
        this.booking_id = booking_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getFeedback_rating() {
        return feedback_rating;
    }

    public void setFeedback_rating(String feedback_rating) {
        this.feedback_rating = feedback_rating;
    }

    public Date getFeedback_day() {
        return feedback_day;
    }

    public void setFeedback_day(Date feedback_day) {
        this.feedback_day = feedback_day;
    }

    public String getFeedback_name() {
        return feedback_name;
    }

    public void setFeedback_name(String feedback_name) {
        this.feedback_name = feedback_name;
    }

    @Override
    public String toString() {
        return "Feedback{" + "feedback_id=" + feedback_id + ", booking_id=" + booking_id + ", comment=" + comment + ", feedback_rating=" + feedback_rating + ", feedback_day=" + feedback_day + '}' + feedback_name;
    }

   
    
}
