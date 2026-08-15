package com.dp.sgp.iOSDialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.TextView;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class iOSDialog {
    private static final String LOG_ERROR = "iOSDialog_ERROR";
    private Dialog dialog;
    private TextView dialogButtonNo;
    private TextView dialogButtonOk;
    private boolean negativeExist = false;
    private iOSDialogClickListener negativeListener;
    private iOSDialogClickListener positiveListener;
    private View separator;
    private TextView subtitle_lbl;
    private TextView title_lbl;

    public iOSDialog(Context context, String str, String str2, boolean z, Typeface typeface, boolean z2) {
        Dialog dialog = new Dialog(context);
        this.dialog = dialog;
        dialog.setContentView(R.layout.alerts_two_buttons);
        if (this.dialog.getWindow() != null) {
            this.dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
        initViews();
        this.dialog.setCancelable(z2);
        setTitle(str);
        setSubtitle(str2);
        setBoldPositiveLabel(z);
        setTypefaces(typeface);
        initEvents();
    }

    public void setPositive(String str, iOSDialogClickListener iosdialogclicklistener) {
        this.positiveListener = iosdialogclicklistener;
        dismiss();
        setPositiveLabel(str);
    }

    public void setNegative(String str, iOSDialogClickListener iosdialogclicklistener) {
        if (iosdialogclicklistener != null) {
            this.negativeListener = iosdialogclicklistener;
            dismiss();
            this.negativeExist = true;
            setNegativeLabel(str);
        }
    }

    public void show() {
        if (!this.negativeExist) {
            this.dialogButtonNo.setVisibility(8);
            this.separator.setVisibility(8);
        }
        this.dialog.show();
    }

    public void dismiss() {
        this.dialog.dismiss();
    }

    public void setTitle(String str) {
        this.title_lbl.setText(str);
    }

    public void setSubtitle(String str) {
        this.subtitle_lbl.setText(str);
    }

    private void setPositiveLabel(String str) {
        this.dialogButtonOk.setText(str);
    }

    private void setNegativeLabel(String str) {
        this.dialogButtonNo.setText(str);
    }

    private void setBoldPositiveLabel(boolean z) {
        if (z) {
            this.dialogButtonOk.setTypeface(null, 1);
        } else {
            this.dialogButtonOk.setTypeface(null, 0);
        }
    }

    private void setTypefaces(Typeface typeface) {
        if (typeface != null) {
            this.title_lbl.setTypeface(typeface);
            this.subtitle_lbl.setTypeface(typeface);
            this.dialogButtonOk.setTypeface(typeface);
            this.dialogButtonNo.setTypeface(typeface);
        }
    }

    private void initViews() {
        this.title_lbl = (TextView) this.dialog.findViewById(R.id.title);
        this.subtitle_lbl = (TextView) this.dialog.findViewById(R.id.subtitle);
        this.dialogButtonOk = (TextView) this.dialog.findViewById(R.id.dialogButtonOK);
        this.dialogButtonNo = (TextView) this.dialog.findViewById(R.id.dialogButtonNO);
        this.separator = this.dialog.findViewById(R.id.separator);
    }

    private void initEvents() {
        this.dialogButtonOk.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.iOSDialog.iOSDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (iOSDialog.this.positiveListener != null) {
                    iOSDialog.this.positiveListener.onClick(iOSDialog.this);
                }
            }
        });
        this.dialogButtonNo.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.iOSDialog.iOSDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (iOSDialog.this.negativeListener != null) {
                    iOSDialog.this.negativeListener.onClick(iOSDialog.this);
                }
            }
        });
    }
}
