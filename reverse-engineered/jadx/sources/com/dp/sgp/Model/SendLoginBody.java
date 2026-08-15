package com.dp.sgp.Model;

/* JADX INFO: loaded from: classes.dex */
public class SendLoginBody {
    private String device_token;
    private String fcm_id;
    private String mobile;

    public String getMobile() {
        return this.mobile;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public String getDevice_token() {
        return this.device_token;
    }

    public void setDevice_token(String str) {
        this.device_token = str;
    }

    public String getFcm_id() {
        return this.fcm_id;
    }

    public void setFcm_id(String str) {
        this.fcm_id = str;
    }
}
