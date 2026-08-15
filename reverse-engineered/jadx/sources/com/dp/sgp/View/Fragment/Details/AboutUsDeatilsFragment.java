package com.dp.sgp.View.Fragment.Details;

import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.Fragment;
import android.support.v4.content.FileProvider;
import android.support.v7.widget.RecyclerView;
import android.util.Base64;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.Target;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.Model.CommonResponse;
import com.dp.sgp.Model.HomeResponse.HomeData;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.R;
import com.dp.sgp.util.ImageUtils;
import com.google.gson.Gson;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class AboutUsDeatilsFragment extends Fragment {
    ImageView backdrop;
    ConnectionDetector connectionDetector;
    HomeData data;
    DataHandler dataHandler;
    FloatingActionButton fab;
    String lStrSendImage;
    String lStrSendText;
    FrameLayout layoutDate;
    String message;
    private View progressBar;
    ProgressDialog progressDialog;
    private RecyclerView recyclerView;
    SendCommonBody sendCommonBody;
    String status;
    View v;
    private WebView webView;
    String strtext = "";
    String device_token = "";
    String user_id = "";
    String Type = "";
    String lStrSubtitle = "";
    private List<CommonData> dataList = null;
    int intValue = 0;
    int counter = 0;
    int arrysize = 0;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.web_share, viewGroup, false);
        this.v = viewInflate;
        this.backdrop = (ImageView) viewInflate.findViewById(R.id.backdrop);
        this.fab = (FloatingActionButton) this.v.findViewById(R.id.fab);
        this.layoutDate = (FrameLayout) this.v.findViewById(R.id.layoutDate);
        this.sendCommonBody = new SendCommonBody();
        DataHandler dataHandler = new DataHandler(getActivity());
        this.dataHandler = dataHandler;
        this.device_token = dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.dataList = new ArrayList();
        this.webView = (WebView) this.v.findViewById(R.id.web_view);
        this.progressBar = this.v.findViewById(R.id.progress_bar);
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.clearCache(true);
        this.webView.clearHistory();
        this.webView.getSettings().setSupportZoom(true);
        this.webView.getSettings().setBuiltInZoomControls(true);
        this.webView.getSettings().setDisplayZoomControls(false);
        this.webView.setBackgroundColor(0);
        this.webView.setBackgroundResource(R.drawable.shriyantra_details);
        CookieManager.getInstance().removeAllCookie();
        this.webView.getSettings().setDomStorageEnabled(true);
        this.webView.getSettings().setAllowFileAccess(true);
        this.webView.getSettings().setLoadsImagesAutomatically(true);
        this.webView.getSettings().setMixedContentMode(0);
        if (getArguments() != null) {
            this.strtext = getArguments().getString(Key.MESSAGE);
            this.lStrSubtitle = getArguments().getString("subtitle");
            this.Type = getArguments().getString("pos");
            getActivity().setTitle(this.lStrSubtitle);
        }
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.sendCommonBody.setType(this.Type);
        ConnectionDetector connectionDetector = new ConnectionDetector(getActivity());
        this.connectionDetector = connectionDetector;
        if (connectionDetector.isConnectingToInternet()) {
            AboutUs();
        } else {
            Toast.makeText(getActivity(), getResources().getString(R.string.no_internet), 0).show();
        }
        this.layoutDate.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.Details.AboutUsDeatilsFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AboutUsDeatilsFragment.this.shareText();
            }
        });
        this.fab.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.Details.AboutUsDeatilsFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AboutUsDeatilsFragment.this.shareText();
            }
        });
        return this.v;
    }

    private void initCollapsingToolbar(View view) {
        final CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) view.findViewById(R.id.collapsing_toolbar);
        collapsingToolbarLayout.setTitle(" ");
        AppBarLayout appBarLayout = (AppBarLayout) view.findViewById(R.id.appbar);
        appBarLayout.setExpanded(true);
        appBarLayout.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.dp.sgp.View.Fragment.Details.AboutUsDeatilsFragment.3
            boolean isShow = false;
            int scrollRange = -1;

            @Override // android.support.design.widget.AppBarLayout.OnOffsetChangedListener, android.support.design.widget.AppBarLayout.BaseOnOffsetChangedListener
            public void onOffsetChanged(AppBarLayout appBarLayout2, int i) {
                if (this.scrollRange == -1) {
                    this.scrollRange = appBarLayout2.getTotalScrollRange();
                }
                if (this.scrollRange + i == 0) {
                    collapsingToolbarLayout.setTitle(AboutUsDeatilsFragment.this.getString(R.string.app_name));
                    this.isShow = true;
                } else if (this.isShow) {
                    collapsingToolbarLayout.setTitle(" ");
                    this.isShow = false;
                }
            }
        });
    }

    public void AboutUs() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ApiService apiService = (ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class);
        if (this.strtext.equalsIgnoreCase("उपक्रम")) {
            apiService.Upkram(this.sendCommonBody, new Callback<CommonResponse>() { // from class: com.dp.sgp.View.Fragment.Details.AboutUsDeatilsFragment.4
                @Override // retrofit.Callback
                public void success(CommonResponse commonResponse, Response response) {
                    if (commonResponse != null) {
                        Log.d("appUpdateBody", new Gson().toJson(commonResponse));
                        AboutUsDeatilsFragment.this.message = commonResponse.getMessage();
                        AboutUsDeatilsFragment.this.status = commonResponse.getStatus();
                        if (commonResponse.getData() != null && commonResponse.getData().size() > 0) {
                            AboutUsDeatilsFragment.this.dataList = commonResponse.getData();
                            if (commonResponse.getData().get(0).getImage() != null && !commonResponse.getData().get(0).getImage().equalsIgnoreCase("")) {
                                AboutUsDeatilsFragment.this.LoadImage(commonResponse.getData().get(0).getImage(), commonResponse.getData().get(0).getDescription());
                            }
                            commonResponse.getData().get(0).getDescription();
                        }
                    }
                    AboutUsDeatilsFragment.this.progressDialog.dismiss();
                }

                @Override // retrofit.Callback
                public void failure(RetrofitError retrofitError) {
                    AboutUsDeatilsFragment.this.progressDialog.dismiss();
                }
            });
        } else if (this.strtext.equalsIgnoreCase("विभाग")) {
            apiService.Vibhag(this.sendCommonBody, new Callback<CommonResponse>() { // from class: com.dp.sgp.View.Fragment.Details.AboutUsDeatilsFragment.5
                @Override // retrofit.Callback
                public void success(CommonResponse commonResponse, Response response) {
                    if (commonResponse != null) {
                        Log.d("appUpdateBody", new Gson().toJson(commonResponse));
                        AboutUsDeatilsFragment.this.message = commonResponse.getMessage();
                        AboutUsDeatilsFragment.this.status = commonResponse.getStatus();
                        if (commonResponse.getData() != null && commonResponse.getData().size() > 0) {
                            AboutUsDeatilsFragment.this.dataList = commonResponse.getData();
                            if (commonResponse.getData().get(0).getImage() != null && !commonResponse.getData().get(0).getImage().equalsIgnoreCase("")) {
                                AboutUsDeatilsFragment.this.LoadImage(commonResponse.getData().get(0).getImage(), commonResponse.getData().get(0).getDescription());
                            }
                            commonResponse.getData().get(0).getDescription();
                        }
                    }
                    AboutUsDeatilsFragment.this.progressDialog.dismiss();
                }

                @Override // retrofit.Callback
                public void failure(RetrofitError retrofitError) {
                    AboutUsDeatilsFragment.this.progressDialog.dismiss();
                }
            });
        } else {
            apiService.AboutUs(this.sendCommonBody, new Callback<CommonResponse>() { // from class: com.dp.sgp.View.Fragment.Details.AboutUsDeatilsFragment.6
                @Override // retrofit.Callback
                public void success(CommonResponse commonResponse, Response response) {
                    if (commonResponse != null) {
                        Log.d("appUpdateBody", new Gson().toJson(commonResponse));
                        AboutUsDeatilsFragment.this.message = commonResponse.getMessage();
                        AboutUsDeatilsFragment.this.status = commonResponse.getStatus();
                        if (commonResponse.getData() != null && commonResponse.getData().size() > 0) {
                            AboutUsDeatilsFragment.this.dataList = commonResponse.getData();
                            if (commonResponse.getData().get(0).getImage() != null && !commonResponse.getData().get(0).getImage().equalsIgnoreCase("")) {
                                AboutUsDeatilsFragment.this.LoadImage(commonResponse.getData().get(0).getImage(), commonResponse.getData().get(0).getDescription());
                            }
                            commonResponse.getData().get(0).getDescription();
                            int i = Build.VERSION.SDK_INT;
                        }
                    }
                    AboutUsDeatilsFragment.this.progressDialog.dismiss();
                }

                @Override // retrofit.Callback
                public void failure(RetrofitError retrofitError) {
                    AboutUsDeatilsFragment.this.progressDialog.dismiss();
                }
            });
        }
    }

    public void LoadImage(String str, String str2) {
        this.lStrSendText = str2;
        this.lStrSendImage = str;
        RequestOptions requestOptions = new RequestOptions();
        requestOptions.placeholder(ImageUtils.getRandomDrawbleColor());
        requestOptions.error(ImageUtils.getRandomDrawbleColor());
        requestOptions.diskCacheStrategy(DiskCacheStrategy.ALL);
        Glide.with(getActivity()).load(str).apply(requestOptions).listener(new RequestListener<Drawable>() { // from class: com.dp.sgp.View.Fragment.Details.AboutUsDeatilsFragment.7
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target<Drawable> target, boolean z) {
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(Drawable drawable, Object obj, Target<Drawable> target, DataSource dataSource, boolean z) {
                return false;
            }
        }).transition(DrawableTransitionOptions.withCrossFade()).into(this.backdrop);
        try {
            Base64.encodeToString(str2.getBytes(com.bumptech.glide.load.Key.STRING_CHARSET_NAME), 0);
            this.webView.loadDataWithBaseURL("", str2, "text/html", com.bumptech.glide.load.Key.STRING_CHARSET_NAME, "");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public class BitmapAsyncTask extends AsyncTask<String, Void, Bitmap> {
        public BitmapAsyncTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(String... strArr) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(strArr[0]).openConnection();
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                return BitmapFactory.decodeStream(httpURLConnection.getInputStream());
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            super.onPostExecute(bitmap);
            AboutUsDeatilsFragment.this.shareImage(bitmap);
        }
    }

    public Bitmap createBitmapFromView(View view) {
        view.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        view.layout(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        view.draw(canvas);
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareImage(Bitmap bitmap) {
        try {
            File file = new File(getActivity().getCacheDir(), "images");
            file.mkdirs();
            FileOutputStream fileOutputStream = new FileOutputStream(file + "/image.png");
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        Uri uriForFile = FileProvider.getUriForFile(getActivity(), "com.dp.sgp.provider", new File(new File(getActivity().getCacheDir(), "images"), "image.png"));
        if (uriForFile != null) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.addFlags(1);
            intent.setDataAndType(uriForFile, getActivity().getContentResolver().getType(uriForFile));
            intent.putExtra("android.intent.extra.STREAM", uriForFile);
            intent.setType("image/png");
            startActivity(Intent.createChooser(intent, "Choose an app"));
        }
    }

    public void shareText() {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", "Dindoripranit Shree Swami Samarth Seva Marg");
        intent.putExtra("android.intent.extra.TEXT", "https://play.google.com/store/apps/details?id=com.dp.sgp");
        startActivity(Intent.createChooser(intent, getResources().getString(R.string.share_using)));
    }
}
