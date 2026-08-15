package com.dp.sgp.Model;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CommonResponse {
    private List<CommonData> data = null;
    private String message;
    private String status;

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public List<CommonData> getData() {
        return this.data;
    }

    public void setData(List<CommonData> list) {
        this.data = list;
    }
}
