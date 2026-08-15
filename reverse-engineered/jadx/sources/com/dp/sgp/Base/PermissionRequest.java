package com.dp.sgp.Base;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.util.SparseIntArray;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class PermissionRequest {
    private static SparseIntArray mErrorString;
    private static PermissionCallback permissionCallback;

    public static void init() {
        mErrorString = new SparseIntArray();
    }

    public static void onRequestPermissionsResult(final Activity activity, int i, String[] strArr, int[] iArr) {
        int i2 = 0;
        for (int i3 : iArr) {
            i2 += i3;
        }
        if (iArr.length > 0 && i2 == 0) {
            permissionCallback.onPermissionsGranted(i);
            return;
        }
        boolean z = false;
        for (String str : strArr) {
            ContextCompat.checkSelfPermission(activity, str);
            z = z || ActivityCompat.shouldShowRequestPermissionRationale(activity, str);
        }
        if (z) {
            return;
        }
        showMessageOKCancel(activity, PermissionsChecker.getStringID(i), R.string.dialog_positive_button_settings, new DialogInterface.OnClickListener() { // from class: com.dp.sgp.Base.PermissionRequest.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i4) {
                if (Build.VERSION.SDK_INT >= 23) {
                    Intent intent = new Intent();
                    intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                    intent.addCategory("android.intent.category.DEFAULT");
                    intent.setData(Uri.parse("package:" + activity.getPackageName()));
                    intent.addFlags(268435456);
                    intent.addFlags(1073741824);
                    intent.addFlags(8388608);
                    activity.startActivity(intent);
                }
            }
        });
    }

    public static void requestAppPermissions(final Activity activity, final String[] strArr, final int i, PermissionCallback permissionCallback2) {
        init();
        permissionCallback = permissionCallback2;
        mErrorString.put(i, PermissionsChecker.getStringID(i));
        int iCheckSelfPermission = 0;
        boolean z = false;
        for (String str : strArr) {
            iCheckSelfPermission += ContextCompat.checkSelfPermission(activity, str);
            z = z || ActivityCompat.shouldShowRequestPermissionRationale(activity, str);
        }
        if (iCheckSelfPermission == 0) {
            permissionCallback.onPermissionsGranted(i);
        } else if (z) {
            showMessageOKCancel(activity, PermissionsChecker.getStringID(i), R.string.dialog_positive_button_ok, new DialogInterface.OnClickListener() { // from class: com.dp.sgp.Base.PermissionRequest.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        ActivityCompat.requestPermissions(activity, strArr, i);
                    }
                }
            });
        } else {
            ActivityCompat.requestPermissions(activity, strArr, i);
        }
    }

    static void showMessageOKCancel(Activity activity, int i, int i2, DialogInterface.OnClickListener onClickListener) {
        new AlertDialog.Builder(activity).setMessage(i).setPositiveButton(i2, onClickListener).setNegativeButton("CANCEL", (DialogInterface.OnClickListener) null).create().show();
    }
}
