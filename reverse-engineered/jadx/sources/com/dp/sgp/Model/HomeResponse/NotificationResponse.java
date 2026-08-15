package com.dp.sgp.Model.HomeResponse;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NotificationResponse {
    private List<Banner> data = null;
    private String message;
    private String status;
    private int unread_count;

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

    public int getUnread_count() {
        return this.unread_count;
    }

    public void setUnread_count(int i) {
        this.unread_count = i;
    }

    public List<Banner> getData() {
        return this.data;
    }

    public void setData(List<Banner> list) {
        this.data = list;
    }
}
