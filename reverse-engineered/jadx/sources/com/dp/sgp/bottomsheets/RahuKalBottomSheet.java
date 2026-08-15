package com.dp.sgp.bottomsheets;

import android.os.Bundle;
import android.support.design.widget.BottomSheetDialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class RahuKalBottomSheet extends BottomSheetDialogFragment {
    private View rootView;
    WebView webView;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.rahu_kal, viewGroup);
        this.rootView = viewInflate;
        this.webView = (WebView) viewInflate.findViewById(R.id.newweb);
        this.rootView.findViewById(R.id.ivClose).setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.bottomsheets.RahuKalBottomSheet.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RahuKalBottomSheet.this.dismiss();
            }
        });
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.loadUrl("file:///android_asset/table.html");
        return this.rootView;
    }
}
