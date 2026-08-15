package com.dp.sgp.lovelydialog;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class LovelyTextInputDialog extends AbsLovelyDialog<LovelyTextInputDialog> {
    private static final String KEY_HAS_ERROR = "key_has_error";
    private static final String KEY_TYPED_TEXT = "key_typed_text";
    private TextView confirmButton;
    private TextView errorMessage;
    private TextFilter filter;
    private EditText inputField;
    private TextView negativeButton;

    public interface OnTextInputConfirmListener {
        void onTextInputConfirmed(String str);
    }

    public interface TextFilter {
        boolean check(String str);
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    protected int getLayout() {
        return R.layout.dialog_text_input;
    }

    public LovelyTextInputDialog(Context context) {
        super(context);
        this.confirmButton = (TextView) findView(R.id.ld_btn_confirm);
        this.negativeButton = (TextView) findView(R.id.ld_btn_negative);
        this.inputField = (EditText) findView(R.id.ld_text_input);
        this.errorMessage = (TextView) findView(R.id.ld_error_message);
        this.inputField.addTextChangedListener(new HideErrorOnTextChanged());
    }

    public LovelyTextInputDialog(Context context, int i) {
        super(context, i);
        this.confirmButton = (TextView) findView(R.id.ld_btn_confirm);
        this.negativeButton = (TextView) findView(R.id.ld_btn_negative);
        this.inputField = (EditText) findView(R.id.ld_text_input);
        this.errorMessage = (TextView) findView(R.id.ld_error_message);
        this.inputField.addTextChangedListener(new HideErrorOnTextChanged());
    }

    public LovelyTextInputDialog configureEditText(ViewConfigurator<EditText> viewConfigurator) {
        viewConfigurator.configureView(this.inputField);
        return this;
    }

    public LovelyTextInputDialog setConfirmButton(int i, OnTextInputConfirmListener onTextInputConfirmListener) {
        return setConfirmButton(string(i), onTextInputConfirmListener);
    }

    public LovelyTextInputDialog setConfirmButton(String str, OnTextInputConfirmListener onTextInputConfirmListener) {
        this.confirmButton.setText(str);
        this.confirmButton.setOnClickListener(new TextInputListener(onTextInputConfirmListener));
        return this;
    }

    public LovelyTextInputDialog setConfirmButtonColor(int i) {
        this.confirmButton.setTextColor(i);
        return this;
    }

    public LovelyTextInputDialog setNegativeButton(int i, View.OnClickListener onClickListener) {
        return setNegativeButton(string(i), onClickListener);
    }

    public LovelyTextInputDialog setNegativeButton(String str, View.OnClickListener onClickListener) {
        this.negativeButton.setVisibility(0);
        this.negativeButton.setText(str);
        this.negativeButton.setOnClickListener(new AbsLovelyDialog.ClickListenerDecorator(onClickListener, true));
        return this;
    }

    public LovelyTextInputDialog setNegativeButtonColor(int i) {
        this.negativeButton.setTextColor(i);
        return this;
    }

    public LovelyTextInputDialog setInputFilter(int i, TextFilter textFilter) {
        return setInputFilter(string(i), textFilter);
    }

    public LovelyTextInputDialog setInputFilter(String str, TextFilter textFilter) {
        this.filter = textFilter;
        this.errorMessage.setText(str);
        return this;
    }

    public LovelyTextInputDialog setErrorMessageColor(int i) {
        this.errorMessage.setTextColor(i);
        return this;
    }

    public LovelyTextInputDialog setInputType(int i) {
        this.inputField.setInputType(i);
        return this;
    }

    public LovelyTextInputDialog addTextWatcher(TextWatcher textWatcher) {
        this.inputField.addTextChangedListener(textWatcher);
        return this;
    }

    public LovelyTextInputDialog setInitialInput(int i) {
        return setInitialInput(string(i));
    }

    public LovelyTextInputDialog setInitialInput(String str) {
        this.inputField.setText(str);
        return this;
    }

    public LovelyTextInputDialog setHint(int i) {
        return setHint(string(i));
    }

    public LovelyTextInputDialog setHint(String str) {
        this.inputField.setHint(str);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setError() {
        this.errorMessage.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideError() {
        this.errorMessage.setVisibility(8);
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_HAS_ERROR, this.errorMessage.getVisibility() == 0);
        bundle.putString(KEY_TYPED_TEXT, this.inputField.getText().toString());
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    void restoreState(Bundle bundle) {
        super.restoreState(bundle);
        if (bundle.getBoolean(KEY_HAS_ERROR, false)) {
            setError();
        }
        this.inputField.setText(bundle.getString(KEY_TYPED_TEXT));
    }

    private class TextInputListener implements View.OnClickListener {
        private OnTextInputConfirmListener wrapped;

        private TextInputListener(OnTextInputConfirmListener onTextInputConfirmListener) {
            this.wrapped = onTextInputConfirmListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String string = LovelyTextInputDialog.this.inputField.getText().toString();
            if (LovelyTextInputDialog.this.filter != null && (!LovelyTextInputDialog.this.filter.check(string))) {
                LovelyTextInputDialog.this.setError();
                return;
            }
            OnTextInputConfirmListener onTextInputConfirmListener = this.wrapped;
            if (onTextInputConfirmListener != null) {
                onTextInputConfirmListener.onTextInputConfirmed(string);
            }
            LovelyTextInputDialog.this.dismiss();
        }
    }

    private class HideErrorOnTextChanged implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private HideErrorOnTextChanged() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            LovelyTextInputDialog.this.hideError();
        }
    }
}
