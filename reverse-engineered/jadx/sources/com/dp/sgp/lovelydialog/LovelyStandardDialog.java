package com.dp.sgp.lovelydialog;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class LovelyStandardDialog extends AbsLovelyDialog<LovelyStandardDialog> {
    public static final int NEGATIVE_BUTTON = 2131362006;
    public static final int NEUTRAL_BUTTON = 2131362005;
    public static final int POSITIVE_BUTTON = 2131362007;
    private Button negativeButton;
    private Button neutralButton;
    private Button positiveButton;

    public LovelyStandardDialog(Context context) {
        super(context);
        this.positiveButton = (Button) findView(R.id.ld_btn_yes);
        this.negativeButton = (Button) findView(R.id.ld_btn_no);
        this.neutralButton = (Button) findView(R.id.ld_btn_neutral);
    }

    public LovelyStandardDialog(Context context, int i) {
        super(context, i);
        this.positiveButton = (Button) findView(R.id.ld_btn_yes);
        this.negativeButton = (Button) findView(R.id.ld_btn_no);
        this.neutralButton = (Button) findView(R.id.ld_btn_neutral);
    }

    public LovelyStandardDialog(Context context, ButtonLayout buttonLayout) {
        super(context, 0, buttonLayout.layoutRes);
        this.positiveButton = (Button) findView(R.id.ld_btn_yes);
        this.negativeButton = (Button) findView(R.id.ld_btn_no);
        this.neutralButton = (Button) findView(R.id.ld_btn_neutral);
    }

    public LovelyStandardDialog(Context context, int i, ButtonLayout buttonLayout) {
        super(context, i, buttonLayout.layoutRes);
        this.positiveButton = (Button) findView(R.id.ld_btn_yes);
        this.negativeButton = (Button) findView(R.id.ld_btn_no);
        this.neutralButton = (Button) findView(R.id.ld_btn_neutral);
    }

    public LovelyStandardDialog setPositiveButton(int i, View.OnClickListener onClickListener) {
        return setPositiveButton(string(i), onClickListener);
    }

    public LovelyStandardDialog setPositiveButton(String str, View.OnClickListener onClickListener) {
        this.positiveButton.setVisibility(0);
        this.positiveButton.setText(str);
        this.positiveButton.setOnClickListener(new AbsLovelyDialog.ClickListenerDecorator(onClickListener, true));
        return this;
    }

    public LovelyStandardDialog setNegativeButtonText(int i) {
        return setNegativeButton(string(i), (View.OnClickListener) null);
    }

    public LovelyStandardDialog setNegativeButtonText(String str) {
        return setNegativeButton(str, (View.OnClickListener) null);
    }

    public LovelyStandardDialog setNegativeButton(int i, View.OnClickListener onClickListener) {
        return setNegativeButton(string(i), onClickListener);
    }

    public LovelyStandardDialog setNegativeButton(String str, View.OnClickListener onClickListener) {
        this.negativeButton.setVisibility(0);
        this.negativeButton.setText(str);
        this.negativeButton.setOnClickListener(new AbsLovelyDialog.ClickListenerDecorator(onClickListener, true));
        return this;
    }

    public LovelyStandardDialog setNeutralButtonText(int i) {
        return setNeutralButton(string(i), (View.OnClickListener) null);
    }

    public LovelyStandardDialog setNeutralButtonText(String str) {
        return setNeutralButton(str, (View.OnClickListener) null);
    }

    public LovelyStandardDialog setNeutralButton(int i, View.OnClickListener onClickListener) {
        return setNeutralButton(string(i), onClickListener);
    }

    public LovelyStandardDialog setNeutralButton(String str, View.OnClickListener onClickListener) {
        this.neutralButton.setVisibility(0);
        this.neutralButton.setText(str);
        this.neutralButton.setOnClickListener(new AbsLovelyDialog.ClickListenerDecorator(onClickListener, true));
        return this;
    }

    public LovelyStandardDialog setButtonsColor(int i) {
        this.positiveButton.setTextColor(i);
        this.negativeButton.setTextColor(i);
        this.neutralButton.setTextColor(i);
        return this;
    }

    public LovelyStandardDialog setButtonsColorRes(int i) {
        return setButtonsColor(color(i));
    }

    public LovelyStandardDialog setOnButtonClickListener(View.OnClickListener onClickListener) {
        return setOnButtonClickListener(true, onClickListener);
    }

    public LovelyStandardDialog setOnButtonClickListener(boolean z, View.OnClickListener onClickListener) {
        AbsLovelyDialog.ClickListenerDecorator clickListenerDecorator = new AbsLovelyDialog.ClickListenerDecorator(onClickListener, z);
        this.positiveButton.setOnClickListener(clickListenerDecorator);
        this.neutralButton.setOnClickListener(clickListenerDecorator);
        this.negativeButton.setOnClickListener(clickListenerDecorator);
        return this;
    }

    public LovelyStandardDialog setPositiveButtonText(int i) {
        return setPositiveButton(string(i), (View.OnClickListener) null);
    }

    public LovelyStandardDialog setPositiveButtonText(String str) {
        return setPositiveButton(str, (View.OnClickListener) null);
    }

    public LovelyStandardDialog setPositiveButtonColor(int i) {
        this.positiveButton.setTextColor(i);
        return this;
    }

    public LovelyStandardDialog setNegativeButtonColor(int i) {
        this.negativeButton.setTextColor(i);
        return this;
    }

    public LovelyStandardDialog setNeutralButtonColor(int i) {
        this.neutralButton.setTextColor(i);
        return this;
    }

    public LovelyStandardDialog setPositiveButtonColorRes(int i) {
        return setPositiveButtonColor(color(i));
    }

    public LovelyStandardDialog setNegativeButtonColorRes(int i) {
        return setNegativeButtonColor(color(i));
    }

    public LovelyStandardDialog setNeutralButtonColorRes(int i) {
        return setNeutralButtonColor(color(i));
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    protected int getLayout() {
        return ButtonLayout.HORIZONTAL.layoutRes;
    }

    public enum ButtonLayout {
        HORIZONTAL(R.layout.dialog_standard),
        VERTICAL(R.layout.dialog_standard_vertical);

        final int layoutRes;

        ButtonLayout(int i) {
            this.layoutRes = i;
        }
    }
}
