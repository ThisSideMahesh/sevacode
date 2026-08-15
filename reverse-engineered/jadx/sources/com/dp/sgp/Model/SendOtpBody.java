package com.dp.sgp.Model;

/* JADX INFO: loaded from: classes.dex */
public class SendOtpBody {
    private String device_token;
    private String mobile;
    private String otp;

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

    public String getOtp() {
        return this.otp;
    }

    public void setOtp(String str) {
        this.otp = str;
    }
}
