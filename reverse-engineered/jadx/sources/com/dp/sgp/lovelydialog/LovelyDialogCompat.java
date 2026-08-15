package com.dp.sgp.lovelydialog;

import android.content.DialogInterface;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class LovelyDialogCompat {
    public static View.OnClickListener wrap(DialogInterface.OnClickListener onClickListener) {
        return new DialogOnClickListenerAdapter(onClickListener);
    }

    static class DialogOnClickListenerAdapter implements View.OnClickListener {
        private DialogInterface.OnClickListener adapted;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }

        DialogOnClickListenerAdapter(DialogInterface.OnClickListener onClickListener) {
            this.adapted = onClickListener;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            DialogInterface.OnClickListener onClickListener = this.adapted;
            if (onClickListener != null) {
                onClickListener.onClick(dialogInterface, i);
            }
        }
    }
}
