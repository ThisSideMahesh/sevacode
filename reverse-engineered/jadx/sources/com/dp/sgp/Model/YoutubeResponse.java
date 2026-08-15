package com.dp.sgp.Model;

import com.dp.sgp.Model.HomeResponse.Youtube;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class YoutubeResponse {
    private List<Youtube> data = null;
    private String message;
    private String status;

    public List<Youtube> getData() {
        return this.data;
    }

    public void setData(List<Youtube> list) {
        this.data = list;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }
}
