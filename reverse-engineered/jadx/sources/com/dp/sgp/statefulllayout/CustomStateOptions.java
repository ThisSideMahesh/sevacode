package com.dp.sgp.statefulllayout;

import android.view.View;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CustomStateOptions implements Serializable {
    private View.OnClickListener buttonClickListener;
    private String buttonText;
    private int imageRes;
    private boolean isLoading;
    private String message;

    public CustomStateOptions image(int i) {
        this.imageRes = i;
        return this;
    }

    public CustomStateOptions loading() {
        this.isLoading = true;
        return this;
    }

    public CustomStateOptions message(String str) {
        this.message = str;
        return this;
    }

    public CustomStateOptions buttonText(String str) {
        this.buttonText = str;
        return this;
    }

    public CustomStateOptions buttonClickListener(View.OnClickListener onClickListener) {
        this.buttonClickListener = onClickListener;
        return this;
    }

    public int getImageRes() {
        return this.imageRes;
    }

    public boolean isLoading() {
        return this.isLoading;
    }

    public String getMessage() {
        return this.message;
    }

    public String getButtonText() {
        return this.buttonText;
    }

    public View.OnClickListener getClickListener() {
        return this.buttonClickListener;
    }
}
