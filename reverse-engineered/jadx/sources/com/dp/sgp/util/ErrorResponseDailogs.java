package com.dp.sgp.util;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class ErrorResponseDailogs {
    public static void customToast(Context context, String str) {
        Toast toast = new Toast(context);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.info_message_layout, (ViewGroup) null, false);
        ((TextView) viewInflate.findViewById(R.id.txt_message)).setText(str);
        toast.setView(viewInflate);
        toast.setDuration(0);
        toast.show();
    }

    public static void errorcustomToast(Context context, String str) {
        Toast toast = new Toast(context);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.red_info_message_layout, (ViewGroup) null, false);
        ((TextView) viewInflate.findViewById(R.id.txt_message)).setText(str);
        toast.setView(viewInflate);
        toast.setDuration(0);
        toast.show();
    }
}
