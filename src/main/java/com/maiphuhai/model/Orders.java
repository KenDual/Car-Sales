/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.maiphuhai.model;

import java.util.Date;

/**
 *
 * @author maiph
 */
public class Orders {
    private int OrderId;
    private int CarId;
    private int CustomerId;
    private int EmployeeId;
    private Date OrderDate;
    private double TotalAmount;
    
    public Orders (){}

    public Orders(int OrderId, int CarId, int CustomerId, int EmployeeId, Date OrderDate, double TotalAmount) {
        this.OrderId = OrderId;
        this.CarId = CarId;
        this.CustomerId = CustomerId;
        this.EmployeeId = EmployeeId;
        this.OrderDate = OrderDate;
        this.TotalAmount = TotalAmount;
    }

    public int getOrderId() {
        return OrderId;
    }

    public void setOrderId(int OrderId) {
        this.OrderId = OrderId;
    }

    public int getCarId() {
        return CarId;
    }

    public void setCarId(int CarId) {
        this.CarId = CarId;
    }

    public int getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(int CustomerId) {
        this.CustomerId = CustomerId;
    }

    public int getEmployeeId() {
        return EmployeeId;
    }

    public void setEmployeeId(int EmployeeId) {
        this.EmployeeId = EmployeeId;
    }

    public Date getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(Date OrderDate) {
        this.OrderDate = OrderDate;
    }

    public double getTotalAmount() {
        return TotalAmount;
    }

    public void setTotalAmount(double TotalAmount) {
        this.TotalAmount = TotalAmount;
    }
    
    
}
