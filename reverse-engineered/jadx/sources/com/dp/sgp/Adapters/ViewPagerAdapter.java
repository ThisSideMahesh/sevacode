package com.dp.sgp.Adapters;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ViewPagerAdapter extends FragmentPagerAdapter {
    private final List<Fragment> mFragmentList;
    private final List<String> mFragmentTitleList;

    public ViewPagerAdapter(FragmentManager fragmentManager) {
        super(fragmentManager);
        this.mFragmentList = new ArrayList();
        this.mFragmentTitleList = new ArrayList();
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return this.mFragmentList.get(i);
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.mFragmentList.size();
    }

    public void addFragment(Fragment fragment, String str) {
        this.mFragmentList.add(fragment);
        this.mFragmentTitleList.add(str);
    }

    public void clearFragments() {
        this.mFragmentList.clear();
        this.mFragmentTitleList.clear();
    }

    @Override // android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return this.mFragmentTitleList.get(i);
    }
}
