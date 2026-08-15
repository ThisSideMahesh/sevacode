package com.google.firebase.iid;

import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzba {
    private final zzaw zzaj;
    private int zzdl = 0;
    private final Map<Integer, TaskCompletionSource<Void>> zzdm = new ArrayMap();

    zzba(zzaw zzawVar) {
        this.zzaj = zzawVar;
    }

    final synchronized Task<Void> zza(String str) {
        String strZzak;
        TaskCompletionSource<Void> taskCompletionSource;
        synchronized (this.zzaj) {
            strZzak = this.zzaj.zzak();
            this.zzaj.zzf(new StringBuilder(String.valueOf(strZzak).length() + 1 + String.valueOf(str).length()).append(strZzak).append(",").append(str).toString());
        }
        taskCompletionSource = new TaskCompletionSource<>();
        this.zzdm.put(Integer.valueOf(this.zzdl + (TextUtils.isEmpty(strZzak) ? 0 : strZzak.split(",").length - 1)), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    final synchronized boolean zzaq() {
        return zzar() != null;
    }

    final boolean zzc(FirebaseInstanceId firebaseInstanceId) {
        TaskCompletionSource<Void> taskCompletionSourceRemove;
        while (true) {
            synchronized (this) {
                String strZzar = zzar();
                if (strZzar == null) {
                    if (FirebaseInstanceId.zzl()) {
                        Log.d("FirebaseInstanceId", "topic sync succeeded");
                    }
                    return true;
                }
                if (!zza(firebaseInstanceId, strZzar)) {
                    return false;
                }
                synchronized (this) {
                    taskCompletionSourceRemove = this.zzdm.remove(Integer.valueOf(this.zzdl));
                    zzk(strZzar);
                    this.zzdl++;
                }
                if (taskCompletionSourceRemove != null) {
                    taskCompletionSourceRemove.setResult(null);
                }
            }
        }
    }

    private final String zzar() {
        String strZzak;
        synchronized (this.zzaj) {
            strZzak = this.zzaj.zzak();
        }
        if (TextUtils.isEmpty(strZzak)) {
            return null;
        }
        String[] strArrSplit = strZzak.split(",");
        if (strArrSplit.length <= 1 || TextUtils.isEmpty(strArrSplit[1])) {
            return null;
        }
        return strArrSplit[1];
    }

    private final synchronized boolean zzk(String str) {
        synchronized (this.zzaj) {
            String strZzak = this.zzaj.zzak();
            String strValueOf = String.valueOf(str);
            if (!strZzak.startsWith(strValueOf.length() != 0 ? ",".concat(strValueOf) : new String(","))) {
                return false;
            }
            String strValueOf2 = String.valueOf(str);
            this.zzaj.zzf(strZzak.substring((strValueOf2.length() != 0 ? ",".concat(strValueOf2) : new String(",")).length()));
            return true;
        }
    }

    private static boolean zza(FirebaseInstanceId firebaseInstanceId, String str) {
        String[] strArrSplit = str.split("!");
        if (strArrSplit.length == 2) {
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[1];
            byte b = -1;
            try {
                int iHashCode = str2.hashCode();
                if (iHashCode != 83) {
                    if (iHashCode == 85 && str2.equals("U")) {
                        b = 1;
                    }
                } else if (str2.equals("S")) {
                    b = 0;
                }
                if (b == 0) {
                    firebaseInstanceId.zzb(str3);
                    if (FirebaseInstanceId.zzl()) {
                        Log.d("FirebaseInstanceId", "subscribe operation succeeded");
                    }
                } else if (b == 1) {
                    firebaseInstanceId.zzc(str3);
                    if (FirebaseInstanceId.zzl()) {
                        Log.d("FirebaseInstanceId", "unsubscribe operation succeeded");
                    }
                }
            } catch (IOException e) {
                String strValueOf = String.valueOf(e.getMessage());
                Log.e("FirebaseInstanceId", strValueOf.length() != 0 ? "Topic sync failed: ".concat(strValueOf) : new String("Topic sync failed: "));
                return false;
            }
        }
        return true;
    }
}
