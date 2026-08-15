package com.dp.sgp.View.Fragment.BottomMenu;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class ContactUSFragment extends Fragment {
    View v;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_contact_u_s, viewGroup, false);
        getActivity().setTitle("आमच्याशी संपर्क साधा");
        return this.v;
    }
}
