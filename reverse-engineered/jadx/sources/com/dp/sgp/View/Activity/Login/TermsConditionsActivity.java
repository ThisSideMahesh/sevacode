package com.dp.sgp.View.Activity.Login;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.LinearLayout;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class TermsConditionsActivity extends AppCompatActivity {
    private Button btnRetry;
    private LinearLayout layMain;
    private LinearLayout layoutNoInternet;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_terms_conditions);
        final ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage("Loading Data...");
        progressDialog.setCancelable(false);
        WebView webView = (WebView) findViewById(R.id.web_view);
        webView.requestFocus();
        webView.getSettings().setJavaScriptEnabled(true);
        webView.loadUrl("https://dindoripranit.org/gurupeethapp/privacy.html");
        webView.setWebViewClient(new WebViewClient() { // from class: com.dp.sgp.View.Activity.Login.TermsConditionsActivity.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                webView2.loadUrl(str);
                return true;
            }
        });
        webView.setWebChromeClient(new WebChromeClient() { // from class: com.dp.sgp.View.Activity.Login.TermsConditionsActivity.2
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView2, int i) {
                if (i < 100) {
                    progressDialog.show();
                }
                if (i == 100) {
                    progressDialog.dismiss();
                }
            }
        });
    }
}
