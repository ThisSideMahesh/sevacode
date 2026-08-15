package com.dp.sgp.View.Fragment.TestSwipePages;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dp.sgp.Adapters.SwipeContentPagerAdapter;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.R;
import com.dp.sgp.glvars.GlVars;
import com.dp.sgp.viewpagertransformer.StackTransformer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TestSwpieFragment extends Fragment implements ViewPager.OnPageChangeListener {
    private SwipeContentPagerAdapter adapterViewPager;
    private String listType;
    private View rootView;
    private ViewPager vpPager;
    private int currentPageId = 0;
    private List<CommonData> storedata = null;

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.rootView = layoutInflater.inflate(R.layout.fragment_test_swpie, viewGroup, false);
        getActivity().setTitle(GlVars.Title);
        this.vpPager = (ViewPager) this.rootView.findViewById(R.id.vpPager);
        this.storedata = new ArrayList();
        if (getArguments() != null) {
            this.currentPageId = getArguments().getInt("position");
            this.storedata = getArguments().getParcelableArrayList("Data");
        }
        SwipeContentPagerAdapter swipeContentPagerAdapter = new SwipeContentPagerAdapter(getChildFragmentManager(), this.storedata);
        this.adapterViewPager = swipeContentPagerAdapter;
        this.vpPager.setAdapter(swipeContentPagerAdapter);
        this.vpPager.addOnPageChangeListener(this);
        this.vpPager.setPageTransformer(true, new StackTransformer());
        this.vpPager.setCurrentItem(this.currentPageId);
        return this.rootView;
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        this.currentPageId = i;
    }
}
