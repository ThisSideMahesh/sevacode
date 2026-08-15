package com.dp.sgp.Model.nityaseva;

/* JADX INFO: loaded from: classes.dex */
public class ProductCommonResponse {
    private ProductData data = null;
    private String message;
    private String status;

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public ProductData getData() {
        return this.data;
    }

    public void setData(ProductData productData) {
        this.data = productData;
    }
}
