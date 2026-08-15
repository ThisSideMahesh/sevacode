package com.dp.sgp.Model;

/* JADX INFO: loaded from: classes.dex */
public class SendCountryOtpBody {
    private String device_token;
    private String email;
    private String otp;

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

    public String getOtp() {
        return this.otp;
    }

    public void setOtp(String str) {
        this.otp = str;
    }
}
