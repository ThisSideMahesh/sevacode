package com.dp.sgp.Adapters;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.dp.sgp.View.Fragment.NityaSevaDetails.SevaMonthlyFragment;
import com.dp.sgp.View.Fragment.NityaSevaDetails.SevaWeeklyFragment;

/* JADX INFO: loaded from: classes.dex */
public class TabAdapter extends FragmentPagerAdapter {
    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return 3;
    }

    @Override // android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        if (i == 0) {
            return "Weekly";
        }
        if (i == 1) {
            return "Mnthly";
        }
        return null;
    }

    public TabAdapter(FragmentManager fragmentManager) {
        super(fragmentManager);
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        if (i == 0) {
            return new SevaWeeklyFragment();
        }
        if (i == 1) {
            return new SevaMonthlyFragment();
        }
        return null;
    }
}
