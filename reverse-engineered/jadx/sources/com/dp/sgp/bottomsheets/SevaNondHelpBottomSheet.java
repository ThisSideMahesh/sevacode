package com.dp.sgp.bottomsheets;

import android.os.Bundle;
import android.support.design.widget.BottomSheetDialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class SevaNondHelpBottomSheet extends BottomSheetDialogFragment {
    private View rootView;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_seva_nond_help, viewGroup);
        this.rootView = viewInflate;
        viewInflate.findViewById(R.id.ivClose).setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.bottomsheets.SevaNondHelpBottomSheet.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SevaNondHelpBottomSheet.this.dismiss();
            }
        });
        return this.rootView;
    }
}
