package com.maiphuhai.model;

import java.time.LocalDate;

public class Employees {
    private int EmployeeId;
    private String FullName;
    private String Position;
    private LocalDate CreatedAt;
    private LocalDate ModifiedAt;
    private boolean IsDeleted;

    public Employees (){}

    public Employees(int employeeId, String fullName, String position, LocalDate createdAt, LocalDate modifiedAt, boolean isDeleted) {
        EmployeeId = employeeId;
        FullName = fullName;
        Position = position;
        CreatedAt = createdAt;
        ModifiedAt = modifiedAt;
        IsDeleted = isDeleted;
    }

    public int getEmployeeId() {
        return EmployeeId;
    }

    public void setEmployeeId(int employeeId) {
        EmployeeId = employeeId;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String fullName) {
        FullName = fullName;
    }

    public String getPosition() {
        return Position;
    }

    public void setPosition(String position) {
        Position = position;
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
        return IsDeleted;
    }

    public void setDeleted(boolean deleted) {
        IsDeleted = deleted;
    }
}
