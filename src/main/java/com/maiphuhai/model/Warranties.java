package com.maiphuhai.model;

import java.time.LocalDate;

public class Warranties {
    private int WarrantyId;
    private int CarId;
    private int CustomerId;
    private LocalDate StartDate;
    private LocalDate EndDate;
    private String CoverageDetails;

    public Warranties(){}

    public Warranties(int warrantyId, int carId, int customerId, LocalDate startDate, LocalDate endDate, String coverageDetails) {
        WarrantyId = warrantyId;
        CarId = carId;
        CustomerId = customerId;
        StartDate = startDate;
        EndDate = endDate;
        CoverageDetails = coverageDetails;
    }

    public int getWarrantyId() {
        return WarrantyId;
    }

    public void setWarrantyId(int warrantyId) {
        WarrantyId = warrantyId;
    }

    public int getCarId() {
        return CarId;
    }

    public void setCarId(int carId) {
        CarId = carId;
    }

    public int getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(int customerId) {
        CustomerId = customerId;
    }

    public LocalDate getStartDate() {
        return StartDate;
    }

    public void setStartDate(LocalDate startDate) {
        StartDate = startDate;
    }

    public LocalDate getEndDate() {
        return EndDate;
    }

    public void setEndDate(LocalDate endDate) {
        EndDate = endDate;
    }

    public String getCoverageDetails() {
        return CoverageDetails;
    }

    public void setCoverageDetails(String coverageDetails) {
        CoverageDetails = coverageDetails;
    }
}
