package com.dp.sgp.lovelydialog;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class LovelyInfoDialog extends AbsLovelyDialog<LovelyInfoDialog> {
    private static final String KEY_DONT_SHOW_AGAIN = "key_dont_show_again";
    private static final String STORAGE = "ld_dont_show";
    private CheckBox cbDontShowAgain;
    private Button confirmButton;
    private int infoDialogId;

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    protected int getLayout() {
        return R.layout.dialog_info;
    }

    public LovelyInfoDialog(Context context) {
        super(context);
        this.cbDontShowAgain = (CheckBox) findView(R.id.ld_cb_dont_show_again);
        Button button = (Button) findView(R.id.ld_btn_confirm);
        this.confirmButton = button;
        button.setOnClickListener(new AbsLovelyDialog.ClickListenerDecorator(this, null, true));
        this.infoDialogId = -1;
    }

    public LovelyInfoDialog(Context context, int i) {
        super(context, i);
        this.cbDontShowAgain = (CheckBox) findView(R.id.ld_cb_dont_show_again);
        Button button = (Button) findView(R.id.ld_btn_confirm);
        this.confirmButton = button;
        button.setOnClickListener(new AbsLovelyDialog.ClickListenerDecorator(this, null, true));
        this.infoDialogId = -1;
    }

    public LovelyInfoDialog setNotShowAgainOptionEnabled(int i) {
        this.infoDialogId = i;
        this.cbDontShowAgain.setVisibility(0);
        this.confirmButton.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.lovelydialog.LovelyInfoDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LovelyInfoDialog.storage(LovelyInfoDialog.this.getContext()).edit().putBoolean(String.valueOf(LovelyInfoDialog.this.infoDialogId), LovelyInfoDialog.this.cbDontShowAgain.isChecked()).apply();
                LovelyInfoDialog.this.dismiss();
            }
        });
        return this;
    }

    public LovelyInfoDialog setNotShowAgainOptionChecked(boolean z) {
        this.cbDontShowAgain.setChecked(z);
        return this;
    }

    public LovelyInfoDialog setConfirmButtonText(int i) {
        return setConfirmButtonText(string(i));
    }

    public LovelyInfoDialog setConfirmButtonText(String str) {
        this.confirmButton.setText(str);
        return this;
    }

    public LovelyInfoDialog setConfirmButtonColor(int i) {
        this.confirmButton.setTextColor(i);
        return this;
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    public Dialog show() {
        if (this.infoDialogId == -1) {
            return super.show();
        }
        if (!storage(getContext()).getBoolean(String.valueOf(this.infoDialogId), false)) {
            return super.show();
        }
        return super.create();
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_DONT_SHOW_AGAIN, this.cbDontShowAgain.isChecked());
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    void restoreState(Bundle bundle) {
        super.restoreState(bundle);
        this.cbDontShowAgain.setChecked(bundle.getBoolean(KEY_DONT_SHOW_AGAIN));
    }

    public static void reset(Context context, int i) {
        storage(context).edit().putBoolean(String.valueOf(i), false).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SharedPreferences storage(Context context) {
        return context.getSharedPreferences(STORAGE, 0);
    }
}
