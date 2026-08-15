package com.dp.sgp.Model.NewTMS;

/* JADX INFO: loaded from: classes.dex */
public class TmsProgramList {
    private String colour_code;
    private Boolean current_date;
    private Boolean current_month;
    private String date;
    private Integer day;
    private Boolean is_scheduled;
    private String monthname;
    private NewSchduledInfo schduledInfo;

    public String getDate() {
        return this.date;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public Integer getDay() {
        return this.day;
    }

    public void setDay(Integer num) {
        this.day = num;
    }

    public String getMonthname() {
        return this.monthname;
    }

    public void setMonthname(String str) {
        this.monthname = str;
    }

    public Boolean getCurrent_month() {
        return this.current_month;
    }

    public void setCurrent_month(Boolean bool) {
        this.current_month = bool;
    }

    public String getColour_code() {
        return this.colour_code;
    }

    public void setColour_code(String str) {
        this.colour_code = str;
    }

    public NewSchduledInfo getSchduledInfo() {
        return this.schduledInfo;
    }

    public void setSchduledInfo(NewSchduledInfo newSchduledInfo) {
        this.schduledInfo = newSchduledInfo;
    }

    public Boolean getCurrent_date() {
        return this.current_date;
    }

    public void setCurrent_date(Boolean bool) {
        this.current_date = bool;
    }

    public Boolean getIs_scheduled() {
        return this.is_scheduled;
    }

    public void setIs_scheduled(Boolean bool) {
        this.is_scheduled = bool;
    }
}
