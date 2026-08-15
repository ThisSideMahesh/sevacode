package com.dp.sgp.util;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.ContextWrapper;
import android.net.Uri;
import android.os.Build;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class OreoNotification extends ContextWrapper {
    private static final String CHANNEL_ID = "Default";
    private static final String CHANNEL_NAME = "Gurupeeth";
    private NotificationManager notificationManager;

    public OreoNotification(Context context) {
        super(context);
        if (Build.VERSION.SDK_INT >= 26) {
            createChannel();
        }
    }

    private void createChannel() {
        NotificationChannel notificationChannel = new NotificationChannel("Default", "Gurupeeth", 4);
        notificationChannel.setDescription("Fcm Test channel for app test FCM");
        notificationChannel.enableLights(true);
        notificationChannel.enableVibration(true);
        notificationChannel.setVibrationPattern(new long[]{100, 200, 300, 400, 500, 400, 300, 200, 400});
        notificationChannel.setShowBadge(false);
        notificationChannel.setLockscreenVisibility(0);
        getManager().createNotificationChannel(notificationChannel);
    }

    public NotificationManager getManager() {
        if (this.notificationManager == null) {
            this.notificationManager = (NotificationManager) getSystemService("notification");
        }
        return this.notificationManager;
    }

    public Notification.Builder getOreoNotification(String str, String str2, PendingIntent pendingIntent, Uri uri, String str3) {
        return new Notification.Builder(getApplicationContext(), "Default").setAutoCancel(true).setBadgeIconType(1).setDefaults(-1).setWhen(System.currentTimeMillis()).setSmallIcon(R.mipmap.ic_launcher).setTicker("Fcm Test").setNumber(10).setContentTitle(str).setContentText(str2).setContentIntent(pendingIntent).setContentInfo("Info");
    }
}
