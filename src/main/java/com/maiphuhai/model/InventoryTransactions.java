package com.maiphuhai.model;

import java.time.LocalDate;

public class InventoryTransactions {
    private int TxnId;
    private int CarId;
    private int WarehouseId;
    private String TxnType;
    private int Quantity;
    private String Reference;
    private LocalDate TxnTime;

    public InventoryTransactions(){}

    public InventoryTransactions(int txnId, int carId, int warehouseId, String txnType, int quantity, String reference, LocalDate txnTime) {
        TxnId = txnId;
        CarId = carId;
        WarehouseId = warehouseId;
        TxnType = txnType;
        Quantity = quantity;
        Reference = reference;
        TxnTime = txnTime;
    }

    public int getTxnId() {
        return TxnId;
    }

    public void setTxnId(int txnId) {
        TxnId = txnId;
    }

    public int getCarId() {
        return CarId;
    }

    public void setCarId(int carId) {
        CarId = carId;
    }

    public int getWarehouseId() {
        return WarehouseId;
    }

    public void setWarehouseId(int warehouseId) {
        WarehouseId = warehouseId;
    }

    public String getTxnType() {
        return TxnType;
    }

    public void setTxnType(String txnType) {
        TxnType = txnType;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

    public String getReference() {
        return Reference;
    }

    public void setReference(String reference) {
        Reference = reference;
    }

    public LocalDate getTxnTime() {
        return TxnTime;
    }

    public void setTxnTime(LocalDate txnTime) {
        TxnTime = txnTime;
    }
}
