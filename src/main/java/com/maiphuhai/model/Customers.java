
package com.maiphuhai.model;

public class Customers {
    private int CustomerId;
    private int UserId;
    private String FullName;
    private String Phone;
    private String Address;
    
    public Customers(){}

    public Customers(int CustomerId, int UserId, String FullName, String Phone, String Address) {
        this.CustomerId = CustomerId;
        this.UserId = UserId;
        this.FullName = FullName;
        this.Phone = Phone;
        this.Address = Address;
    }

    public int getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(int CustomerId) {
        this.CustomerId = CustomerId;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int UserId) {
        this.UserId = UserId;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }
}
