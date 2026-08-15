package com.dp.sgp.View.Fragment.VibhagSwipePages;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dp.sgp.Adapters.VibhagPagerAdapter;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.R;
import com.dp.sgp.viewpagertransformer.StackTransformer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VibhagPagerFragment extends Fragment implements ViewPager.OnPageChangeListener {
    private VibhagPagerAdapter adapterViewPager;
    private String listType;
    private View rootView;
    private ViewPager vpPager;
    private int currentPageId = 0;
    private List<CommonData> storedata = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_vibhag_pager, viewGroup, false);
        this.rootView = viewInflate;
        this.vpPager = (ViewPager) viewInflate.findViewById(R.id.vpPager);
        this.storedata = new ArrayList();
        if (getArguments() != null) {
            this.currentPageId = getArguments().getInt("position");
            this.storedata = getArguments().getParcelableArrayList("Data");
        }
        VibhagPagerAdapter vibhagPagerAdapter = new VibhagPagerAdapter(getChildFragmentManager(), this.storedata);
        this.adapterViewPager = vibhagPagerAdapter;
        this.vpPager.setAdapter(vibhagPagerAdapter);
        this.vpPager.addOnPageChangeListener(this);
        this.vpPager.setPageTransformer(true, new StackTransformer());
        this.vpPager.setCurrentItem(this.currentPageId);
        return this.rootView;
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        Log.d("onPageScrolled", i + "");
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        this.currentPageId = i;
        Log.d("onPageSelected", i + "");
        getActivity().setTitle(this.storedata.get(this.currentPageId).getTitle());
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        Log.d("onPageScrollStateChanged", i + "");
    }
}
