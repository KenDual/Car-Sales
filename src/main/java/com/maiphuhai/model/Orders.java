package com.maiphuhai.model;

import java.time.LocalDate;

public class Orders {
    private int OrderId;
    private int CarId;
    private int CustomerId;
    private int EmployeeId;
    private LocalDate OrderDate;
    private int PaymentMethodId;
    private int InstallmentMonths;
    private double TotalAmount;

    public Orders(){}

    public Orders(int orderId, int carId, int customerId, int employeeId, LocalDate orderDate, int paymentMethodId, int installmentMonths, double totalAmount) {
        OrderId = orderId;
        CarId = carId;
        CustomerId = customerId;
        EmployeeId = employeeId;
        OrderDate = orderDate;
        PaymentMethodId = paymentMethodId;
        InstallmentMonths = installmentMonths;
        TotalAmount = totalAmount;
    }

    public int getOrderId() {
        return OrderId;
    }

    public void setOrderId(int orderId) {
        OrderId = orderId;
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

    public int getEmployeeId() {
        return EmployeeId;
    }

    public void setEmployeeId(int employeeId) {
        EmployeeId = employeeId;
    }

    public LocalDate getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(LocalDate orderDate) {
        OrderDate = orderDate;
    }

    public int getPaymentMethodId() {
        return PaymentMethodId;
    }

    public void setPaymentMethodId(int paymentMethodId) {
        PaymentMethodId = paymentMethodId;
    }

    public int getInstallmentMonths() {
        return InstallmentMonths;
    }

    public void setInstallmentMonths(int installmentMonths) {
        InstallmentMonths = installmentMonths;
    }

    public double getTotalAmount() {
        return TotalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        TotalAmount = totalAmount;
    }
}
