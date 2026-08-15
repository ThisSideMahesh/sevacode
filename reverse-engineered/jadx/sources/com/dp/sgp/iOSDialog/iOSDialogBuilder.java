package com.dp.sgp.iOSDialog;

import android.content.Context;
import android.graphics.Typeface;

/* JADX INFO: loaded from: classes.dex */
public class iOSDialogBuilder {
    private boolean bold;
    private boolean cancelable;
    private Context context;
    private String koLabel;
    private iOSDialogClickListener negativeListener;
    private String okLabel;
    private iOSDialogClickListener positiveListener;
    private String subtitle;
    private Typeface tf;
    private String title;

    public iOSDialogBuilder(Context context) {
        this.context = context;
    }

    public iOSDialogBuilder setTitle(String str) {
        this.title = str;
        return this;
    }

    public iOSDialogBuilder setSubtitle(String str) {
        this.subtitle = str;
        return this;
    }

    public iOSDialogBuilder setBoldPositiveLabel(boolean z) {
        this.bold = z;
        return this;
    }

    public iOSDialogBuilder setFont(Typeface typeface) {
        this.tf = typeface;
        return this;
    }

    public iOSDialogBuilder setCancelable(boolean z) {
        this.cancelable = z;
        return this;
    }

    public iOSDialogBuilder setNegativeListener(String str, iOSDialogClickListener iosdialogclicklistener) {
        this.negativeListener = iosdialogclicklistener;
        this.koLabel = str;
        return this;
    }

    public iOSDialogBuilder setPositiveListener(String str, iOSDialogClickListener iosdialogclicklistener) {
        this.positiveListener = iosdialogclicklistener;
        this.okLabel = str;
        return this;
    }

    public iOSDialog build() {
        iOSDialog iosdialog = new iOSDialog(this.context, this.title, this.subtitle, this.bold, this.tf, this.cancelable);
        iosdialog.setNegative(this.koLabel, this.negativeListener);
        iosdialog.setPositive(this.okLabel, this.positiveListener);
        return iosdialog;
    }
}
