package com.maiphuhai.model;

public class CarModels {
    private int ModelId;
    private int BrandId;
    private String ModelName;

    public CarModels (){}

    public CarModels(int modelId, int brandId, String modelName) {
        ModelId = modelId;
        BrandId = brandId;
        ModelName = modelName;
    }

    public int getModelId() {
        return ModelId;
    }

    public void setModelId(int modelId) {
        ModelId = modelId;
    }

    public int getBrandId() {
        return BrandId;
    }

    public void setBrandId(int brandId) {
        BrandId = brandId;
    }

    public String getModelName() {
        return ModelName;
    }

    public void setModelName(String modelName) {
        ModelName = modelName;
    }
}
