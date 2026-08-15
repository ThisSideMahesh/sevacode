package com.dp.sgp.Model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ListData implements Serializable {
    private int icon;
    private int id;
    private boolean isHeader;
    private String title;

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public boolean isHeader() {
        return this.isHeader;
    }

    public void setHeader(boolean z) {
        this.isHeader = z;
    }

    public int getIcon() {
        return this.icon;
    }

    public void setIcon(int i) {
        this.icon = i;
    }
}
