package com.dp.sgp.lovelydialog;

import android.content.Context;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class LovelyProgressDialog extends AbsLovelyDialog<LovelyProgressDialog> {
    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    protected int getLayout() {
        return R.layout.dialog_progress;
    }

    public LovelyProgressDialog(Context context) {
        super(context);
        setCancelable(false);
    }

    public LovelyProgressDialog(Context context, int i) {
        super(context, i);
        setCancelable(false);
    }
}
