package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzad implements ServiceConnection {
    int state;
    final Messenger zzbx;
    zzai zzby;
    final Queue<zzak<?>> zzbz;
    final SparseArray<zzak<?>> zzca;
    final /* synthetic */ zzab zzcb;

    private zzad(zzab zzabVar) {
        this.zzcb = zzabVar;
        this.state = 0;
        this.zzbx = new Messenger(new com.google.android.gms.internal.firebase_messaging.zza(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.firebase.iid.zzae
            private final zzad zzcc;

            {
                this.zzcc = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.zzcc.zza(message);
            }
        }));
        this.zzbz = new ArrayDeque();
        this.zzca = new SparseArray<>();
    }

    final synchronized boolean zzb(zzak zzakVar) {
        int i = this.state;
        if (i != 0) {
            if (i == 1) {
                this.zzbz.add(zzakVar);
                return true;
            }
            if (i == 2) {
                this.zzbz.add(zzakVar);
                zzy();
                return true;
            }
            if (i != 3 && i != 4) {
                throw new IllegalStateException(new StringBuilder(26).append("Unknown state: ").append(this.state).toString());
            }
            return false;
        }
        this.zzbz.add(zzakVar);
        Preconditions.checkState(this.state == 0);
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Starting bind to GmsCore");
        }
        this.state = 1;
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gms");
        if (!ConnectionTracker.getInstance().bindService(this.zzcb.zzx, intent, this, 1)) {
            zza(0, "Unable to bind to service");
        } else {
            this.zzcb.zzbu.schedule(new Runnable(this) { // from class: com.google.firebase.iid.zzaf
                private final zzad zzcc;

                {
                    this.zzcc = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzcc.zzaa();
                }
            }, 30L, TimeUnit.SECONDS);
        }
        return true;
    }

    final boolean zza(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            Log.d("MessengerIpcClient", new StringBuilder(41).append("Received response to request: ").append(i).toString());
        }
        synchronized (this) {
            zzak<?> zzakVar = this.zzca.get(i);
            if (zzakVar == null) {
                Log.w("MessengerIpcClient", new StringBuilder(50).append("Received response for unknown request: ").append(i).toString());
                return true;
            }
            this.zzca.remove(i);
            zzz();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                zzakVar.zza(new zzal(4, "Not supported by GmsCore"));
            } else {
                zzakVar.zzb(data);
            }
            return true;
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        if (iBinder == null) {
            zza(0, "Null service connection");
            return;
        }
        try {
            this.zzby = new zzai(iBinder);
            this.state = 2;
            zzy();
        } catch (RemoteException e) {
            zza(0, e.getMessage());
        }
    }

    private final void zzy() {
        this.zzcb.zzbu.execute(new Runnable(this) { // from class: com.google.firebase.iid.zzag
            private final zzad zzcc;

            {
                this.zzcc = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final zzak<?> zzakVarPoll;
                final zzad zzadVar = this.zzcc;
                while (true) {
                    synchronized (zzadVar) {
                        if (zzadVar.state != 2) {
                            return;
                        }
                        if (zzadVar.zzbz.isEmpty()) {
                            zzadVar.zzz();
                            return;
                        } else {
                            zzakVarPoll = zzadVar.zzbz.poll();
                            zzadVar.zzca.put(zzakVarPoll.zzcf, zzakVarPoll);
                            zzadVar.zzcb.zzbu.schedule(new Runnable(zzadVar, zzakVarPoll) { // from class: com.google.firebase.iid.zzah
                                private final zzad zzcc;
                                private final zzak zzcd;

                                {
                                    this.zzcc = zzadVar;
                                    this.zzcd = zzakVarPoll;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.zzcc.zza(this.zzcd.zzcf);
                                }
                            }, 30L, TimeUnit.SECONDS);
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String strValueOf = String.valueOf(zzakVarPoll);
                        Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(strValueOf).length() + 8).append("Sending ").append(strValueOf).toString());
                    }
                    Context context = zzadVar.zzcb.zzx;
                    Messenger messenger = zzadVar.zzbx;
                    Message messageObtain = Message.obtain();
                    messageObtain.what = zzakVarPoll.what;
                    messageObtain.arg1 = zzakVarPoll.zzcf;
                    messageObtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", zzakVarPoll.zzab());
                    bundle.putString("pkg", context.getPackageName());
                    bundle.putBundle("data", zzakVarPoll.zzch);
                    messageObtain.setData(bundle);
                    try {
                        zzadVar.zzby.send(messageObtain);
                    } catch (RemoteException e) {
                        zzadVar.zza(2, e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        zza(2, "Service disconnected");
    }

    final synchronized void zza(int i, String str) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(str);
            Log.d("MessengerIpcClient", strValueOf.length() != 0 ? "Disconnected: ".concat(strValueOf) : new String("Disconnected: "));
        }
        int i2 = this.state;
        if (i2 == 0) {
            throw new IllegalStateException();
        }
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3) {
                this.state = 4;
                return;
            } else {
                if (i2 != 4) {
                    throw new IllegalStateException(new StringBuilder(26).append("Unknown state: ").append(this.state).toString());
                }
                return;
            }
        }
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Unbinding service");
        }
        this.state = 4;
        ConnectionTracker.getInstance().unbindService(this.zzcb.zzx, this);
        zzal zzalVar = new zzal(i, str);
        Iterator<zzak<?>> it = this.zzbz.iterator();
        while (it.hasNext()) {
            it.next().zza(zzalVar);
        }
        this.zzbz.clear();
        for (int i3 = 0; i3 < this.zzca.size(); i3++) {
            this.zzca.valueAt(i3).zza(zzalVar);
        }
        this.zzca.clear();
    }

    final synchronized void zzz() {
        if (this.state == 2 && this.zzbz.isEmpty() && this.zzca.size() == 0) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
            }
            this.state = 3;
            ConnectionTracker.getInstance().unbindService(this.zzcb.zzx, this);
        }
    }

    final synchronized void zzaa() {
        if (this.state == 1) {
            zza(1, "Timed out while binding");
        }
    }

    final synchronized void zza(int i) {
        zzak<?> zzakVar = this.zzca.get(i);
        if (zzakVar != null) {
            Log.w("MessengerIpcClient", new StringBuilder(31).append("Timing out request: ").append(i).toString());
            this.zzca.remove(i);
            zzakVar.zza(new zzal(3, "Timed out waiting for response"));
            zzz();
        }
    }
}
