package com.dp.sgp.View.Fragment.Details;

import android.app.ProgressDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.v4.app.Fragment;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.bumptech.glide.Glide;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.Model.HomeResponse.HomeData;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.Model.ProductDetailsResponse;
import com.dp.sgp.R;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class ProductDetailsFragment extends Fragment {
    LinearLayout Lyt_Ordernow;
    ImageView backdrop;
    ConnectionDetector connectionDetector;
    HomeData data;
    DataHandler dataHandler;
    String message;
    private View progressBar;
    ProgressDialog progressDialog;
    private RecyclerView recyclerView;
    SendCommonBody sendCommonBody;
    String status;
    TextView textView;
    TextView textView2;
    TextView tv_Order_Now;
    View v;
    private WebView webView;
    String lStrText = "The Dindori Pranit model of service for the downtrodden was laid down directly by Bhagvan Shree Swami Samarth Maharaj (1149-1878). This work was carried forward by Sadguru Narayandasji Pithle Maharaj (1878-1974), Sadguru Moredada (1922-1988) and is being run now by His Holiness His Holiness Gurumauli well over four decades now.\n\n  For the past two decades, His Holiness Gurmauli has been executing a unique 18-point Rural Development Programme (RDP) from Shree Gurupeeth, Trimbakeshwar, that conducts practical workshops, study tours, seminars and training for one and all, free of cost, all over India.\n\n  The aim is to raise a new Indian, proud of his or her culture and with a scientific bent of mind and confident to face the future. The SevaMarg has achieved this to a great extent and hundreds of social and non-governmental organizations have recognized this work and honoured His Holiness His Holiness Gurumauli for the achievements.\n\n  This counselling sessions that are essentially a man-&-mind healing technique run across more than 5000 centres of Dindori Pranit in India and abroad take into consideration the spiritual, social, educational and ancestral background of the troubled and unhappy solution seeker and suggests him or her simple easy-to-do self-help techniques in the above fields.\n\n\n  Millions of distressed souls visit these centres every day. Some want to quit alcohol or other vices,  others a matrimonial match while some others are desperately trying to save a home that is falling apart. A huge number is of highly educated youth who find themselves lacking in contentment despite the perks of an elite modern-day life. There are others who want success in services as also an equally high number that wants to pull-out loss-making industries from the pit.\n\n  The link that unites these all is faith & spirituality. And the missing link is direction, self-esteem and a sense of purpose in life. His Holiness His Holiness Gurumauli believes that all human beings, including those with virtues & vices are essentially noble souls; it’s the lack of direction, self-esteem and the sense of purpose in life that divides them in shades of grey. Depending on what way one chooses while leading one’s life, the choice also gets divided between peace, happiness & contentment or decay, disease and disenchantment.\n\n  Dindori Pranit has showered bliss in the lives of millions over the past 100 years by imbibing value education in young minds raising an entire generation free from vice and abuse, trained millions of farmers into organic farming & modern techniques of agriculture, built bonds of communal harmony by enhancing interpersonal faith and mutual respect through various activities, conducted successful research to find cure for dreaded diseases like cancer, conducted millions of no-dowry marriages and de-addicted an equally large number of people.";
    String strtext = "";
    String[] gridViewString = {"सर्वत लोकप्रिय", "ससर्वत लोकप्रिय", "पूजा साहित्य", "पूजा साहित्य", "आयुर्वेद", "आयुर्वेद"};
    String device_token = "";
    String user_id = "";
    String lStrLink = "";
    String Type = "0";
    String id = "";
    private List<CommonData> dataList = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.product_web_details, viewGroup, false);
        this.v = viewInflate;
        this.backdrop = (ImageView) viewInflate.findViewById(R.id.backdrop);
        this.Lyt_Ordernow = (LinearLayout) this.v.findViewById(R.id.tvMyArticle);
        Bundle arguments = getArguments();
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
        this.backdrop = (ImageView) this.v.findViewById(R.id.backdrop);
        this.sendCommonBody = new SendCommonBody();
        DataHandler dataHandler = new DataHandler(getActivity());
        this.dataHandler = dataHandler;
        this.device_token = dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.dataList = new ArrayList();
        if (arguments != null) {
            this.strtext = getArguments().getString(Key.MESSAGE);
            this.id = getArguments().getString("pos");
            getActivity().setTitle(this.strtext);
        }
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.sendCommonBody.setType(this.Type);
        this.sendCommonBody.setId(this.id);
        ConnectionDetector connectionDetector = new ConnectionDetector(getActivity());
        this.connectionDetector = connectionDetector;
        if (connectionDetector.isConnectingToInternet()) {
            AboutUs();
        } else {
            Toast.makeText(getActivity(), getResources().getString(R.string.no_internet), 0).show();
        }
        this.Lyt_Ordernow.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.Details.ProductDetailsFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ProductDetailsFragment.this.lStrLink.equalsIgnoreCase("")) {
                    Toast.makeText(ProductDetailsFragment.this.getActivity(), "Link will be available shortly ", 0).show();
                } else {
                    ProductDetailsFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(ProductDetailsFragment.this.lStrLink)));
                }
            }
        });
        return this.v;
    }

    private void initCollapsingToolbar(View view) {
        final CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) view.findViewById(R.id.collapsing_toolbar);
        collapsingToolbarLayout.setTitle(" ");
        AppBarLayout appBarLayout = (AppBarLayout) view.findViewById(R.id.appbar);
        appBarLayout.setExpanded(true);
        appBarLayout.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.dp.sgp.View.Fragment.Details.ProductDetailsFragment.2
            boolean isShow = false;
            int scrollRange = -1;

            @Override // android.support.design.widget.AppBarLayout.OnOffsetChangedListener, android.support.design.widget.AppBarLayout.BaseOnOffsetChangedListener
            public void onOffsetChanged(AppBarLayout appBarLayout2, int i) {
                if (this.scrollRange == -1) {
                    this.scrollRange = appBarLayout2.getTotalScrollRange();
                }
                if (this.scrollRange + i == 0) {
                    collapsingToolbarLayout.setTitle(ProductDetailsFragment.this.getString(R.string.app_name));
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
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).ProductDetails(this.sendCommonBody, new Callback<ProductDetailsResponse>() { // from class: com.dp.sgp.View.Fragment.Details.ProductDetailsFragment.3
            @Override // retrofit.Callback
            public void success(ProductDetailsResponse productDetailsResponse, Response response) {
                if (productDetailsResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(productDetailsResponse));
                    ProductDetailsFragment.this.message = productDetailsResponse.getMessage();
                    ProductDetailsFragment.this.status = productDetailsResponse.getStatus();
                    if (productDetailsResponse.getData() != null) {
                        if (productDetailsResponse.getData().getImage() != null && !productDetailsResponse.getData().getImage().equalsIgnoreCase("")) {
                            ProductDetailsFragment.this.LoadImage(productDetailsResponse.getData().getImage());
                        }
                        ProductDetailsFragment.this.lStrLink = productDetailsResponse.getData().getLinks();
                        ProductDetailsFragment.this.webView.loadDataWithBaseURL(null, productDetailsResponse.getData().getDescription(), "text/html", com.bumptech.glide.load.Key.STRING_CHARSET_NAME, null);
                        if (ProductDetailsFragment.this.lStrLink.equalsIgnoreCase("")) {
                            ProductDetailsFragment.this.Lyt_Ordernow.setVisibility(8);
                        } else {
                            ProductDetailsFragment.this.Lyt_Ordernow.setVisibility(0);
                        }
                    }
                }
                ProductDetailsFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                ProductDetailsFragment.this.progressDialog.dismiss();
            }
        });
    }

    public void LoadImage(String str) {
        Glide.with(getActivity()).load(str).into(this.backdrop);
    }
}
