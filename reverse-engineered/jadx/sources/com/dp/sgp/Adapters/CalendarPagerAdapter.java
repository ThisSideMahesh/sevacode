package com.dp.sgp.Adapters;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.dp.sgp.Constants.PreferenceHelper;
import com.dp.sgp.View.Fragment.Calendar.CalendarFragment;
import com.dp.sgp.calendar.CalendarPagerData;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CalendarPagerAdapter extends FragmentPagerAdapter {
    private ArrayList<CalendarPagerData> list;

    public CalendarPagerAdapter(FragmentManager fragmentManager, ArrayList<CalendarPagerData> arrayList) {
        super(fragmentManager);
        this.list = arrayList;
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.list.size();
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        Bundle bundle = new Bundle();
        bundle.putSerializable(PreferenceHelper.EXTRA_PARAMS_RESULT_KEY, this.list.get(i));
        return CalendarFragment.newInstance(bundle);
    }

    @Override // android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return "Page " + i;
    }
}
