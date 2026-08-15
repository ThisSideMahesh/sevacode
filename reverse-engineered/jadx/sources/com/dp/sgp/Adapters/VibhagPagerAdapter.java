package com.dp.sgp.Adapters;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.View.Fragment.VibhagSwipePages.VibhagSwipeDetailsFragment;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VibhagPagerAdapter extends FragmentPagerAdapter {
    private List<CommonData> list;
    private String listType;

    public VibhagPagerAdapter(FragmentManager fragmentManager, List<CommonData> list) {
        super(fragmentManager);
        this.list = list;
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return VibhagSwipeDetailsFragment.newInstance(this.list, i);
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.list.size();
    }
}
