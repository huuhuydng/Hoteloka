/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class ReportFeedBack {

    private int report_id;
    private String reason;
    private String feedback_id;

    public ReportFeedBack() {
    }

    public ReportFeedBack(int report_id, String reason, String feedback_id) {
        this.report_id = report_id;
        this.reason = reason;
        this.feedback_id = feedback_id;
    }
    
    public ReportFeedBack(String reason, String feedback_id) {
        this.reason = reason;
        this.feedback_id = feedback_id;
    }
    
    public int getReport_id() {
        return report_id;
    }

    public void setReport_id(int report_id) {
        this.report_id = report_id;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getFeedback_id() {
        return feedback_id;
    }

    public void setFeedback_id(String feedback_id) {
        this.feedback_id = feedback_id;
    }

}
