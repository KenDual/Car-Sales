/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.maiphuhai.model;

/**
 *
 * @author maiph
 */
public class Cars {
    private int CarId;
    private int ModelId;
    private String LicensePlate;
    private int ManufactureYear;
    private double Price;
    private String CarCondition;
    private int Mileage;
    
    public Cars(){}

    public Cars(int CarId, int ModelId, String LicensePlate, int ManufactureYear, double Price, String CarCondition, int Mileage) {
        this.CarId = CarId;
        this.ModelId = ModelId;
        this.LicensePlate = LicensePlate;
        this.ManufactureYear = ManufactureYear;
        this.Price = Price;
        this.CarCondition = CarCondition;
        this.Mileage = Mileage;
    }

    public int getCarId() {
        return CarId;
    }

    public void setCarId(int CarId) {
        this.CarId = CarId;
    }

    public int getModelId() {
        return ModelId;
    }

    public void setModelId(int ModelId) {
        this.ModelId = ModelId;
    }

    public String getLicensePlate() {
        return LicensePlate;
    }

    public void setLicensePlate(String LicensePlate) {
        this.LicensePlate = LicensePlate;
    }

    public int getManufactureYear() {
        return ManufactureYear;
    }

    public void setManufactureYear(int ManufactureYear) {
        this.ManufactureYear = ManufactureYear;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
    }

    public String getCarCondition() {
        return CarCondition;
    }

    public void setCarCondition(String CarCondition) {
        this.CarCondition = CarCondition;
    }

    public int getMileage() {
        return Mileage;
    }

    public void setMileage(int Mileage) {
        this.Mileage = Mileage;
    }
    
    
}
