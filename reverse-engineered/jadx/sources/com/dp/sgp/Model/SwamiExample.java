package com.dp.sgp.Model;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SwamiExample {
    private List<SwamiDatum> data;
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

    public List<SwamiDatum> getData() {
        return this.data;
    }

    public void setData(List<SwamiDatum> list) {
        this.data = list;
    }
}
