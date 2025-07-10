package com.maiphuhai.model;

public class Users {
    private int UserId;
    private String Email;
    private String Password;
    private String Role;
    
    public Users(){}

    public Users(int UserId, String Email, String Password, String Role) {
        this.UserId = UserId;
        this.Email = Email;
        this.Password = Password;
        this.Role = Role;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int UserId) {
        this.UserId = UserId;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getRole() {
        return Role;
    }

    public void setRole(String Role) {
        this.Role = Role;
    }
    
    
}
