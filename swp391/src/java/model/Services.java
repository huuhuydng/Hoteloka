/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class Services {
    private String service_id;
    private String service_name;

    public Services(String service_id, String service_name) {
        this.service_id = service_id;
        this.service_name = service_name;
    }

    public Services() {
    }

    public String getService_id() {
        return service_id;
    }

    public void setService_id(String service_id) {
        this.service_id = service_id;
    }

    public String getService_name() {
        return service_name;
    }

    public void setService_name(String service_name) {
        this.service_name = service_name;
    }

    @Override
    public String toString() {
        return "Services{" + "service_id=" + service_id + ", service_name=" + service_name + '}';
    }
    
    
    
}
