/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.maiphuhai.model;

/**
 *
 * @author maiph
 */
public class CarModels {
    private int ModelId;
    private int BrandId;
    private String ModelName;
    
    public CarModels(){}

    public CarModels(int ModelId, int BrandId, String ModelName) {
        this.ModelId = ModelId;
        this.BrandId = BrandId;
        this.ModelName = ModelName;
    }

    public int getModelId() {
        return ModelId;
    }

    public void setModelId(int ModelId) {
        this.ModelId = ModelId;
    }

    public int getBrandId() {
        return BrandId;
    }

    public void setBrandId(int BrandId) {
        this.BrandId = BrandId;
    }

    public String getModelName() {
        return ModelName;
    }

    public void setModelName(String ModelName) {
        this.ModelName = ModelName;
    }
    
}
