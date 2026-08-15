package com.dp.sgp.Model.saramrut;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SaramrutResponse {
    private List<Saramrutlist> data = null;
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

    public List<Saramrutlist> getData() {
        return this.data;
    }

    public void setData(List<Saramrutlist> list) {
        this.data = list;
    }
}
