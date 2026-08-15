package com.dp.sgp.Model;

import com.dp.sgp.database.DatabaseTables;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class SevaDetail {

    @SerializedName(DatabaseTables.COUNT)
    @Expose
    private String count;

    @SerializedName("name")
    @Expose
    private String name;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getCount() {
        return this.count;
    }

    public void setCount(String str) {
        this.count = str;
    }
}
