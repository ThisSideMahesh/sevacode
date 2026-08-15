package com.dp.sgp.util;

import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.Log;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
public class PhoneTextFormatter implements TextWatcher {
    private final String TAG = getClass().getSimpleName();
    private EditText mEditText;
    private String mPattern;

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public PhoneTextFormatter(EditText editText, String str) {
        this.mEditText = editText;
        this.mPattern = str;
        this.mEditText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(str.length())});
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder(charSequence);
        Log.d(this.TAG, "join");
        if (i3 <= 0 || isValid(sb.toString())) {
            return;
        }
        for (int i4 = 0; i4 < sb.length(); i4++) {
            Log.d(this.TAG, String.format("%s", sb));
            char cCharAt = this.mPattern.charAt(i4);
            if (cCharAt != '#' && cCharAt != sb.charAt(i4)) {
                sb.insert(i4, cCharAt);
            }
        }
        this.mEditText.setText(sb);
        EditText editText = this.mEditText;
        editText.setSelection(editText.getText().length());
    }

    private boolean isValid(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = this.mPattern.charAt(i);
            if (cCharAt != '#' && cCharAt != str.charAt(i)) {
                return false;
            }
        }
        return true;
    }
}
