package com.maiphuhai.model;

public class LookupStatus {
    private int StatusId;
    private String Category;
    private String Code;
    private String Description;

    public LookupStatus(){}

    public LookupStatus(int statusId, String category, String code, String description) {
        StatusId = statusId;
        Category = category;
        Code = code;
        Description = description;
    }

    public int getStatusId() {
        return StatusId;
    }

    public void setStatusId(int statusId) {
        StatusId = statusId;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String category) {
        Category = category;
    }

    public String getCode() {
        return Code;
    }

    public void setCode(String code) {
        Code = code;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }
}
