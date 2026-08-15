package com.dp.sgp.lovelydialog;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class LovelyCustomDialog extends AbsLovelyDialog<LovelyCustomDialog> {
    private View addedView;
    private InstanceStateManager instanceStateManager;

    public interface InstanceStateManager {
        void restoreInstanceState(Bundle bundle);

        void saveInstanceState(Bundle bundle);
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    protected int getLayout() {
        return R.layout.dialog_custom;
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    public /* bridge */ /* synthetic */ AbsLovelyDialog configureView(ViewConfigurator viewConfigurator) {
        return configureView((ViewConfigurator<View>) viewConfigurator);
    }

    public LovelyCustomDialog(Context context) {
        super(context);
    }

    public LovelyCustomDialog(Context context, int i) {
        super(context, i);
    }

    public LovelyCustomDialog setView(int i) {
        this.addedView = LayoutInflater.from(getContext()).inflate(i, (ViewGroup) findView(R.id.ld_custom_view_container), true);
        return this;
    }

    public LovelyCustomDialog setView(View view) {
        ((ViewGroup) findView(R.id.ld_custom_view_container)).addView(view);
        this.addedView = view;
        return this;
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    public LovelyCustomDialog configureView(ViewConfigurator<View> viewConfigurator) {
        View view = this.addedView;
        if (view == null) {
            throw new IllegalStateException(string(R.string.ex_msg_dialog_view_not_set));
        }
        viewConfigurator.configureView(view);
        return this;
    }

    public LovelyCustomDialog setListener(int i, View.OnClickListener onClickListener) {
        return setListener(i, false, onClickListener);
    }

    public LovelyCustomDialog setListener(int i, boolean z, View.OnClickListener onClickListener) {
        if (this.addedView == null) {
            throw new IllegalStateException(string(R.string.ex_msg_dialog_view_not_set));
        }
        findView(i).setOnClickListener(new AbsLovelyDialog.ClickListenerDecorator(onClickListener, z));
        return this;
    }

    public LovelyCustomDialog setInstanceStateManager(InstanceStateManager instanceStateManager) {
        this.instanceStateManager = instanceStateManager;
        return this;
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.instanceStateManager.saveInstanceState(bundle);
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    void restoreState(Bundle bundle) {
        super.restoreState(bundle);
        this.instanceStateManager.restoreInstanceState(bundle);
    }
}
