package com.dp.sgp.Base;

import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.dp.sgp.R;
import com.dp.sgp.statefulllayout.StatefulLayout;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseFragment extends Fragment implements NetworkStateReceiverListener, BaseView {
    public VIEW_STATE currentViewState;
    private NetworkStateReceiver networkStateReceiver;
    private StatefulLayout stateful;

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

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.networkStateReceiver = new NetworkStateReceiver(this);
        getActivity().registerReceiver(this.networkStateReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    protected View getrootView(View view) {
        this.stateful = (StatefulLayout) view.findViewById(R.id.stateful);
        return view;
    }

    private boolean viewInflated() {
        if (this.stateful != null) {
            return true;
        }
        throw new RuntimeException("Use getrootView in child fragment to inflate rootview");
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showLoading() {
        if (viewInflated()) {
            this.stateful.showLoading();
        }
        this.currentViewState = VIEW_STATE.LOADING;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showLoading(int i) {
        if (viewInflated()) {
            this.stateful.showLoading();
        }
        this.currentViewState = VIEW_STATE.LOADING;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showLoading(String str) {
        if (viewInflated()) {
            this.stateful.showLoading(str);
        }
        this.currentViewState = VIEW_STATE.LOADING;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showContent() {
        if (viewInflated()) {
            this.stateful.showContent();
        }
        this.currentViewState = VIEW_STATE.CONTENT;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showEmpty() {
        if (viewInflated()) {
            this.stateful.showEmpty();
        }
        this.currentViewState = VIEW_STATE.EMPTY;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showEmpty(int i) {
        if (viewInflated()) {
            this.stateful.showEmpty(i);
        }
        this.currentViewState = VIEW_STATE.EMPTY;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showEmpty(String str) {
        if (viewInflated()) {
            this.stateful.showEmpty(str);
        }
        this.currentViewState = VIEW_STATE.EMPTY;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showError(View.OnClickListener onClickListener) {
        if (viewInflated()) {
            this.stateful.showError(onClickListener);
        }
        this.currentViewState = VIEW_STATE.ERROR;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showError(int i, View.OnClickListener onClickListener) {
        if (viewInflated()) {
            this.stateful.showError(i, onClickListener);
        }
        this.currentViewState = VIEW_STATE.ERROR;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showError(String str, View.OnClickListener onClickListener) {
        if (viewInflated()) {
            this.stateful.showError(str, onClickListener);
        }
        this.currentViewState = VIEW_STATE.ERROR;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showOffline(View.OnClickListener onClickListener) {
        if (viewInflated()) {
            this.stateful.showOffline(onClickListener);
        }
        this.currentViewState = VIEW_STATE.OFFLINE;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showOffline(int i, View.OnClickListener onClickListener) {
        if (viewInflated()) {
            this.stateful.showOffline(i, onClickListener);
        }
        this.currentViewState = VIEW_STATE.OFFLINE;
    }

    @Override // com.dp.sgp.Base.BaseView
    public void showOffline(String str, View.OnClickListener onClickListener) {
        if (viewInflated()) {
            this.stateful.showOffline(str, onClickListener);
        }
        this.currentViewState = VIEW_STATE.OFFLINE;
    }

    @Override // android.support.v4.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        PermissionRequest.onRequestPermissionsResult(getActivity(), i, strArr, iArr);
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        UiHelper.hideKeyboard(getActivity());
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        getActivity().unregisterReceiver(this.networkStateReceiver);
        super.onStop();
    }

    @Override // com.dp.sgp.Base.NetworkStateReceiverListener
    public void onNetworkAvailable() {
        if (this.currentViewState == VIEW_STATE.ERROR || this.currentViewState == VIEW_STATE.OFFLINE) {
            reloadData();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        return true;
    }
}
