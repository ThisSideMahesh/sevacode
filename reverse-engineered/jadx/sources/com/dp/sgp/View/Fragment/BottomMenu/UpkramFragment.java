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
import com.dp.sgp.Adapters.NewUpakramAdapter;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.R;
import com.dp.sgp.View.Fragment.Details.AboutUsDeatilsFragment;
import com.dp.sgp.View.Fragment.Vibhag.VibaghFragment;

/* JADX INFO: loaded from: classes.dex */
public class UpkramFragment extends Fragment {
    GridView androidGridView;
    private FragmentManager fragmentManager;
    ProgressDialog progressDialog;
    FragmentTransaction transaction;
    View v;
    String[] gridViewString = {"आयुर्वेदिक हॉस्पिटल", "गोसेवा", "श्री प्रसादालय", "श्री गुरुपीठ", "श्री जनकल्याण", "श्री दत्तधाम"};
    int[] gridViewImageId = {R.drawable.cardayuhospital, R.drawable.card_gaushala, R.drawable.cardprasadalay, R.drawable.cardgurupeeth, R.drawable.cardjankalyan, R.drawable.card_dattdham};
    Fragment fragment = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_upkram, viewGroup, false);
        getActivity().setTitle("उपक्रम");
        NewUpakramAdapter newUpakramAdapter = new NewUpakramAdapter(getActivity(), this.gridViewString, this.gridViewImageId);
        GridView gridView = (GridView) this.v.findViewById(R.id.grid_view_image_text);
        this.androidGridView = gridView;
        gridView.setAdapter((ListAdapter) newUpakramAdapter);
        this.androidGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.UpkramFragment.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (UpkramFragment.this.gridViewString[i].equalsIgnoreCase("१८ विभाग उपक्रम")) {
                    UpkramFragment.this.fragment = new VibaghFragment();
                    UpkramFragment upkramFragment = UpkramFragment.this;
                    upkramFragment.loadFragment(upkramFragment.fragment);
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, "उपक्रम");
                bundle2.putString("subtitle", UpkramFragment.this.gridViewString[i]);
                bundle2.putString("pos", (i + 1) + "");
                AboutUsDeatilsFragment aboutUsDeatilsFragment = new AboutUsDeatilsFragment();
                aboutUsDeatilsFragment.setArguments(bundle2);
                UpkramFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, aboutUsDeatilsFragment).addToBackStack(null).commit();
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
