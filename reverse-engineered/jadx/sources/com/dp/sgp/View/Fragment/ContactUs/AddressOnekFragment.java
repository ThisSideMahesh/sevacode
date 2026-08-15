package com.dp.sgp.View.Fragment.ContactUs;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class AddressOnekFragment extends Fragment {
    private TextView floating_action_button;
    boolean markerClicked;
    private View rootView;
    private RelativeLayout swipable;
    private TextView tvAddress;
    private TextView tvContact;
    private TextView tvEmail;
    private TextView tvHeader;
    private TextView tvNashik;
    WebView webView;
    private int selected = 0;
    private int DINDORI = 0;
    private int NASHIK = 1;

    public static AddressOnekFragment newInstance() {
        AddressOnekFragment addressOnekFragment = new AddressOnekFragment();
        addressOnekFragment.setArguments(new Bundle());
        return addressOnekFragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getArguments();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_address_onek, viewGroup, false);
        this.rootView = viewInflate;
        TextView textView = (TextView) viewInflate.findViewById(R.id.floating_action_button);
        this.floating_action_button = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.ContactUs.AddressOnekFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str = "http://maps.google.com/maps?saddr=" + Double.valueOf(19.937996d) + "," + Double.valueOf(73.543768d);
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.SUBJECT", AddressOnekFragment.this.getResources().getString(R.string.nashik_header));
                intent.putExtra("android.intent.extra.TEXT", str);
                AddressOnekFragment.this.startActivity(Intent.createChooser(intent, "Share via"));
            }
        });
        return this.rootView;
    }
}
