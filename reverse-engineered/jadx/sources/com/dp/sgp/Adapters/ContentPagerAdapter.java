package com.dp.sgp.Adapters;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.dp.sgp.Constants.PreferenceHelper;
import com.dp.sgp.Model.ListData;
import com.dp.sgp.View.Fragment.SwamiCharitra.ContentFragment;
import com.dp.sgp.View.Fragment.SwamiCharitra.ContentHeaderFragment;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ContentPagerAdapter extends FragmentPagerAdapter {
    private ArrayList<ListData> list;
    private String listType;

    public ContentPagerAdapter(FragmentManager fragmentManager, ArrayList<ListData> arrayList, String str) {
        super(fragmentManager);
        this.list = arrayList;
        this.listType = str;
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.list.size();
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        Bundle bundle = new Bundle();
        bundle.putSerializable(PreferenceHelper.EXTRA_PARAMS_RESULT_KEY, this.list.get(i));
        bundle.putString(PreferenceHelper.EXTRA_PARAMS_LIST_TYPE, this.listType);
        return this.list.get(i).isHeader() ? ContentHeaderFragment.newInstance(bundle) : ContentFragment.newInstance(bundle);
    }

    @Override // android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return "Page " + i;
    }
}
