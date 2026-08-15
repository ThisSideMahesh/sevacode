package com.dp.sgp.Base;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.dp.sgp.R;
import com.dp.sgp.statefulllayout.StatefulLayout;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseAppCompactActivity extends AppCompatActivity implements NetworkStateReceiverListener, BaseView {
    public VIEW_STATE currentViewState;
    private NetworkStateReceiver networkStateReceiver;
    private StatefulLayout stateful;
    private TextView tvToolbar;

    public enum VIEW_STATE {
        INITIAL,
        CONTENT,
        LOADING,
        EMPTY,
        ERROR,
        OFFLINE
    }

    @Override // com.dp.sgp.Base.NetworkStateReceiverListener
    public void onNetworkUnavailable() {
    }

    public abstract void reloadData();

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        NetworkStateReceiver networkStateReceiver = new NetworkStateReceiver(this);
        this.networkStateReceiver = networkStateReceiver;
        registerReceiver(networkStateReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity
    public void setContentView(int i) {
        View viewInflate = getLayoutInflater().inflate(i, (ViewGroup) null);
        initToolbar(viewInflate);
        super.setContentView(viewInflate);
    }

    protected void initToolbar(View view) {
        this.stateful = (StatefulLayout) view.findViewById(R.id.stateful);
        this.currentViewState = VIEW_STATE.INITIAL;
    }

    public void setToolbarTitle(String str) {
        this.tvToolbar.setText(str);
    }

    public void setToolbarHomeIcon(int i) {
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeAsUpIndicator(i);
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showLoading() {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showLoading();
        }
        this.currentViewState = VIEW_STATE.LOADING;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showLoading(int i) {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showLoading();
        }
        this.currentViewState = VIEW_STATE.LOADING;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showLoading(String str) {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showLoading(str);
        }
        this.currentViewState = VIEW_STATE.LOADING;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showContent() {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showContent();
        }
        this.currentViewState = VIEW_STATE.CONTENT;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showEmpty() {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showEmpty();
        }
        this.currentViewState = VIEW_STATE.EMPTY;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showEmpty(int i) {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showEmpty(i);
        }
        this.currentViewState = VIEW_STATE.EMPTY;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showEmpty(String str) {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showEmpty(str);
        }
        this.currentViewState = VIEW_STATE.EMPTY;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showError(View.OnClickListener onClickListener) {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showError(onClickListener);
        }
        this.currentViewState = VIEW_STATE.ERROR;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showError(int i, View.OnClickListener onClickListener) {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showError(i, onClickListener);
        }
        this.currentViewState = VIEW_STATE.ERROR;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showError(String str, View.OnClickListener onClickListener) {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showError(str, onClickListener);
        }
        this.currentViewState = VIEW_STATE.ERROR;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showOffline(View.OnClickListener onClickListener) {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showOffline(onClickListener);
        }
        this.currentViewState = VIEW_STATE.OFFLINE;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showOffline(int i, View.OnClickListener onClickListener) {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showOffline(i, onClickListener);
        }
        this.currentViewState = VIEW_STATE.OFFLINE;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showOffline(String str, View.OnClickListener onClickListener) {
        StatefulLayout statefulLayout = this.stateful;
        if (statefulLayout != null) {
            statefulLayout.showOffline(str, onClickListener);
        }
        this.currentViewState = VIEW_STATE.OFFLINE;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        PermissionRequest.onRequestPermissionsResult(this, i, strArr, iArr);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        UiHelper.hideKeyboard(this);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        unregisterReceiver(this.networkStateReceiver);
        super.onStop();
    }

    @Override // com.dp.sgp.Base.NetworkStateReceiverListener
    public void onNetworkAvailable() {
        if (this.currentViewState == VIEW_STATE.ERROR || this.currentViewState == VIEW_STATE.OFFLINE) {
            reloadData();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            if (supportFragmentManager != null && supportFragmentManager.getBackStackEntryCount() > 0) {
                supportFragmentManager.popBackStack((String) null, 1);
            } else {
                finish();
            }
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
