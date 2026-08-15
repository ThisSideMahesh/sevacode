package com.dp.sgp.View.Fragment.BottomMenu;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.dp.sgp.Adapters.BottomNityaSevaAdapter;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Home.CalTestActivity;
import com.dp.sgp.View.Activity.Mantra.MantraJapActivity;
import com.dp.sgp.View.Fragment.NityaSevaDetails.AartiSangrahaFragment;
import com.dp.sgp.View.Fragment.NityaSevaDetails.AbhjaChandiFragment;
import com.dp.sgp.View.Fragment.NityaSevaDetails.MySevaTabLayoutFragment;
import com.dp.sgp.View.Fragment.NityaSevaDetails.NityaMenuFragment;
import com.dp.sgp.View.Fragment.NityaSevaDetails.SanvarFragment;
import com.dp.sgp.View.Fragment.SwamiCharitra.NityaSevaMenuFragment;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class NityasevaFragment extends Fragment {
    GridView androidGridView;
    private GridView gridview1;
    View v;
    String[] gridViewString = {"नित्यसेवा", "आरती संग्रह", "श्री स्वामी चरित्र", "मंत्र जप", "सणवार", "अब्जचंडी", "मार्गदर्शिका", "माझी सेवा"};
    int[] gridViewImageId = {R.drawable.new_nitya_seva, R.drawable.new_arti_sangrah, R.drawable.new_swamicharitra, R.drawable.new_mantra_jap, R.drawable.new_san_var, R.drawable.new_abjya_chandi, R.drawable.new_margadarshika, R.drawable.new_majhi_seva};
    private ArrayList<HashMap<String, Object>> maplist = new ArrayList<>();

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_nityaseva, viewGroup, false);
        getActivity().setTitle("नित्यसेवा");
        BottomNityaSevaAdapter bottomNityaSevaAdapter = new BottomNityaSevaAdapter(getActivity(), this.gridViewString, this.gridViewImageId);
        GridView gridView = (GridView) this.v.findViewById(R.id.grid_view_image_text);
        this.androidGridView = gridView;
        gridView.setAdapter((ListAdapter) bottomNityaSevaAdapter);
        this.androidGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.NityasevaFragment.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, NityasevaFragment.this.gridViewString[i]);
                if (NityasevaFragment.this.gridViewString[i].equalsIgnoreCase("अब्जचंडी")) {
                    AbhjaChandiFragment abhjaChandiFragment = new AbhjaChandiFragment();
                    abhjaChandiFragment.setArguments(bundle2);
                    NityasevaFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, abhjaChandiFragment).addToBackStack(null).commit();
                    return;
                }
                if (NityasevaFragment.this.gridViewString[i].equalsIgnoreCase("नित्यसेवा")) {
                    NityaMenuFragment nityaMenuFragment = new NityaMenuFragment();
                    nityaMenuFragment.setArguments(bundle2);
                    NityasevaFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, nityaMenuFragment).addToBackStack(null).commit();
                    return;
                }
                if (NityasevaFragment.this.gridViewString[i].equalsIgnoreCase("श्री स्वामी चरित्र")) {
                    NityaSevaMenuFragment nityaSevaMenuFragment = new NityaSevaMenuFragment();
                    nityaSevaMenuFragment.setArguments(bundle2);
                    NityasevaFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, nityaSevaMenuFragment).addToBackStack(null).commit();
                    return;
                }
                if (NityasevaFragment.this.gridViewString[i].equalsIgnoreCase("माझी सेवा")) {
                    MySevaTabLayoutFragment mySevaTabLayoutFragment = new MySevaTabLayoutFragment();
                    mySevaTabLayoutFragment.setArguments(bundle2);
                    NityasevaFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, mySevaTabLayoutFragment).addToBackStack(null).commit();
                    return;
                }
                if (NityasevaFragment.this.gridViewString[i].equalsIgnoreCase("मार्गदर्शिका")) {
                    NityasevaFragment.this.startActivity(new Intent(NityasevaFragment.this.getActivity(), (Class<?>) CalTestActivity.class));
                    return;
                }
                if (NityasevaFragment.this.gridViewString[i].equalsIgnoreCase("आरती संग्रह")) {
                    AartiSangrahaFragment aartiSangrahaFragment = new AartiSangrahaFragment();
                    aartiSangrahaFragment.setArguments(bundle2);
                    NityasevaFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, aartiSangrahaFragment).addToBackStack(null).commit();
                } else if (NityasevaFragment.this.gridViewString[i].equalsIgnoreCase("मंत्र जप")) {
                    NityasevaFragment.this.startActivity(new Intent(NityasevaFragment.this.getActivity(), (Class<?>) MantraJapActivity.class));
                } else if (NityasevaFragment.this.gridViewString[i].equalsIgnoreCase("सणवार")) {
                    SanvarFragment sanvarFragment = new SanvarFragment();
                    sanvarFragment.setArguments(bundle2);
                    NityasevaFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, sanvarFragment).addToBackStack(null).commit();
                }
            }
        });
        return this.v;
    }
}
