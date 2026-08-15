package com.github.gcacace.signaturepad.utils;

import com.github.gcacace.signaturepad.views.SignaturePad;

/* JADX INFO: loaded from: classes.dex */
public final class SignaturePadBindingAdapter {

    public interface OnClearListener {
        void onClear();
    }

    public interface OnSignedListener {
        void onSigned();
    }

    public interface OnStartSigningListener {
        void onStartSigning();
    }

    public static void setOnSignedListener(SignaturePad signaturePad, OnStartSigningListener onStartSigningListener) {
        setOnSignedListener(signaturePad, onStartSigningListener, null, null);
    }

    public static void setOnSignedListener(SignaturePad signaturePad, OnSignedListener onSignedListener) {
        setOnSignedListener(signaturePad, null, onSignedListener, null);
    }

    public static void setOnSignedListener(SignaturePad signaturePad, OnClearListener onClearListener) {
        setOnSignedListener(signaturePad, null, null, onClearListener);
    }

    public static void setOnSignedListener(SignaturePad signaturePad, final OnStartSigningListener onStartSigningListener, final OnSignedListener onSignedListener, final OnClearListener onClearListener) {
        signaturePad.setOnSignedListener(new SignaturePad.OnSignedListener() { // from class: com.github.gcacace.signaturepad.utils.SignaturePadBindingAdapter.1
            @Override // com.github.gcacace.signaturepad.views.SignaturePad.OnSignedListener
            public void onStartSigning() {
                OnStartSigningListener onStartSigningListener2 = onStartSigningListener;
                if (onStartSigningListener2 != null) {
                    onStartSigningListener2.onStartSigning();
                }
            }

            @Override // com.github.gcacace.signaturepad.views.SignaturePad.OnSignedListener
            public void onSigned() {
                OnSignedListener onSignedListener2 = onSignedListener;
                if (onSignedListener2 != null) {
                    onSignedListener2.onSigned();
                }
            }

            @Override // com.github.gcacace.signaturepad.views.SignaturePad.OnSignedListener
            public void onClear() {
                OnClearListener onClearListener2 = onClearListener;
                if (onClearListener2 != null) {
                    onClearListener2.onClear();
                }
            }
        });
    }
}
