package com.dp.sgp.View.Fragment.ContactUs;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class AddressTwoFragment extends Fragment {
    boolean Appstatus;
    ConnectionDetector connectionDetector;
    TextView floating_action_button;
    boolean markerClicked;
    private View rootView;
    private RelativeLayout swipable;
    private TextView tvAddress;
    private TextView tvContact;
    private TextView tvDindori;
    private TextView tvEmail;
    private TextView tvHeader;
    private TextView tvNashik;
    private int selected = 0;
    private int DINDORI = 0;
    private int NASHIK = 1;
    String lStrMSPIN = "";
    String fromwhere = "";
    String courseid = "";
    String SubCourseid = "";
    String coursename = "";
    String lStrToken = "";
    String lStrCaptureImageSend = "";
    long totalSize = 0;
    private Integer emoji_id = 0;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_address_two, viewGroup, false);
        this.rootView = viewInflate;
        TextView textView = (TextView) viewInflate.findViewById(R.id.floating_action_button);
        this.floating_action_button = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.ContactUs.AddressTwoFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str = "http://maps.google.com/maps?saddr=" + Double.valueOf(20.203555d) + "," + Double.valueOf(73.828447d);
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.SUBJECT", AddressTwoFragment.this.getResources().getString(R.string.nashik_header));
                intent.putExtra("android.intent.extra.TEXT", str);
                AddressTwoFragment.this.startActivity(Intent.createChooser(intent, "Share via"));
            }
        });
        return this.rootView;
    }
}
