package com.dp.sgp.View.Fragment.ContactUs;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import com.dp.sgp.Adapters.TabAdapter;
import com.dp.sgp.Adapters.ViewPagerAdapter;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ContactUsTabFragment extends Fragment {
    private TabAdapter adapter;
    private Button btnFollow;
    ConnectionDetector connectionDetector;
    private DataHandler datHandler;
    private Activity mActivity;
    ProgressDialog myProgressDialog;
    SharedPreferences prefs;
    RelativeLayout rlTop;
    View rootView;
    AddressTwoFragment sevaMonthlyFragment;
    AddressOnekFragment sevaWeeklyFragment;
    private TabLayout tab;
    private ViewPager viewPager;
    private List<String> result_array = null;
    String USerImage = "";
    String strtext = "";

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.rootView = layoutInflater.inflate(R.layout.fragment_contact_us_tab, viewGroup, false);
        getActivity().setTitle("संपर्क");
        this.sevaWeeklyFragment = new AddressOnekFragment();
        this.sevaMonthlyFragment = new AddressTwoFragment();
        this.viewPager = (ViewPager) this.rootView.findViewById(R.id.viewPager);
        TabLayout tabLayout = (TabLayout) this.rootView.findViewById(R.id.tabLayout);
        this.tab = tabLayout;
        tabLayout.setupWithViewPager(this.viewPager);
        this.tab.setSelectedTabIndicatorColor(Color.parseColor("#DC2A42"));
        this.tab.setSelectedTabIndicatorHeight((int) (getResources().getDisplayMetrics().density * 2.0f));
        setupViewPager(this.viewPager);
        this.viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.dp.sgp.View.Fragment.ContactUs.ContactUsTabFragment.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                ContactUsTabFragment.this.viewPager.setCurrentItem(i, false);
            }
        });
        this.tab.setOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.dp.sgp.View.Fragment.ContactUs.ContactUsTabFragment.2
            @Override // android.support.design.widget.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }

            @Override // android.support.design.widget.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // android.support.design.widget.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                ContactUsTabFragment.this.viewPager.setCurrentItem(tab.getPosition());
            }
        });
        return this.rootView;
    }

    private void setupViewPager(ViewPager viewPager) {
        ViewPagerAdapter viewPagerAdapter = new ViewPagerAdapter(getChildFragmentManager());
        this.sevaWeeklyFragment = new AddressOnekFragment();
        this.sevaMonthlyFragment = new AddressTwoFragment();
        viewPagerAdapter.addFragment(this.sevaWeeklyFragment, "श्री स्वामी समर्थ गुरुपीठ");
        viewPagerAdapter.addFragment(this.sevaMonthlyFragment, "श्री स्वामी समर्थ प्रधान केंद्र, दिंडोरी");
        viewPager.setAdapter(viewPagerAdapter);
        viewPager.setOffscreenPageLimit(2);
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mActivity = activity;
    }
}
