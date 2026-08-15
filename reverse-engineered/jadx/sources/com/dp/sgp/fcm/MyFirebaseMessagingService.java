package com.dp.sgp.fcm;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.media.RingtoneManager;
import android.os.Build;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Notification.NotificationActivity;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MyFirebaseMessagingService extends FirebaseMessagingService {
    private static final String TAG = "MyFirebaseMessagingService";

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        String title;
        String str;
        super.onMessageReceived(remoteMessage);
        String body = "";
        if (remoteMessage.getNotification() != null) {
            try {
                title = remoteMessage.getNotification().getTitle();
            } catch (Exception e) {
                e.printStackTrace();
                title = "";
            }
            try {
                body = remoteMessage.getNotification().getBody();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            String str2 = body;
            body = title;
            str = str2;
        } else {
            str = "";
        }
        Map<String, String> data = remoteMessage.getData();
        if (data.size() > 0) {
            for (String str3 : data.keySet()) {
                Log.i(TAG, "Key: " + str3 + " Value: " + data.get(str3));
            }
        }
        sendNotification(body, str);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        super.onNewToken(str);
        sendTokenToServer(str);
    }

    private void sendTokenToServer(String str) {
        Log.i(TAG, "sendTokenToServer: " + str);
    }

    private void sendNotification(String str, String str2) {
        PendingIntent activity;
        String str3 = TAG;
        Log.i(str3, "sendNotification: ");
        Intent intent = new Intent(this, (Class<?>) NotificationActivity.class);
        intent.addFlags(67108864);
        if (Build.VERSION.SDK_INT >= 23) {
            Log.d(str3, "FireFront");
            activity = PendingIntent.getActivity(this, 0, intent, 67108864);
        } else {
            Log.d(str3, "FireBack");
            activity = PendingIntent.getActivity(this, 0, intent, 201326592);
        }
        String string = getString(R.string.default_notification_channel_id);
        NotificationCompat.Builder contentIntent = new NotificationCompat.Builder(this, string).setSmallIcon(R.drawable.new_notify_launcher).setContentTitle(str).setContentText(str2).setAutoCancel(true).setSound(RingtoneManager.getDefaultUri(2)).setContentIntent(activity);
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(new NotificationChannel(string, Constants.CHANNEL_NAME, 3));
        }
        notificationManager.notify(0, contentIntent.build());
    }
}
