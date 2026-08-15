package com.dp.sgp.Model;

/* JADX INFO: loaded from: classes.dex */
public class SendCountryLoginBody {
    private String device_token;
    private String email;
    private String fcm_id;

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
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
