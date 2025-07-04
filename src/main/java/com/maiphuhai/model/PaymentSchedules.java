package com.maiphuhai.model;

import java.time.LocalDate;

public class PaymentSchedules {
    private int ScheduleId;
    private int OrderId;
    private LocalDate DueDate;
    private double Amount;
    private boolean PaidFlag;
    private LocalDate PaidDate;

    public PaymentSchedules(){}

    public PaymentSchedules(int scheduleId, int orderId, LocalDate dueDate, double amount, boolean paidFlag, LocalDate paidDate) {
        ScheduleId = scheduleId;
        OrderId = orderId;
        DueDate = dueDate;
        Amount = amount;
        PaidFlag = paidFlag;
        PaidDate = paidDate;
    }

    public int getScheduleId() {
        return ScheduleId;
    }

    public void setScheduleId(int scheduleId) {
        ScheduleId = scheduleId;
    }

    public int getOrderId() {
        return OrderId;
    }

    public void setOrderId(int orderId) {
        OrderId = orderId;
    }

    public LocalDate getDueDate() {
        return DueDate;
    }

    public void setDueDate(LocalDate dueDate) {
        DueDate = dueDate;
    }

    public double getAmount() {
        return Amount;
    }

    public void setAmount(double amount) {
        Amount = amount;
    }

    public boolean isPaidFlag() {
        return PaidFlag;
    }

    public void setPaidFlag(boolean paidFlag) {
        PaidFlag = paidFlag;
    }

    public LocalDate getPaidDate() {
        return PaidDate;
    }

    public void setPaidDate(LocalDate paidDate) {
        PaidDate = paidDate;
    }
}
