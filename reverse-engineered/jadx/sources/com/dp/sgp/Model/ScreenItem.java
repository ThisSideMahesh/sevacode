package com.dp.sgp.Model;

/* JADX INFO: loaded from: classes.dex */
public class ScreenItem {
    String Description;
    int ScreenImg;
    String Title;

    public String getTitle() {
        return this.Title;
    }

    public void setTitle(String str) {
        this.Title = str;
    }

    public String getDescription() {
        return this.Description;
    }

    public void setDescription(String str) {
        this.Description = str;
    }

    public int getScreenImg() {
        return this.ScreenImg;
    }

    public void setScreenImg(int i) {
        this.ScreenImg = i;
    }

    public ScreenItem(String str, String str2, int i) {
        this.Title = str;
        this.Description = str2;
        this.ScreenImg = i;
    }
}
