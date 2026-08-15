package com.dp.sgp.View.Fragment.NityaSevaDetails;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.bumptech.glide.load.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.R;
import com.dp.sgp.database.DatabaseHelperClass;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NityaSevaCommonWebFragment extends Fragment {
    CommonData commonData;
    private DataHandler datHandler;
    LinearLayout panelIconLeftreversemain;
    LinearLayout panelIconRightmain;
    private View progressBar;
    TextView txt_cat1;
    private String url;
    View v;
    private WebView webView;
    String Channel_id = "";
    String lStrSubtitle = "";
    String lStrtitle = "";
    String NewNewlStrMSPIN = "";
    String user_id = "";
    String lStrLink = "";
    String strtext = "";
    private List<CommonData> storedata = null;
    private int currentPageId = 0;

    static /* synthetic */ int access$008(NityaSevaCommonWebFragment nityaSevaCommonWebFragment) {
        int i = nityaSevaCommonWebFragment.currentPageId;
        nityaSevaCommonWebFragment.currentPageId = i + 1;
        return i;
    }

    static /* synthetic */ int access$010(NityaSevaCommonWebFragment nityaSevaCommonWebFragment) {
        int i = nityaSevaCommonWebFragment.currentPageId;
        nityaSevaCommonWebFragment.currentPageId = i - 1;
        return i;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_nitya_seva_common_web, viewGroup, false);
        this.v = viewInflate;
        this.panelIconRightmain = (LinearLayout) viewInflate.findViewById(R.id.panelIconRightmain);
        this.panelIconLeftreversemain = (LinearLayout) this.v.findViewById(R.id.panelIconLeftreversemain);
        this.txt_cat1 = (TextView) this.v.findViewById(R.id.txt_completed);
        this.storedata = new ArrayList();
        Bundle arguments = getArguments();
        this.webView = (WebView) this.v.findViewById(R.id.web_view);
        this.progressBar = this.v.findViewById(R.id.progress_bar);
        this.commonData = new CommonData();
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.clearCache(true);
        this.webView.clearHistory();
        this.webView.getSettings().setSupportZoom(true);
        this.webView.getSettings().setBuiltInZoomControls(true);
        this.webView.getSettings().setDisplayZoomControls(false);
        this.webView.setBackgroundColor(0);
        this.webView.setBackgroundResource(R.drawable.shriyantra);
        CookieManager.getInstance().removeAllCookie();
        if (arguments != null) {
            this.lStrtitle = getArguments().getString(DatabaseHelperClass.TITLE);
            this.currentPageId = getArguments().getInt("position");
            ArrayList parcelableArrayList = getArguments().getParcelableArrayList("Data");
            this.storedata = parcelableArrayList;
            this.lStrSubtitle = ((CommonData) parcelableArrayList.get(this.currentPageId)).getTitle();
            this.strtext = this.storedata.get(this.currentPageId).getDescription();
            getActivity().setTitle(this.lStrtitle);
            this.txt_cat1.setText(this.lStrSubtitle);
            this.webView.loadDataWithBaseURL(null, this.strtext, "text/html", Key.STRING_CHARSET_NAME, null);
        }
        this.panelIconRightmain.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.NityaSevaCommonWebFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NityaSevaCommonWebFragment.this.currentPageId < NityaSevaCommonWebFragment.this.storedata.size() - 1) {
                    NityaSevaCommonWebFragment.access$008(NityaSevaCommonWebFragment.this);
                    NityaSevaCommonWebFragment nityaSevaCommonWebFragment = NityaSevaCommonWebFragment.this;
                    nityaSevaCommonWebFragment.lStrSubtitle = ((CommonData) nityaSevaCommonWebFragment.storedata.get(NityaSevaCommonWebFragment.this.currentPageId)).getTitle();
                    NityaSevaCommonWebFragment nityaSevaCommonWebFragment2 = NityaSevaCommonWebFragment.this;
                    nityaSevaCommonWebFragment2.strtext = ((CommonData) nityaSevaCommonWebFragment2.storedata.get(NityaSevaCommonWebFragment.this.currentPageId)).getDescription();
                    NityaSevaCommonWebFragment.this.getActivity().setTitle(NityaSevaCommonWebFragment.this.lStrtitle);
                    NityaSevaCommonWebFragment.this.txt_cat1.setText(NityaSevaCommonWebFragment.this.lStrSubtitle);
                    NityaSevaCommonWebFragment.this.webView.loadDataWithBaseURL(null, NityaSevaCommonWebFragment.this.strtext, "text/html", Key.STRING_CHARSET_NAME, null);
                    return;
                }
                Toast.makeText(NityaSevaCommonWebFragment.this.getActivity(), "आगे कुछ भी नहीं हे", 0).show();
            }
        });
        this.panelIconLeftreversemain.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.NityaSevaCommonWebFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NityaSevaCommonWebFragment.this.currentPageId > 0) {
                    NityaSevaCommonWebFragment.access$010(NityaSevaCommonWebFragment.this);
                    NityaSevaCommonWebFragment nityaSevaCommonWebFragment = NityaSevaCommonWebFragment.this;
                    nityaSevaCommonWebFragment.lStrSubtitle = ((CommonData) nityaSevaCommonWebFragment.storedata.get(NityaSevaCommonWebFragment.this.currentPageId)).getTitle();
                    NityaSevaCommonWebFragment nityaSevaCommonWebFragment2 = NityaSevaCommonWebFragment.this;
                    nityaSevaCommonWebFragment2.strtext = ((CommonData) nityaSevaCommonWebFragment2.storedata.get(NityaSevaCommonWebFragment.this.currentPageId)).getDescription();
                    NityaSevaCommonWebFragment.this.getActivity().setTitle(NityaSevaCommonWebFragment.this.lStrtitle);
                    NityaSevaCommonWebFragment.this.txt_cat1.setText(NityaSevaCommonWebFragment.this.lStrSubtitle);
                    NityaSevaCommonWebFragment.this.webView.loadDataWithBaseURL(null, NityaSevaCommonWebFragment.this.strtext, "text/html", Key.STRING_CHARSET_NAME, null);
                    return;
                }
                Toast.makeText(NityaSevaCommonWebFragment.this.getActivity(), "पीछे कुछ भी नहीं हे", 0).show();
            }
        });
        return this.v;
    }
}
