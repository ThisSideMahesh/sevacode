package com.dp.sgp.Model;

/* JADX INFO: loaded from: classes.dex */
public class ProductDetailsResponse {
    private CommonData data = null;
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

    public CommonData getData() {
        return this.data;
    }

    public void setData(CommonData commonData) {
        this.data = commonData;
    }
}
