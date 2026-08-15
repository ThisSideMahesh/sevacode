package com.dp.sgp.View.Fragment.VibhagSwipePages;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.R;
import com.dp.sgp.tutoshowcase.TutoShowcase;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VibhagSwipeDetailsFragment extends Fragment {
    LinearLayout Lyt_Ordernow;
    ImageView backdrop;
    CommonData commonData;
    private DataHandler datHandler;
    private View progressBar;
    TextView textView;
    TextView textView2;
    TextView tv_Order_Now;
    TextView txt_cat1;
    private String url;
    View v;
    private WebView webView;
    String Channel_id = "";
    String lStrSubtitle = "";
    String LstrImage = "";
    String NewNewlStrMSPIN = "";
    String user_id = "";
    String lStrLink = "";
    String strtext = "";
    private List<CommonData> storedata = null;
    private int currentPageId = 0;

    public static Fragment newInstance(List<CommonData> list, int i) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("list", (ArrayList) list);
        bundle.putInt("pos", i);
        VibhagSwipeDetailsFragment vibhagSwipeDetailsFragment = new VibhagSwipeDetailsFragment();
        vibhagSwipeDetailsFragment.setArguments(bundle);
        return vibhagSwipeDetailsFragment;
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
        View viewInflate = layoutInflater.inflate(R.layout.fragment_vibhag_swipe_details, viewGroup, false);
        this.v = viewInflate;
        this.backdrop = (ImageView) viewInflate.findViewById(R.id.backdrop);
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
        this.lStrSubtitle = this.storedata.get(this.currentPageId).getTitle();
        this.strtext = this.storedata.get(this.currentPageId).getDescription();
        this.LstrImage = this.storedata.get(this.currentPageId).getImage();
        this.webView.loadDataWithBaseURL(null, this.strtext, "text/html", Key.STRING_CHARSET_NAME, null);
        LoadImage(this.LstrImage);
        return this.v;
    }

    public void LoadImage(String str) {
        Glide.with(getActivity()).load(str).into(this.backdrop);
    }

    protected void displayTuto() {
        TutoShowcase.from(getActivity()).setListener(new TutoShowcase.Listener() { // from class: com.dp.sgp.View.Fragment.VibhagSwipePages.VibhagSwipeDetailsFragment.2
            @Override // com.dp.sgp.tutoshowcase.TutoShowcase.Listener
            public void onDismissed() {
            }
        }).setContentView(R.layout.tuto_showcase_tuto_sample).setFitsSystemWindows(true).on(R.id.swipeee).addCircle().withBorder().onClick(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.VibhagSwipePages.VibhagSwipeDetailsFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }).on(R.id.swipeee).displaySwipableLeft().delayed(399).animated(true).show();
    }
}
