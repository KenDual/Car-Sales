package com.maiphuhai.model;

import java.time.LocalDate;

public class Cars {
    private int CarId;
    private int ModelId;
    private String LicensePlate;
    private int ManufactureYear;
    private double Price;
    private int ConditionId;
    private int Mileage;
    private String ExteriorColor;
    private LocalDate CreatedAt;
    private LocalDate ModifiedAt;
    private boolean IsDeleted;

    public Cars(){}

    public Cars(int carId, int modelId, String licensePlate, int manufactureYear, double price, int conditionId, int mileage, String exteriorColor, LocalDate createdAt, LocalDate modifiedAt, boolean isDeleted) {
        CarId = carId;
        ModelId = modelId;
        LicensePlate = licensePlate;
        ManufactureYear = manufactureYear;
        Price = price;
        ConditionId = conditionId;
        Mileage = mileage;
        ExteriorColor = exteriorColor;
        CreatedAt = createdAt;
        ModifiedAt = modifiedAt;
        IsDeleted = isDeleted;
    }

    public int getCarId() {
        return CarId;
    }

    public void setCarId(int carId) {
        CarId = carId;
    }

    public int getModelId() {
        return ModelId;
    }

    public void setModelId(int modelId) {
        ModelId = modelId;
    }

    public String getLicensePlate() {
        return LicensePlate;
    }

    public void setLicensePlate(String licensePlate) {
        LicensePlate = licensePlate;
    }

    public int getManufactureYear() {
        return ManufactureYear;
    }

    public void setManufactureYear(int manufactureYear) {
        ManufactureYear = manufactureYear;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double price) {
        Price = price;
    }

    public int getConditionId() {
        return ConditionId;
    }

    public void setConditionId(int conditionId) {
        ConditionId = conditionId;
    }

    public int getMileage() {
        return Mileage;
    }

    public void setMileage(int mileage) {
        Mileage = mileage;
    }

    public String getExteriorColor() {
        return ExteriorColor;
    }

    public void setExteriorColor(String exteriorColor) {
        ExteriorColor = exteriorColor;
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
