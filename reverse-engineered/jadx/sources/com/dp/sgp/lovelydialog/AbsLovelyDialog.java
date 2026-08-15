package com.dp.sgp.lovelydialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.dp.sgp.R;
import com.dp.sgp.lovelydialog.AbsLovelyDialog;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbsLovelyDialog<T extends AbsLovelyDialog> {
    private static final String KEY_SAVED_STATE_TOKEN = "key_saved_state_token";
    private Dialog dialog;
    private View dialogView;
    private ImageView iconView;
    private TextView messageView;
    private TextView titleView;
    private TextView topTitleView;

    protected abstract int getLayout();

    void restoreState(Bundle bundle) {
    }

    public AbsLovelyDialog(Context context) {
        this(context, 0);
    }

    public AbsLovelyDialog(Context context, int i) {
        this(context, i, 0);
    }

    public AbsLovelyDialog(Context context, int i, int i2) {
        i2 = i2 == 0 ? getLayout() : i2;
        if (i == 0) {
            init(new AlertDialog.Builder(context), i2);
        } else {
            init(new AlertDialog.Builder(context, i), i2);
        }
    }

    private void init(AlertDialog.Builder builder, int i) {
        View viewInflate = LayoutInflater.from(builder.getContext()).inflate(i, (ViewGroup) null);
        this.dialogView = viewInflate;
        this.dialog = builder.setView(viewInflate).create();
        this.iconView = (ImageView) findView(R.id.ld_icon);
        this.titleView = (TextView) findView(R.id.ld_title);
        this.messageView = (TextView) findView(R.id.ld_message);
        this.topTitleView = (TextView) findView(R.id.ld_top_title);
    }

    public T configureView(ViewConfigurator<View> viewConfigurator) {
        viewConfigurator.configureView(this.dialogView);
        return this;
    }

    public T configureTitleView(ViewConfigurator<TextView> viewConfigurator) {
        viewConfigurator.configureView(this.titleView);
        return this;
    }

    public T configureMessageView(ViewConfigurator<TextView> viewConfigurator) {
        viewConfigurator.configureView(this.messageView);
        return this;
    }

    public T setMessage(int i) {
        return (T) setMessage(string(i));
    }

    public T setMessage(CharSequence charSequence) {
        this.messageView.setVisibility(0);
        this.messageView.setText(charSequence);
        return this;
    }

    public T setTitle(int i) {
        return (T) setTitle(string(i));
    }

    public T setTopTitle(int i) {
        return (T) setTopTitle(string(i));
    }

    public T setTitle(CharSequence charSequence) {
        this.titleView.setVisibility(0);
        this.titleView.setText(charSequence);
        return this;
    }

    public T setTopTitle(CharSequence charSequence) {
        this.topTitleView.setVisibility(0);
        this.topTitleView.setText(charSequence);
        return this;
    }

    public T setTopTitleColor(int i) {
        this.topTitleView.setTextColor(i);
        return this;
    }

    public T setIcon(Bitmap bitmap) {
        this.iconView.setVisibility(0);
        this.iconView.setImageBitmap(bitmap);
        return this;
    }

    public T setIcon(Drawable drawable) {
        this.iconView.setVisibility(0);
        this.iconView.setImageDrawable(drawable);
        return this;
    }

    public T setIcon(int i) {
        this.iconView.setVisibility(0);
        this.iconView.setImageResource(i);
        return this;
    }

    public T setIconTintColor(int i) {
        this.iconView.setColorFilter(i);
        return this;
    }

    public T setTitleGravity(int i) {
        this.titleView.setGravity(i);
        return this;
    }

    public T setMessageGravity(int i) {
        this.messageView.setGravity(i);
        return this;
    }

    public T setTopColor(int i) {
        findView(R.id.ld_color_area).setBackgroundColor(i);
        return this;
    }

    public T setTopColorRes(int i) {
        return (T) setTopColor(color(i));
    }

    public T setInstanceStateHandler(int i, LovelySaveStateHandler lovelySaveStateHandler) {
        lovelySaveStateHandler.handleDialogStateSave(i, this);
        return this;
    }

    public T setCancelable(boolean z) {
        this.dialog.setCancelable(z);
        return this;
    }

    public T setSavedInstanceState(Bundle bundle) {
        if (bundle != null) {
            if (bundle.keySet().contains(KEY_SAVED_STATE_TOKEN) && bundle.getSerializable(KEY_SAVED_STATE_TOKEN) == getClass()) {
                restoreState(bundle);
            }
        }
        return this;
    }

    public Dialog show() {
        this.dialog.show();
        return this.dialog;
    }

    public Dialog create() {
        return this.dialog;
    }

    public void dismiss() {
        this.dialog.dismiss();
    }

    void onSaveInstanceState(Bundle bundle) {
        bundle.putSerializable(KEY_SAVED_STATE_TOKEN, getClass());
    }

    boolean isShowing() {
        Dialog dialog = this.dialog;
        return dialog != null && dialog.isShowing();
    }

    protected String string(int i) {
        return this.dialogView.getContext().getString(i);
    }

    protected int color(int i) {
        return ContextCompat.getColor(getContext(), i);
    }

    protected Context getContext() {
        return this.dialogView.getContext();
    }

    protected <ViewClass extends View> ViewClass findView(int i) {
        return (ViewClass) this.dialogView.findViewById(i);
    }

    protected class ClickListenerDecorator implements View.OnClickListener {
        private View.OnClickListener clickListener;
        private boolean closeOnClick;

        protected ClickListenerDecorator(View.OnClickListener onClickListener, boolean z) {
            this.clickListener = onClickListener;
            this.closeOnClick = z;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            View.OnClickListener onClickListener = this.clickListener;
            if (onClickListener != null) {
                if (onClickListener instanceof LovelyDialogCompat.DialogOnClickListenerAdapter) {
                    ((LovelyDialogCompat.DialogOnClickListenerAdapter) onClickListener).onClick(AbsLovelyDialog.this.dialog, view.getId());
                } else {
                    onClickListener.onClick(view);
                }
            }
            if (this.closeOnClick) {
                AbsLovelyDialog.this.dismiss();
            }
        }
    }
}
