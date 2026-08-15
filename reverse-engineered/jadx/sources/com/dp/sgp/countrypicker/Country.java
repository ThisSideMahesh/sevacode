package com.dp.sgp.countrypicker;

/* JADX INFO: loaded from: classes.dex */
public class Country {
    private String CcName;
    private String dialingCode;
    private String isoCode;

    public Country() {
    }

    public Country(String str, String str2) {
        this.isoCode = str;
        this.dialingCode = str2;
    }

    public String getIsoCode() {
        return this.isoCode;
    }

    public void setIsoCode(String str) {
        this.isoCode = str;
    }

    public String getDialingCode() {
        return this.dialingCode;
    }

    public void setDialingCode(String str) {
        this.dialingCode = str;
    }
}
