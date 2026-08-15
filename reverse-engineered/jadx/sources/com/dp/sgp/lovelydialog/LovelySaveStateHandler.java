package com.dp.sgp.lovelydialog;

import android.os.Bundle;
import android.util.SparseArray;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class LovelySaveStateHandler {
    private static final String KEY_DIALOG_ID = "id";
    private SparseArray<WeakReference<AbsLovelyDialog<?>>> handledDialogs = new SparseArray<>();

    public void saveInstanceState(Bundle bundle) {
        for (int size = this.handledDialogs.size() - 1; size >= 0; size--) {
            WeakReference<AbsLovelyDialog<?>> weakReferenceValueAt = this.handledDialogs.valueAt(size);
            if (weakReferenceValueAt.get() == null) {
                this.handledDialogs.remove(size);
            } else {
                AbsLovelyDialog<?> absLovelyDialog = weakReferenceValueAt.get();
                if (absLovelyDialog.isShowing()) {
                    absLovelyDialog.onSaveInstanceState(bundle);
                    bundle.putInt("id", this.handledDialogs.keyAt(size));
                    return;
                }
            }
        }
    }

    void handleDialogStateSave(int i, AbsLovelyDialog<?> absLovelyDialog) {
        this.handledDialogs.put(i, new WeakReference<>(absLovelyDialog));
    }

    public static boolean wasDialogOnScreen(Bundle bundle) {
        return bundle.keySet().contains("id");
    }

    public static int getSavedDialogId(Bundle bundle) {
        return bundle.getInt("id", -1);
    }
}
