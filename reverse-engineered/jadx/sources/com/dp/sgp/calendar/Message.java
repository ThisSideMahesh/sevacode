package com.dp.sgp.calendar;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class Message implements Serializable {

    @SerializedName("Notification")
    @Expose
    private Notification notification;

    public Notification getNotification() {
        return this.notification;
    }

    public void setNotification(Notification notification) {
        this.notification = notification;
    }
}
