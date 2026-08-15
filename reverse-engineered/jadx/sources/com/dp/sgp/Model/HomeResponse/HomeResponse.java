package com.dp.sgp.Model.HomeResponse;

/* JADX INFO: loaded from: classes.dex */
public class HomeResponse {
    private HomeData data;
    private Integer flag;
    private String message;
    private String status;
    private String user_id;

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

    public HomeData getData() {
        return this.data;
    }

    public void setData(HomeData homeData) {
        this.data = homeData;
    }

    public String getUser_id() {
        return this.user_id;
    }

    public void setUser_id(String str) {
        this.user_id = str;
    }

    public Integer getFlag() {
        return this.flag;
    }

    public void setFlag(Integer num) {
        this.flag = num;
    }
}
