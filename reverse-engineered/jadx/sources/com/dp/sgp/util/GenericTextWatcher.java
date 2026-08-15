package com.dp.sgp.util;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class GenericTextWatcher implements TextWatcher {
    private final EditText[] editText;
    private View view;

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public GenericTextWatcher(View view, EditText[] editTextArr) {
        this.editText = editTextArr;
        this.view = view;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        String string = editable.toString();
        switch (this.view.getId()) {
            case R.id.otp_edit_box1 /* 2131362110 */:
                if (string.length() == 1) {
                    this.editText[1].requestFocus();
                }
                break;
            case R.id.otp_edit_box2 /* 2131362111 */:
                if (string.length() == 1) {
                    this.editText[2].requestFocus();
                } else if (string.length() == 0) {
                    this.editText[0].requestFocus();
                }
                break;
            case R.id.otp_edit_box3 /* 2131362112 */:
                if (string.length() == 1) {
                    this.editText[3].requestFocus();
                } else if (string.length() == 0) {
                    this.editText[1].requestFocus();
                }
                break;
            case R.id.otp_edit_box4 /* 2131362113 */:
                if (string.length() == 0) {
                    this.editText[2].requestFocus();
                }
                break;
        }
    }
}
