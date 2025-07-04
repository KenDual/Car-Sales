package com.maiphuhai.model;

public class Warehouses {
    private int WarehouseId;
    private String Location;

    public Warehouses (){}

    public Warehouses(int warehouseId, String location) {
        WarehouseId = warehouseId;
        Location = location;
    }

    public int getWarehouseId() {
        return WarehouseId;
    }

    public void setWarehouseId(int warehouseId) {
        WarehouseId = warehouseId;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String location) {
        Location = location;
    }
}
