package com.dp.sgp.View.Fragment.SwamiCharitra;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.Constants.PreferenceHelper;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class NityaSevaMenuFragment extends Fragment {
    RelativeLayout lyt_offline_mode;
    RelativeLayout lyt_online_mode;
    View rootview;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.rootview = layoutInflater.inflate(R.layout.fragment_nitya_seva_menu, viewGroup, false);
        getActivity().setTitle("श्री स्वामी चरित्र");
        this.lyt_online_mode = (RelativeLayout) this.rootview.findViewById(R.id.lyt_online_mode);
        this.lyt_offline_mode = (RelativeLayout) this.rootview.findViewById(R.id.lyt_offline_mode);
        this.lyt_online_mode.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.NityaSevaMenuFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, "श्री स्वामी चरित्र ऑनलाइन");
                SwamiCharitraFragment swamiCharitraFragment = new SwamiCharitraFragment();
                swamiCharitraFragment.setArguments(bundle2);
                NityaSevaMenuFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, swamiCharitraFragment).addToBackStack(null).commit();
            }
        });
        this.lyt_offline_mode.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.NityaSevaMenuFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Bundle bundle2 = new Bundle();
                bundle2.putString(PreferenceHelper.EXTRA_PARAMS_RESULT_KEY, PreferenceHelper.LIST_SWAMI_CHARITRA_700);
                OfflineSwamiCharitraFragment offlineSwamiCharitraFragment = new OfflineSwamiCharitraFragment();
                offlineSwamiCharitraFragment.setArguments(bundle2);
                NityaSevaMenuFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, offlineSwamiCharitraFragment).addToBackStack(null).commit();
            }
        });
        return this.rootview;
    }
}
