package com.dp.sgp.Model;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SubmitAbjaData {
    private List<SubmitAbhjaBody> data = null;
    private String device_token;
    private String member_name;
    private String type;
    private String user_id;

    public String getUser_id() {
        return this.user_id;
    }

    public void setUser_id(String str) {
        this.user_id = str;
    }

    public String getDevice_token() {
        return this.device_token;
    }

    public void setDevice_token(String str) {
        this.device_token = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getMember_name() {
        return this.member_name;
    }

    public void setMember_name(String str) {
        this.member_name = str;
    }

    public List<SubmitAbhjaBody> getData() {
        return this.data;
    }

    public void setData(List<SubmitAbhjaBody> list) {
        this.data = list;
    }
}
