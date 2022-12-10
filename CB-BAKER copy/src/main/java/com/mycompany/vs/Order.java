/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.vs;

/**
 *
 * @author matthew
 */
public class Order {
    public int orderID;
    private String orderDate;
    private String pickupDate;
    private String orderNotes;
    public double finalPrice;
    
    private int statusID;

    public int getOrderID() {
        return orderID;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public String getPickupDate() {
        return pickupDate;
    }

    public String getOrderNotes() {
        return orderNotes;
    }

    public double getFinalPrice() {
        return finalPrice;
    }

    public int getStatusID() {
        return statusID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public void setPickupDate(String pickupDate) {
        this.pickupDate = pickupDate;
    }

    public void setOrderNotes(String orderNotes) {
        this.orderNotes = orderNotes;
    }

    public void setFinalPrice(float finalPrice) {
        this.finalPrice = finalPrice;
    }

    public void setStatusID(int statusID) {
        this.statusID = statusID;
    }
    
    
    
}
