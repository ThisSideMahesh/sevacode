package com.dp.sgp.View.Fragment.TestSwipePages;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.load.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.R;
import com.dp.sgp.glvars.GlVars;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TestSwpieDetailsFragment extends Fragment {
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

    static /* synthetic */ int access$008(TestSwpieDetailsFragment testSwpieDetailsFragment) {
        int i = testSwpieDetailsFragment.currentPageId;
        testSwpieDetailsFragment.currentPageId = i + 1;
        return i;
    }

    static /* synthetic */ int access$010(TestSwpieDetailsFragment testSwpieDetailsFragment) {
        int i = testSwpieDetailsFragment.currentPageId;
        testSwpieDetailsFragment.currentPageId = i - 1;
        return i;
    }

    public static Fragment newInstance(List<CommonData> list, int i) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("list", (ArrayList) list);
        bundle.putInt("pos", i);
        TestSwpieDetailsFragment testSwpieDetailsFragment = new TestSwpieDetailsFragment();
        testSwpieDetailsFragment.setArguments(bundle);
        return testSwpieDetailsFragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.storedata = getArguments().getParcelableArrayList("list");
            this.currentPageId = getArguments().getInt("pos");
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_test_swpie_details, viewGroup, false);
        getActivity().setTitle(GlVars.Title);
        this.txt_cat1 = (TextView) this.v.findViewById(R.id.txt_completed);
        this.panelIconLeftreversemain = (LinearLayout) this.v.findViewById(R.id.panelIconLeftreversemain);
        this.panelIconRightmain = (LinearLayout) this.v.findViewById(R.id.panelIconRightmain);
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
        this.lStrSubtitle = this.storedata.get(this.currentPageId).getTitle();
        this.strtext = this.storedata.get(this.currentPageId).getDescription();
        this.txt_cat1.setText(this.lStrSubtitle);
        this.webView.loadDataWithBaseURL(null, this.strtext, "text/html", Key.STRING_CHARSET_NAME, null);
        this.panelIconLeftreversemain.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.TestSwipePages.TestSwpieDetailsFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TestSwpieDetailsFragment.this.currentPageId > 0) {
                    TestSwpieDetailsFragment.access$010(TestSwpieDetailsFragment.this);
                }
                TestSwpieDetailsFragment testSwpieDetailsFragment = TestSwpieDetailsFragment.this;
                testSwpieDetailsFragment.lStrSubtitle = ((CommonData) testSwpieDetailsFragment.storedata.get(TestSwpieDetailsFragment.this.currentPageId)).getTitle();
                TestSwpieDetailsFragment testSwpieDetailsFragment2 = TestSwpieDetailsFragment.this;
                testSwpieDetailsFragment2.strtext = ((CommonData) testSwpieDetailsFragment2.storedata.get(TestSwpieDetailsFragment.this.currentPageId)).getDescription();
                TestSwpieDetailsFragment.this.txt_cat1.setText(TestSwpieDetailsFragment.this.lStrSubtitle);
                TestSwpieDetailsFragment.this.webView.loadDataWithBaseURL(null, TestSwpieDetailsFragment.this.strtext, "text/html", Key.STRING_CHARSET_NAME, null);
            }
        });
        this.panelIconRightmain.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.TestSwipePages.TestSwpieDetailsFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TestSwpieDetailsFragment.this.currentPageId < TestSwpieDetailsFragment.this.storedata.size() - 1) {
                    TestSwpieDetailsFragment.access$008(TestSwpieDetailsFragment.this);
                }
                TestSwpieDetailsFragment testSwpieDetailsFragment = TestSwpieDetailsFragment.this;
                testSwpieDetailsFragment.lStrSubtitle = ((CommonData) testSwpieDetailsFragment.storedata.get(TestSwpieDetailsFragment.this.currentPageId)).getTitle();
                TestSwpieDetailsFragment testSwpieDetailsFragment2 = TestSwpieDetailsFragment.this;
                testSwpieDetailsFragment2.strtext = ((CommonData) testSwpieDetailsFragment2.storedata.get(TestSwpieDetailsFragment.this.currentPageId)).getDescription();
                TestSwpieDetailsFragment.this.txt_cat1.setText(TestSwpieDetailsFragment.this.lStrSubtitle);
                TestSwpieDetailsFragment.this.webView.loadDataWithBaseURL(null, TestSwpieDetailsFragment.this.strtext, "text/html", Key.STRING_CHARSET_NAME, null);
            }
        });
        return this.v;
    }
}
