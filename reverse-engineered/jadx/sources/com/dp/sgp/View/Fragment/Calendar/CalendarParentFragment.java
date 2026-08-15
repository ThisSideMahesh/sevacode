package com.dp.sgp.View.Fragment.Calendar;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.BottomNavigationView;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.dp.sgp.Adapters.CalendarPagerAdapter;
import com.dp.sgp.Base.BaseFragment;
import com.dp.sgp.R;
import com.dp.sgp.bottomsheets.RahuKalBottomSheet;
import com.dp.sgp.bottomsheets.SimpleTextBottomSheet;
import com.dp.sgp.calendar.CalendarPagerData;
import com.dp.sgp.calendar.DateUtils;
import com.dp.sgp.util.BottomNavigationViewEx;
import com.dp.sgp.util.ShowCaseManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CalendarParentFragment extends BaseFragment implements View.OnClickListener, ViewPager.OnPageChangeListener {
    private CalendarPagerAdapter adapterViewPager;
    private BottomNavigationViewEx bottomNavigationViewEx;
    private ImageView ivNext;
    private ImageView ivPrev;
    private String[] monthTitles;
    private int pageMonth;
    private int pageYear;
    private View rootView;
    private TextView tvMonthTitle;
    private ViewPager vpPager;
    private String[] yearTitles;
    private String[] years;
    private int numberOfMonth = 12;
    private int currentPageId = 0;
    private ArrayList<CalendarPagerData> calendarPagerDatas = new ArrayList<>();

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    @Override // com.dp.sgp.Base.BaseFragment
    public void reloadData() {
    }

    public static CalendarParentFragment newInstance() {
        CalendarParentFragment calendarParentFragment = new CalendarParentFragment();
        calendarParentFragment.setArguments(new Bundle());
        return calendarParentFragment;
    }

    @Override // com.dp.sgp.Base.BaseFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getArguments();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.rootView = getrootView(layoutInflater.inflate(R.layout.fragment_calendar_parent, viewGroup, false));
        this.monthTitles = getResources().getStringArray(R.array.month_array);
        this.years = getResources().getStringArray(R.array.year_array);
        this.yearTitles = getResources().getStringArray(R.array.year_array_marathi);
        findView();
        new LoadPagerData().execute(new Void[0]);
        return this.rootView;
    }

    private void findView() {
        this.rootView.findViewById(R.id.root).findViewById(R.id.root).setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.Calendar.CalendarParentFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.tvMonthTitle = (TextView) this.rootView.findViewById(R.id.tvMonthTitle);
        this.ivPrev = (ImageView) this.rootView.findViewById(R.id.ivPrev);
        this.ivNext = (ImageView) this.rootView.findViewById(R.id.ivNext);
        this.vpPager = (ViewPager) this.rootView.findViewById(R.id.vpPager);
        BottomNavigationViewEx bottomNavigationViewEx = (BottomNavigationViewEx) this.rootView.findViewById(R.id.bottom_view);
        this.bottomNavigationViewEx = bottomNavigationViewEx;
        bottomNavigationViewEx.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: com.dp.sgp.View.Fragment.Calendar.CalendarParentFragment.2
            @Override // android.support.design.widget.BottomNavigationView.OnNavigationItemSelectedListener
            public boolean onNavigationItemSelected(MenuItem menuItem) {
                Bundle bundle = new Bundle();
                bundle.putInt("YEAR", CalendarParentFragment.this.pageYear);
                bundle.putInt("MONTH", CalendarParentFragment.this.pageMonth);
                switch (menuItem.getItemId()) {
                    case R.id.menu_dindori /* 2131362047 */:
                        bundle.putString("TYPE", SimpleTextBottomSheet.DPU);
                        SimpleTextBottomSheet.newInstance(bundle).show(CalendarParentFragment.this.getFragmentManager(), "SimpleTextBottomSheet");
                        break;
                    case R.id.menu_muhurt /* 2131362050 */:
                        bundle.putString("TYPE", SimpleTextBottomSheet.MUHURTA);
                        SimpleTextBottomSheet.newInstance(bundle).show(CalendarParentFragment.this.getFragmentManager(), "SimpleTextBottomSheet");
                        break;
                    case R.id.menu_rahukal /* 2131362051 */:
                        RahuKalBottomSheet rahuKalBottomSheet = new RahuKalBottomSheet();
                        rahuKalBottomSheet.show(CalendarParentFragment.this.getFragmentManager(), rahuKalBottomSheet.getTag());
                        break;
                    case R.id.menu_shubh /* 2131362052 */:
                        bundle.putString("TYPE", SimpleTextBottomSheet.SHUBA_SHUBH);
                        SimpleTextBottomSheet.newInstance(bundle).show(CalendarParentFragment.this.getFragmentManager(), "SimpleTextBottomSheet");
                        break;
                    case R.id.menu_utsav /* 2131362053 */:
                        bundle.putString("TYPE", "sanvar");
                        SimpleTextBottomSheet.newInstance(bundle).show(CalendarParentFragment.this.getFragmentManager(), "SimpleTextBottomSheet");
                        break;
                }
                return true;
            }
        });
        this.tvMonthTitle.setOnClickListener(this);
        this.ivPrev.setOnClickListener(this);
        this.ivNext.setOnClickListener(this);
    }

    private void setupViewPager() {
        for (int i = 0; i < this.years.length; i++) {
            for (int i2 = 0; i2 < this.monthTitles.length; i2++) {
                CalendarPagerData calendarPagerData = new CalendarPagerData();
                calendarPagerData.setMonth(i2);
                calendarPagerData.setMonthTitle(this.monthTitles[i2]);
                calendarPagerData.setYear(Integer.parseInt(this.years[i]));
                calendarPagerData.setYearTitle(this.yearTitles[i]);
                this.calendarPagerDatas.add(calendarPagerData);
                if (DateUtils.getCalendarYear() == Integer.parseInt(this.years[i]) && DateUtils.getCalendarMonth() == i2) {
                    this.currentPageId = (i * 12) + i2;
                }
            }
        }
        CalendarPagerAdapter calendarPagerAdapter = new CalendarPagerAdapter(getChildFragmentManager(), this.calendarPagerDatas);
        this.adapterViewPager = calendarPagerAdapter;
        this.vpPager.setAdapter(calendarPagerAdapter);
        this.vpPager.addOnPageChangeListener(this);
        this.vpPager.setCurrentItem(this.currentPageId);
        this.vpPager.setOffscreenPageLimit(1);
    }

    private class LoadPagerData extends AsyncTask<Void, Void, Void> {
        private LoadPagerData() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            CalendarParentFragment.this.showLoading();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            for (int i = 0; i < CalendarParentFragment.this.years.length; i++) {
                for (int i2 = 0; i2 < CalendarParentFragment.this.monthTitles.length; i2++) {
                    CalendarPagerData calendarPagerData = new CalendarPagerData();
                    calendarPagerData.setMonth(i2);
                    calendarPagerData.setMonthTitle(CalendarParentFragment.this.monthTitles[i2]);
                    calendarPagerData.setYear(Integer.parseInt(CalendarParentFragment.this.years[i]));
                    calendarPagerData.setYearTitle(CalendarParentFragment.this.yearTitles[i]);
                    CalendarParentFragment.this.calendarPagerDatas.add(calendarPagerData);
                    if (DateUtils.getCalendarYear() == Integer.parseInt(CalendarParentFragment.this.years[i]) && DateUtils.getCalendarMonth() == i2) {
                        CalendarParentFragment.this.currentPageId = (i * 12) + i2;
                    }
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r7) {
            super.onPostExecute(r7);
            CalendarParentFragment.this.adapterViewPager = new CalendarPagerAdapter(CalendarParentFragment.this.getChildFragmentManager(), CalendarParentFragment.this.calendarPagerDatas);
            CalendarParentFragment.this.vpPager.setAdapter(CalendarParentFragment.this.adapterViewPager);
            CalendarParentFragment.this.vpPager.addOnPageChangeListener(CalendarParentFragment.this);
            CalendarParentFragment.this.vpPager.setCurrentItem(CalendarParentFragment.this.currentPageId);
            CalendarParentFragment.this.vpPager.setOffscreenPageLimit(1);
            CalendarParentFragment.this.showContent();
            ShowCaseManager.showHelp(CalendarParentFragment.this.getActivity(), R.id.ivUpArrow, CalendarParentFragment.this.getResources().getString(R.string.help_title_scroll), CalendarParentFragment.this.getResources().getString(R.string.help_message_scroll), ShowCaseManager.HELP_SCROLL, null);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.ivNext) {
            if (this.currentPageId < DateUtils.getMaxLimit(getActivity())) {
                this.currentPageId++;
            }
            this.vpPager.setCurrentItem(this.currentPageId);
        } else {
            if (id != R.id.ivPrev) {
                return;
            }
            if (this.currentPageId > DateUtils.getMinLimit()) {
                this.currentPageId--;
            }
            this.vpPager.setCurrentItem(this.currentPageId);
        }
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        this.currentPageId = i;
        this.pageMonth = this.calendarPagerDatas.get(i).getMonth() + 1;
        this.pageYear = this.calendarPagerDatas.get(i).getYear();
        this.tvMonthTitle.setText("" + this.calendarPagerDatas.get(i).getMonthTitle() + " " + this.calendarPagerDatas.get(i).getYearTitle());
    }
}
