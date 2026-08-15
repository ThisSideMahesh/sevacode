package com.dp.sgp.View.Activity.Youtube;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class YoutubeWebviewActivity extends AppCompatActivity {
    private View progressBar;
    private String url;
    private WebView webView;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_youtube_webview);
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("media_url");
            this.url = stringExtra;
            Log.e("URL URL", stringExtra);
        }
        this.webView = (WebView) findViewById(R.id.web_view);
        this.progressBar = findViewById(R.id.progress_bar);
        this.webView.setWebViewClient(new Browser_home());
        this.webView.setWebChromeClient(new MyChrome());
        WebSettings settings = this.webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setAppCacheEnabled(true);
        if (bundle == null) {
            this.webView.post(new Runnable() { // from class: com.dp.sgp.View.Activity.Youtube.YoutubeWebviewActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    YoutubeWebviewActivity.this.loadWebsite();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadWebsite() {
        this.webView.loadUrl(this.url);
    }

    class Browser_home extends WebViewClient {
        Browser_home() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            YoutubeWebviewActivity.this.setTitle(webView.getTitle());
            super.onPageFinished(webView, str);
        }
    }

    private class MyChrome extends WebChromeClient {
        private View mCustomView;
        private WebChromeClient.CustomViewCallback mCustomViewCallback;
        protected FrameLayout mFullscreenContainer;
        private int mOriginalOrientation;
        private int mOriginalSystemUiVisibility;

        MyChrome() {
        }

        @Override // android.webkit.WebChromeClient
        public Bitmap getDefaultVideoPoster() {
            if (this.mCustomView == null) {
                return null;
            }
            return BitmapFactory.decodeResource(YoutubeWebviewActivity.this.getApplicationContext().getResources(), 2130837573);
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            ((FrameLayout) YoutubeWebviewActivity.this.getWindow().getDecorView()).removeView(this.mCustomView);
            this.mCustomView = null;
            YoutubeWebviewActivity.this.getWindow().getDecorView().setSystemUiVisibility(this.mOriginalSystemUiVisibility);
            YoutubeWebviewActivity.this.setRequestedOrientation(this.mOriginalOrientation);
            this.mCustomViewCallback.onCustomViewHidden();
            this.mCustomViewCallback = null;
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            if (this.mCustomView != null) {
                onHideCustomView();
                return;
            }
            this.mCustomView = view;
            this.mOriginalSystemUiVisibility = YoutubeWebviewActivity.this.getWindow().getDecorView().getSystemUiVisibility();
            this.mOriginalOrientation = YoutubeWebviewActivity.this.getRequestedOrientation();
            this.mCustomViewCallback = customViewCallback;
            ((FrameLayout) YoutubeWebviewActivity.this.getWindow().getDecorView()).addView(this.mCustomView, new FrameLayout.LayoutParams(-1, -1));
            YoutubeWebviewActivity.this.getWindow().getDecorView().setSystemUiVisibility(3846);
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.webView.saveState(bundle);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.webView.restoreState(bundle);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
    }
}
