
package com.maiphuhai.model;

public class Employees {
    private int EmployeeId;
    private int UserId;
    private String FullName;
    private String Position;
    private String Phone;
    
    public Employees (){}

    public Employees(int EmployeeId, int UserId, String FullName, String Position, String Phone) {
        this.EmployeeId = EmployeeId;
        this.UserId = UserId;
        this.FullName = FullName;
        this.Position = Position;
        this.Phone = Phone;
    }

    public int getEmployeeId() {
        return EmployeeId;
    }

    public void setEmployeeId(int EmployeeId) {
        this.EmployeeId = EmployeeId;
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

    public String getPosition() {
        return Position;
    }

    public void setPosition(String Position) {
        this.Position = Position;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }
    
    
}
