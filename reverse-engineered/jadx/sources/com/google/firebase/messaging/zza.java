package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.firebase.iid.zzav;
import com.squareup.otto.Bus;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
final class zza {
    private static final AtomicInteger zzdn = new AtomicInteger((int) SystemClock.elapsedRealtime());
    private Bundle zzdo;
    private final Context zzx;

    public zza(Context context) {
        this.zzx = context.getApplicationContext();
    }

    static boolean zzf(Bundle bundle) {
        return "1".equals(zza(bundle, "gcm.n.e")) || zza(bundle, "gcm.n.icon") != null;
    }

    static String zza(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : string;
    }

    static String zzb(Bundle bundle, String str) {
        String strValueOf = String.valueOf(str);
        return zza(bundle, "_loc_key".length() != 0 ? strValueOf.concat("_loc_key") : new String(strValueOf));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static Object[] zzc(Bundle bundle, String str) {
        String strValueOf = String.valueOf(str);
        String strZza = zza(bundle, "_loc_args".length() != 0 ? strValueOf.concat("_loc_args") : new String(strValueOf));
        if (TextUtils.isEmpty(strZza)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray(strZza);
            int length = jSONArray.length();
            String[] strArr = new String[length];
            for (int i = 0; i < length; i++) {
                strArr[i] = jSONArray.opt(i);
            }
            return strArr;
        } catch (JSONException unused) {
            String strValueOf2 = String.valueOf(str);
            String strSubstring = ("_loc_args".length() != 0 ? strValueOf2.concat("_loc_args") : new String(strValueOf2)).substring(6);
            Log.w("FirebaseMessaging", new StringBuilder(String.valueOf(strSubstring).length() + 41 + String.valueOf(strZza).length()).append("Malformed ").append(strSubstring).append(": ").append(strZza).append("  Default value will be used.").toString());
            return null;
        }
    }

    static Uri zzg(Bundle bundle) {
        String strZza = zza(bundle, "gcm.n.link_android");
        if (TextUtils.isEmpty(strZza)) {
            strZza = zza(bundle, "gcm.n.link");
        }
        if (TextUtils.isEmpty(strZza)) {
            return null;
        }
        return Uri.parse(strZza);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:102:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:103:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:106:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:20:0x0060 A[EDGE_INSN: B:20:0x0060->B:21:0x0061 BREAK  A[LOOP:0: B:13:0x0048->B:134:?]] */
    /* JADX WARN: Code duplicated, block: B:43:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:49:0x010f  */
    /* JADX WARN: Code duplicated, block: B:99:0x02ce  */
    final boolean zzh(Bundle bundle) {
        boolean z;
        int i;
        int identifier;
        Uri defaultUri;
        Intent launchIntentForPackage;
        PendingIntent activity;
        PendingIntent pendingIntentZza;
        String string;
        if ("1".equals(zza(bundle, "gcm.n.noui"))) {
            return true;
        }
        if (!((KeyguardManager) this.zzx.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            if (!PlatformVersion.isAtLeastLollipop()) {
                SystemClock.sleep(10L);
            }
            int iMyPid = Process.myPid();
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.zzx.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses == null) {
                z = false;
                break;
            }
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            while (true) {
                if (it.hasNext()) {
                    ActivityManager.RunningAppProcessInfo next = it.next();
                    if (next.pid == iMyPid) {
                        if (next.importance == 100) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                break;
            }
        }
        z = false;
        break;
        if (z) {
            return false;
        }
        CharSequence charSequenceZzd = zzd(bundle, "gcm.n.title");
        if (TextUtils.isEmpty(charSequenceZzd)) {
            charSequenceZzd = this.zzx.getApplicationInfo().loadLabel(this.zzx.getPackageManager());
        }
        String strZzd = zzd(bundle, "gcm.n.body");
        String strZza = zza(bundle, "gcm.n.icon");
        if (!TextUtils.isEmpty(strZza)) {
            Resources resources = this.zzx.getResources();
            identifier = resources.getIdentifier(strZza, "drawable", this.zzx.getPackageName());
            if ((identifier == 0 || !zzb(identifier)) && ((identifier = resources.getIdentifier(strZza, "mipmap", this.zzx.getPackageName())) == 0 || !zzb(identifier))) {
                Log.w("FirebaseMessaging", new StringBuilder(String.valueOf(strZza).length() + 61).append("Icon resource ").append(strZza).append(" not found. Notification will use default icon.").toString());
                i = zzas().getInt("com.google.firebase.messaging.default_notification_icon", 0);
                if (i != 0) {
                    i = this.zzx.getApplicationInfo().icon;
                } else {
                    i = this.zzx.getApplicationInfo().icon;
                }
                if (i == 0) {
                    identifier = android.R.drawable.sym_def_app_icon;
                } else {
                    identifier = android.R.drawable.sym_def_app_icon;
                }
            }
        } else {
            i = zzas().getInt("com.google.firebase.messaging.default_notification_icon", 0);
            if (i != 0 || !zzb(i)) {
                i = this.zzx.getApplicationInfo().icon;
            }
            if (i == 0 && zzb(i)) {
                identifier = i;
            } else {
                identifier = android.R.drawable.sym_def_app_icon;
            }
        }
        Integer numZzl = zzl(zza(bundle, "gcm.n.color"));
        String strZzi = zzi(bundle);
        if (TextUtils.isEmpty(strZzi)) {
            defaultUri = null;
        } else if (!Bus.DEFAULT_IDENTIFIER.equals(strZzi) && this.zzx.getResources().getIdentifier(strZzi, "raw", this.zzx.getPackageName()) != 0) {
            String packageName = this.zzx.getPackageName();
            defaultUri = Uri.parse(new StringBuilder(String.valueOf(packageName).length() + 24 + String.valueOf(strZzi).length()).append("android.resource://").append(packageName).append("/raw/").append(strZzi).toString());
        } else {
            defaultUri = RingtoneManager.getDefaultUri(2);
        }
        String strZza2 = zza(bundle, "gcm.n.click_action");
        if (!TextUtils.isEmpty(strZza2)) {
            launchIntentForPackage = new Intent(strZza2);
            launchIntentForPackage.setPackage(this.zzx.getPackageName());
            launchIntentForPackage.setFlags(268435456);
        } else {
            Uri uriZzg = zzg(bundle);
            if (uriZzg != null) {
                launchIntentForPackage = new Intent("android.intent.action.VIEW");
                launchIntentForPackage.setPackage(this.zzx.getPackageName());
                launchIntentForPackage.setData(uriZzg);
            } else {
                launchIntentForPackage = this.zzx.getPackageManager().getLaunchIntentForPackage(this.zzx.getPackageName());
                if (launchIntentForPackage == null) {
                    Log.w("FirebaseMessaging", "No activity found to launch app");
                }
            }
        }
        if (launchIntentForPackage == null) {
            activity = null;
        } else {
            launchIntentForPackage.addFlags(67108864);
            Bundle bundle2 = new Bundle(bundle);
            FirebaseMessagingService.zzj(bundle2);
            launchIntentForPackage.putExtras(bundle2);
            for (String str : bundle2.keySet()) {
                if (str.startsWith("gcm.n.") || str.startsWith("gcm.notification.")) {
                    launchIntentForPackage.removeExtra(str);
                }
            }
            activity = PendingIntent.getActivity(this.zzx, zzdn.incrementAndGet(), launchIntentForPackage, 1073741824);
        }
        if (bundle == null ? false : "1".equals(bundle.getString("google.c.a.e"))) {
            Intent intent = new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN");
            zza(intent, bundle);
            intent.putExtra("pending_intent", activity);
            Context context = this.zzx;
            AtomicInteger atomicInteger = zzdn;
            activity = zzav.zza(context, atomicInteger.incrementAndGet(), intent, 1073741824);
            Intent intent2 = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS");
            zza(intent2, bundle);
            pendingIntentZza = zzav.zza(this.zzx, atomicInteger.incrementAndGet(), intent2, 1073741824);
        } else {
            pendingIntentZza = null;
        }
        String strZza3 = zza(bundle, "gcm.n.android_channel_id");
        String str2 = "fcm_fallback_notification_channel";
        if (!PlatformVersion.isAtLeastO() || this.zzx.getApplicationInfo().targetSdkVersion < 26) {
            str2 = null;
        } else {
            NotificationManager notificationManager = (NotificationManager) this.zzx.getSystemService(NotificationManager.class);
            if (!TextUtils.isEmpty(strZza3)) {
                if (notificationManager.getNotificationChannel(strZza3) != null) {
                    str2 = strZza3;
                } else {
                    Log.w("FirebaseMessaging", new StringBuilder(String.valueOf(strZza3).length() + 122).append("Notification Channel requested (").append(strZza3).append(") has not been created by the app. Manifest configuration, or default, value will be used.").toString());
                    string = zzas().getString("com.google.firebase.messaging.default_notification_channel_id");
                    if (!TextUtils.isEmpty(string)) {
                        if (notificationManager.getNotificationChannel(string) != null) {
                            str2 = string;
                        } else {
                            Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
                        }
                    } else {
                        Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
                    }
                    if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", this.zzx.getString(R.string.fcm_fallback_notification_channel_label), 3));
                    }
                }
            } else {
                string = zzas().getString("com.google.firebase.messaging.default_notification_channel_id");
                if (!TextUtils.isEmpty(string)) {
                    if (notificationManager.getNotificationChannel(string) != null) {
                        str2 = string;
                    } else {
                        Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
                    }
                } else {
                    Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
                }
                if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                    notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", this.zzx.getString(R.string.fcm_fallback_notification_channel_label), 3));
                }
            }
        }
        NotificationCompat.Builder smallIcon = new NotificationCompat.Builder(this.zzx).setAutoCancel(true).setSmallIcon(identifier);
        if (!TextUtils.isEmpty(charSequenceZzd)) {
            smallIcon.setContentTitle(charSequenceZzd);
        }
        if (!TextUtils.isEmpty(strZzd)) {
            smallIcon.setContentText(strZzd);
            smallIcon.setStyle(new NotificationCompat.BigTextStyle().bigText(strZzd));
        }
        if (numZzl != null) {
            smallIcon.setColor(numZzl.intValue());
        }
        if (defaultUri != null) {
            smallIcon.setSound(defaultUri);
        }
        if (activity != null) {
            smallIcon.setContentIntent(activity);
        }
        if (pendingIntentZza != null) {
            smallIcon.setDeleteIntent(pendingIntentZza);
        }
        if (str2 != null) {
            smallIcon.setChannelId(str2);
        }
        Notification notificationBuild = smallIcon.build();
        String strZza4 = zza(bundle, "gcm.n.tag");
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Showing notification");
        }
        NotificationManager notificationManager2 = (NotificationManager) this.zzx.getSystemService("notification");
        if (TextUtils.isEmpty(strZza4)) {
            strZza4 = new StringBuilder(37).append("FCM-Notification:").append(SystemClock.uptimeMillis()).toString();
        }
        notificationManager2.notify(strZza4, 0, notificationBuild);
        return true;
    }

    private final String zzd(Bundle bundle, String str) {
        String strZza = zza(bundle, str);
        if (!TextUtils.isEmpty(strZza)) {
            return strZza;
        }
        String strZzb = zzb(bundle, str);
        if (TextUtils.isEmpty(strZzb)) {
            return null;
        }
        Resources resources = this.zzx.getResources();
        int identifier = resources.getIdentifier(strZzb, "string", this.zzx.getPackageName());
        if (identifier == 0) {
            String strValueOf = String.valueOf(str);
            String strSubstring = ("_loc_key".length() != 0 ? strValueOf.concat("_loc_key") : new String(strValueOf)).substring(6);
            Log.w("FirebaseMessaging", new StringBuilder(String.valueOf(strSubstring).length() + 49 + String.valueOf(strZzb).length()).append(strSubstring).append(" resource not found: ").append(strZzb).append(" Default value will be used.").toString());
            return null;
        }
        Object[] objArrZzc = zzc(bundle, str);
        if (objArrZzc == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, objArrZzc);
        } catch (MissingFormatArgumentException e) {
            String string = Arrays.toString(objArrZzc);
            Log.w("FirebaseMessaging", new StringBuilder(String.valueOf(strZzb).length() + 58 + String.valueOf(string).length()).append("Missing format argument for ").append(strZzb).append(": ").append(string).append(" Default value will be used.").toString(), e);
            return null;
        }
    }

