package com.dp.sgp.Model;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AbjachandiResponse {
    private List<AbjachnadiData> data = null;
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

    public List<AbjachnadiData> getData() {
        return this.data;
    }

    public void setData(List<AbjachnadiData> list) {
        this.data = list;
    }
}
