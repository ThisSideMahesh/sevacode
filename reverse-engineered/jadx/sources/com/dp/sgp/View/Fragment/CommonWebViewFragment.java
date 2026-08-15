package com.dp.sgp.View.Fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class CommonWebViewFragment extends Fragment {
    private DataHandler datHandler;
    private View progressBar;
    private String url;
    View v;
    private WebView webView;
    String Channel_id = "";
    String Orientationn = "";
    String LstrCourseDetails = "";
    String NewNewlStrMSPIN = "";
    String user_id = "";
    String lStrLink = "";
    String strtext = "";

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_common_web_view, viewGroup, false);
        if (getArguments() != null) {
            this.strtext = getArguments().getString(Key.MESSAGE);
            String string = getArguments().getString("media_url");
            this.url = string;
            Log.e("URL URL", string);
            getActivity().setTitle(this.strtext);
        }
        this.webView = (WebView) this.v.findViewById(R.id.web_view);
        this.progressBar = this.v.findViewById(R.id.progress_bar);
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.getSettings().setCacheMode(2);
        this.webView.setWebViewClient(new WebViewClient() { // from class: com.dp.sgp.View.Fragment.CommonWebViewFragment.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                CommonWebViewFragment.this.progressBar.setVisibility(8);
            }
        });
        this.webView.clearCache(true);
        this.webView.clearHistory();
        CookieManager.getInstance().removeAllCookie();
        this.webView.loadUrl(this.url);
        return this.v;
    }
}