    private final boolean zzb(int i) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!(this.zzx.getResources().getDrawable(i, null) instanceof AdaptiveIconDrawable)) {
                return true;
            }
            Log.e("FirebaseMessaging", new StringBuilder(77).append("Adaptive icons cannot be used in notifications. Ignoring icon id: ").append(i).toString());
            return false;
        } catch (Resources.NotFoundException unused) {
            return false;
        }
    }

    private final Integer zzl(String str) {
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                Log.w("FirebaseMessaging", new StringBuilder(String.valueOf(str).length() + 54).append("Color ").append(str).append(" not valid. Notification will use default color.").toString());
            }
        }
        int i = zzas().getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i != 0) {
            try {
                return Integer.valueOf(ContextCompat.getColor(this.zzx, i));
            } catch (Resources.NotFoundException unused2) {
                Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
            }
        }
        return null;
    }

    static String zzi(Bundle bundle) {
        String strZza = zza(bundle, "gcm.n.sound2");
        return TextUtils.isEmpty(strZza) ? zza(bundle, "gcm.n.sound") : strZza;
    }

    private static void zza(Intent intent, Bundle bundle) {
        for (String str : bundle.keySet()) {
            if (str.startsWith("google.c.a.") || str.equals("from")) {
                intent.putExtra(str, bundle.getString(str));
            }
        }
    }

    private final Bundle zzas() {
        Bundle bundle = this.zzdo;
        if (bundle != null) {
            return bundle;
        }
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = this.zzx.getPackageManager().getApplicationInfo(this.zzx.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (applicationInfo != null && applicationInfo.metaData != null) {
            Bundle bundle2 = applicationInfo.metaData;
            this.zzdo = bundle2;
            return bundle2;
        }
        return Bundle.EMPTY;
    }
}
