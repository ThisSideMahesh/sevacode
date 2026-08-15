package com.dp.sgp.Model;

/* JADX INFO: loaded from: classes.dex */
public class MessageEvent {
    private final String isMenuVisible;
    private final String message;

    public String getIsMenuVisible() {
        return this.isMenuVisible;
    }

    public MessageEvent(String str, String str2) {
        this.message = str;
        this.isMenuVisible = str2;
    }

    public String getMessage() {
        return this.message;
    }
}
