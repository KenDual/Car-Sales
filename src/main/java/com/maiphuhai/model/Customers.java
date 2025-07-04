package com.maiphuhai.model;

import java.time.LocalDate;

public class Customers {
    private int CustomerId;
    private String FullName;
    private String Phone;
    private String Email;
    private String Address;
    private LocalDate CreatedAt;
    private LocalDate ModifiedAt;
    private boolean isDeleted;

    public Customers(int customerId, String fullName, String phone, String email, String address, LocalDate createdAt, LocalDate modifiedAt, boolean isDeleted) {
        CustomerId = customerId;
        FullName = fullName;
        Phone = phone;
        Email = email;
        Address = address;
        CreatedAt = createdAt;
        ModifiedAt = modifiedAt;
        this.isDeleted = isDeleted;
    }

    public int getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(int customerId) {
        CustomerId = customerId;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String fullName) {
        FullName = fullName;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public LocalDate getCreatedAt() {
        return CreatedAt;
    }

    public void setCreatedAt(LocalDate createdAt) {
        CreatedAt = createdAt;
    }

    public LocalDate getModifiedAt() {
        return ModifiedAt;
    }

    public void setModifiedAt(LocalDate modifiedAt) {
        ModifiedAt = modifiedAt;
    }

    public boolean isDeleted() {
        return isDeleted;
    }

    public void setDeleted(boolean deleted) {
        isDeleted = deleted;
    }
}
