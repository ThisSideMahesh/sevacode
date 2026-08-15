package com.dp.sgp.Base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.dp.sgp.util.NetworkUtils;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStateReceiver extends BroadcastReceiver {
    private NetworkStateReceiverListener mNetworkStateListener;

    public NetworkStateReceiver(NetworkStateReceiverListener networkStateReceiverListener) {
        this.mNetworkStateListener = networkStateReceiverListener;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getExtras() == null || !NetworkUtils.isNetworkAvailable(context)) {
            return;
        }
        this.mNetworkStateListener.onNetworkAvailable();
    }
}
