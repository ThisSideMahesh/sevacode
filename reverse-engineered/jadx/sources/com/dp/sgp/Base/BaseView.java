package com.dp.sgp.Base;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface BaseView {
    void showContent();

    void showEmpty();

    void showEmpty(int i);

    void showEmpty(String str);

    void showError(int i, View.OnClickListener onClickListener);

    void showError(View.OnClickListener onClickListener);

    void showError(String str, View.OnClickListener onClickListener);

    void showLoading();

    void showLoading(int i);

    void showLoading(String str);

    void showOffline(int i, View.OnClickListener onClickListener);

    void showOffline(View.OnClickListener onClickListener);

    void showOffline(String str, View.OnClickListener onClickListener);
}
