package com.maiphuhai.model;

public class Brands {
    private int BrandId;
    private String name;

    public Brands(){}

    public Brands(int brandId, String name) {
        BrandId = brandId;
        this.name = name;
    }

    public int getBrandId() {
        return BrandId;
    }

    public void setBrandId(int brandId) {
        BrandId = brandId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

