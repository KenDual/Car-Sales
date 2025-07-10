
package com.maiphuhai.model;

public class Brands {
    private int BrandId;
    private String Name;
    
    public Brands(){}

    public Brands(int BrandId, String Name) {
        this.BrandId = BrandId;
        this.Name = Name;
    }

    public int getBrandId() {
        return BrandId;
    }

    public void setBrandId(int BrandId) {
        this.BrandId = BrandId;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }
    
    
}
