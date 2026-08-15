package com.dp.sgp.fcm;

import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.config.Config;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;

/* JADX INFO: loaded from: classes.dex */
public class MyFirebaseInstanceIDService extends FirebaseInstanceIdService {
    private static final String TAG = "MyFirebaseInstanceIDService";

    @Override // com.google.firebase.iid.FirebaseInstanceIdService
    public void onTokenRefresh() {
        super.onTokenRefresh();
        String token = FirebaseInstanceId.getInstance().getToken();
        storeRegIdInPref(token);
        sendRegistrationToServer(token);
        Intent intent = new Intent(Config.REGISTRATION_COMPLETE);
        intent.putExtra(Key.TOKEN, token);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    private void sendRegistrationToServer(String str) {
        Log.e(TAG, "sendRegistrationToServer: " + str);
    }

    private void storeRegIdInPref(String str) {
        SharedPreferences.Editor editorEdit = getApplicationContext().getSharedPreferences(Config.SHARED_PREF, 0).edit();
        editorEdit.putString("regId", str);
        editorEdit.commit();
    }
}
