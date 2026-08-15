package com.dp.sgp.View.Fragment.BottomMenu;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.dp.sgp.Adapters.UpakramGridViewActivity;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.R;
import com.dp.sgp.View.Fragment.Details.AboutUsDeatilsFragment;
import com.dp.sgp.View.Fragment.Vibhag.VibaghFragment;

/* JADX INFO: loaded from: classes.dex */
public class AboutusFragment extends Fragment {
    GridView androidGridView;
    private FragmentManager fragmentManager;
    ProgressDialog progressDialog;
    FragmentTransaction transaction;
    View v;
    String[] gridViewString = {"श्री गुरुपीठ", "दिंडोरी प्रणित सेवा मार्ग", "गुरुप्रणाली", "१८ विभाग उपक्रम"};
    int[] gridViewImageId = {R.drawable.cardgurupeeth, R.drawable.card_dindoripranit, R.drawable.card_gurupranali, R.drawable.header_side_nav};
    Fragment fragment = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_aboutus, viewGroup, false);
        getActivity().setTitle("आमच्याविषयी");
        UpakramGridViewActivity upakramGridViewActivity = new UpakramGridViewActivity(getActivity(), this.gridViewString, this.gridViewImageId);
        GridView gridView = (GridView) this.v.findViewById(R.id.grid_view_image_text);
        this.androidGridView = gridView;
        gridView.setAdapter((ListAdapter) upakramGridViewActivity);
        this.androidGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.AboutusFragment.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (AboutusFragment.this.gridViewString[i].equalsIgnoreCase("१८ विभाग उपक्रम")) {
                    AboutusFragment.this.fragment = new VibaghFragment();
                    AboutusFragment aboutusFragment = AboutusFragment.this;
                    aboutusFragment.loadFragment(aboutusFragment.fragment);
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, AboutusFragment.this.gridViewString[i]);
                bundle2.putString("subtitle", AboutusFragment.this.gridViewString[i]);
                bundle2.putString("pos", (i + 1) + "");
                AboutUsDeatilsFragment aboutUsDeatilsFragment = new AboutUsDeatilsFragment();
                aboutUsDeatilsFragment.setArguments(bundle2);
                AboutusFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, aboutUsDeatilsFragment).addToBackStack(null).commit();
            }
        });
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadFragment(Fragment fragment) {
        FragmentTransaction fragmentTransactionBeginTransaction = getActivity().getSupportFragmentManager().beginTransaction();
        this.transaction = fragmentTransactionBeginTransaction;
        fragmentTransactionBeginTransaction.replace(R.id.frame_container, fragment);
        this.transaction.addToBackStack(null);
        this.transaction.commit();
    }
}
