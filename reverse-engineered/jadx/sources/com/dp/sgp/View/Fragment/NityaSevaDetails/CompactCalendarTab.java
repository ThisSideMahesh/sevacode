package com.dp.sgp.View.Fragment.NityaSevaDetails;

import android.app.ProgressDialog;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.Adapters.TmsEventAdapter;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.ErrorResponse;
import com.dp.sgp.Model.NewTMS.NewSchduledInfoList;
import com.dp.sgp.Model.NewTMS.NewTmsProgram;
import com.dp.sgp.Model.NewTMS.TmsProgramList;
import com.dp.sgp.R;
import com.dp.sgp.compactcalendarview.CompactCalendarView;
import com.dp.sgp.compactcalendarview.domain.Event;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class CompactCalendarTab extends Fragment {
    private static final String TAG = "MainActivity";
    private int SelectedMonth;
    List<TmsProgramList> TmsProgramlist;
    private CompactCalendarView compactCalendarView;
    private DataHandler datHandler;
    private int mDay;
    private int mHour;
    private int mMinute;
    private int mMonth;
    private int mYear;
    private int msec;
    List<NewSchduledInfoList> newSchduledInfoLists;
    TmsEventAdapter newsAdapter;
    ProgressDialog progressDialog;
    private RecyclerView recyclerView;
    RelativeLayout ryt_main;
    private ActionBar toolbar;
    TextView tv_day;
    TextView txtHeading;
    private Calendar currentCalender = Calendar.getInstance(Locale.getDefault());
    private SimpleDateFormat dateFormatForDisplaying = new SimpleDateFormat("dd-M-yyyy hh:mm:ss a", Locale.getDefault());
    private SimpleDateFormat dateFormatForMonth = new SimpleDateFormat("MMM - yyyy", Locale.getDefault());
    private boolean shouldShow = false;
    String lStrToken = "";
    String lStrSelcetdDate = "";
    int Datecount = 0;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_compact_calendar_tab, viewGroup, false);
        getActivity().setTitle("मार्गदर्शिका");
        this.datHandler = new DataHandler(getActivity());
        this.ryt_main = (RelativeLayout) viewInflate.findViewById(R.id.ryt_main);
        this.recyclerView = (RecyclerView) viewInflate.findViewById(R.id.rv_audio_video);
        ArrayList arrayList = new ArrayList();
        this.lStrToken = "2cad69e349c176585afbc88d0fc0cbe4";
        ListView listView = (ListView) viewInflate.findViewById(R.id.bookings_listview);
        this.txtHeading = (TextView) viewInflate.findViewById(R.id.txtHeading);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.panelIconLeft);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.panelIconRight);
        Button button = (Button) viewInflate.findViewById(R.id.slide_calendar);
        Button button2 = (Button) viewInflate.findViewById(R.id.show_with_animation_calendar);
        Button button3 = (Button) viewInflate.findViewById(R.id.set_locale);
        Button button4 = (Button) viewInflate.findViewById(R.id.remove_all_events);
        listView.setAdapter((ListAdapter) new ArrayAdapter(getContext(), android.R.layout.simple_list_item_1, arrayList));
        CompactCalendarView compactCalendarView = (CompactCalendarView) viewInflate.findViewById(R.id.compactcalendar_view);
        this.compactCalendarView = compactCalendarView;
        compactCalendarView.setUseThreeLetterAbbreviation(false);
        this.compactCalendarView.setFirstDayOfWeek(2);
        this.compactCalendarView.setIsRtl(false);
        this.compactCalendarView.displayOtherMonthDays(false);
        this.TmsProgramlist = new ArrayList();
        this.newSchduledInfoLists = new ArrayList();
        this.lStrToken = this.datHandler.getData("Token");
        Calendar calendar = Calendar.getInstance();
        this.mYear = calendar.get(1);
        this.mMonth = calendar.get(2);
        this.mDay = calendar.get(5);
        this.SelectedMonth = this.mMonth + 1;
        GET_TMS();
        this.toolbar = ((AppCompatActivity) getActivity()).getSupportActionBar();
        this.txtHeading.setText(this.dateFormatForMonth.format(this.compactCalendarView.getFirstDayOfCurrentMonth()));
        this.compactCalendarView.setListener(new CompactCalendarView.CompactCalendarViewListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.CompactCalendarTab.1
            @Override // com.dp.sgp.compactcalendarview.CompactCalendarView.CompactCalendarViewListener
            public void onDayClick(Date date) {
                if (CompactCalendarTab.this.newSchduledInfoLists != null && CompactCalendarTab.this.newSchduledInfoLists.size() > 0) {
                    CompactCalendarTab.this.newSchduledInfoLists.clear();
                }
                CompactCalendarTab.this.txtHeading.setText(CompactCalendarTab.this.dateFormatForMonth.format(date));
                int i = Integer.parseInt((date + "").split(" ")[2]);
                for (int i2 = i - 1; i2 < CompactCalendarTab.this.TmsProgramlist.size(); i2++) {
                    TmsProgramList tmsProgramList = CompactCalendarTab.this.TmsProgramlist.get(i2);
                    NewSchduledInfoList newSchduledInfoList = new NewSchduledInfoList();
                    if (tmsProgramList.getDay().intValue() == i && tmsProgramList.getIs_scheduled().booleanValue()) {
                        newSchduledInfoList.setTraining_end_date(tmsProgramList.getSchduledInfo().getTraining_end_date());
                        newSchduledInfoList.setTraining_end_time(tmsProgramList.getSchduledInfo().getTraining_end_time());
                        newSchduledInfoList.setTraining_start_date(tmsProgramList.getSchduledInfo().getTraining_start_date());
                        newSchduledInfoList.setTraining_start_time(tmsProgramList.getSchduledInfo().getTraining_start_time());
                        newSchduledInfoList.setVenue(tmsProgramList.getSchduledInfo().getVenue());
                        newSchduledInfoList.setTraining_name(tmsProgramList.getSchduledInfo().getTraining_name());
                        newSchduledInfoList.setDay(tmsProgramList.getDay());
                        CompactCalendarTab.this.newSchduledInfoLists.add(newSchduledInfoList);
                    }
                }
                CompactCalendarTab.this.newsAdapter = new TmsEventAdapter(CompactCalendarTab.this.getActivity(), CompactCalendarTab.this.newSchduledInfoLists);
                CompactCalendarTab.this.recyclerView.setAdapter(CompactCalendarTab.this.newsAdapter);
                CompactCalendarTab.this.recyclerView.setLayoutManager(new LinearLayoutManager(CompactCalendarTab.this.getActivity()));
                if (CompactCalendarTab.this.newSchduledInfoLists.size() <= 0) {
                    CompactCalendarTab.this.recyclerView.setVisibility(8);
                    CompactCalendarTab.this.ryt_main.setVisibility(0);
                } else {
                    CompactCalendarTab.this.ryt_main.setVisibility(8);
                    CompactCalendarTab.this.recyclerView.setVisibility(0);
                }
            }

            @Override // com.dp.sgp.compactcalendarview.CompactCalendarView.CompactCalendarViewListener
            public void onMonthScroll(Date date) {
                CompactCalendarTab.this.txtHeading.setText(CompactCalendarTab.this.dateFormatForMonth.format(date));
                String str = CompactCalendarTab.this.txtHeading.getText().toString().split("-")[0];
                if (str.equalsIgnoreCase("Jan ")) {
                    CompactCalendarTab.this.SelectedMonth = 1;
                } else if (str.equalsIgnoreCase("Feb ")) {
                    CompactCalendarTab.this.SelectedMonth = 2;
                } else if (str.equalsIgnoreCase("Mar ")) {
                    CompactCalendarTab.this.SelectedMonth = 3;
                } else if (str.equalsIgnoreCase("Apr ")) {
                    CompactCalendarTab.this.SelectedMonth = 4;
                } else if (str.equalsIgnoreCase("May ")) {
                    CompactCalendarTab.this.SelectedMonth = 5;
                } else if (str.equalsIgnoreCase("Jun ")) {
                    CompactCalendarTab.this.SelectedMonth = 6;
                } else if (str.equalsIgnoreCase("Jul ")) {
                    CompactCalendarTab.this.SelectedMonth = 7;
                } else if (str.equalsIgnoreCase("Aug ")) {
                    CompactCalendarTab.this.SelectedMonth = 8;
                } else if (str.equalsIgnoreCase("Sep ")) {
                    CompactCalendarTab.this.SelectedMonth = 9;
                } else if (str.equalsIgnoreCase("Oct ")) {
                    CompactCalendarTab.this.SelectedMonth = 10;
                } else if (str.equalsIgnoreCase("Nov ")) {
                    CompactCalendarTab.this.SelectedMonth = 11;
                } else if (str.equalsIgnoreCase("Dec ")) {
                    CompactCalendarTab.this.SelectedMonth = 12;
                }
                CompactCalendarTab.this.GET_TMS();
            }
        });
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.CompactCalendarTab.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CompactCalendarTab.this.compactCalendarView.scrollLeft();
            }
        });
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.CompactCalendarTab.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CompactCalendarTab.this.compactCalendarView.scrollRight();
            }
        });
        button.setOnClickListener(getCalendarShowLis());
        button2.setOnClickListener(getCalendarExposeLis());
        this.compactCalendarView.setAnimationListener(new CompactCalendarView.CompactCalendarAnimationListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.CompactCalendarTab.4
            @Override // com.dp.sgp.compactcalendarview.CompactCalendarView.CompactCalendarAnimationListener
            public void onClosed() {
            }

            @Override // com.dp.sgp.compactcalendarview.CompactCalendarView.CompactCalendarAnimationListener
            public void onOpened() {
            }
        });
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.CompactCalendarTab.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Locale locale = Locale.FRANCE;
                CompactCalendarTab.this.dateFormatForDisplaying = new SimpleDateFormat("dd-M-yyyy hh:mm:ss a", locale);
                TimeZone timeZone = TimeZone.getTimeZone("Europe/Paris");
                CompactCalendarTab.this.dateFormatForDisplaying.setTimeZone(timeZone);
                CompactCalendarTab.this.dateFormatForMonth.setTimeZone(timeZone);
                CompactCalendarTab.this.compactCalendarView.setLocale(timeZone, locale);
                CompactCalendarTab.this.compactCalendarView.setUseThreeLetterAbbreviation(false);
                CompactCalendarTab.this.loadEvents();
                CompactCalendarTab.this.loadEventsForYear(2017);
                CompactCalendarTab compactCalendarTab = CompactCalendarTab.this;
                compactCalendarTab.logEventsByMonth(compactCalendarTab.compactCalendarView);
            }
        });
        button4.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.CompactCalendarTab.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CompactCalendarTab.this.compactCalendarView.removeAllEvents();
            }
        });
        return viewInflate;
    }

    private View.OnClickListener getCalendarShowLis() {
        return new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.CompactCalendarTab.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CompactCalendarTab.this.compactCalendarView.isAnimating()) {
                    return;
                }
                if (CompactCalendarTab.this.shouldShow) {
                    CompactCalendarTab.this.compactCalendarView.showCalendar();
                } else {
                    CompactCalendarTab.this.compactCalendarView.hideCalendar();
                }
                CompactCalendarTab compactCalendarTab = CompactCalendarTab.this;
                compactCalendarTab.shouldShow = !compactCalendarTab.shouldShow;
            }
        };
    }

    private View.OnClickListener getCalendarExposeLis() {
        return new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.CompactCalendarTab.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CompactCalendarTab.this.compactCalendarView.isAnimating()) {
                    return;
                }
                if (CompactCalendarTab.this.shouldShow) {
                    CompactCalendarTab.this.compactCalendarView.showCalendarWithAnimation();
                } else {
                    CompactCalendarTab.this.compactCalendarView.hideCalendarWithAnimation();
                }
                CompactCalendarTab compactCalendarTab = CompactCalendarTab.this;
                compactCalendarTab.shouldShow = !compactCalendarTab.shouldShow;
            }
        };
    }

    private void openCalendarOnCreate(View view) {
        final RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.main_content);
        relativeLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.CompactCalendarTab.9
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (Build.VERSION.SDK_INT < 16) {
                    relativeLayout.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                } else {
                    relativeLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
                CompactCalendarTab.this.compactCalendarView.showCalendarWithAnimation();
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.txtHeading.setText(this.dateFormatForMonth.format(this.compactCalendarView.getFirstDayOfCurrentMonth()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadEvents() {
        addEvents(-1, -1);
        addEvents(11, -1);
        addEvents(7, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadEventsForYear(int i) {
        addEvents(11, i);
        addEvents(7, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logEventsByMonth(CompactCalendarView compactCalendarView) {
        this.currentCalender.setTime(new Date());
        this.currentCalender.set(5, 1);
        this.currentCalender.set(2, 7);
        ArrayList arrayList = new ArrayList();
        Iterator<Event> it = compactCalendarView.getEventsForMonth(new Date()).iterator();
        while (it.hasNext()) {
            arrayList.add(this.dateFormatForDisplaying.format(Long.valueOf(it.next().getTimeInMillis())));
        }
        Log.d(TAG, "Events for Aug with simple date formatter: " + arrayList);
        Log.d(TAG, "Events for Aug month using default local and timezone: " + compactCalendarView.getEventsForMonth(this.currentCalender.getTime()));
    }

    private void addEvents(int i, int i2) {
        this.currentCalender.setTime(new Date());
        this.currentCalender.set(5, 1);
        Date time = this.currentCalender.getTime();
        for (int i3 = 0; i3 < this.newSchduledInfoLists.size(); i3++) {
            this.currentCalender.setTime(time);
            if (i > -1) {
                this.currentCalender.set(2, i);
            }
            if (i2 > -1) {
                this.currentCalender.set(0, 1);
                this.currentCalender.set(1, i2);
            }
            this.currentCalender.add(5, i3);
            setToMidnight(this.currentCalender);
            try {
                this.compactCalendarView.addEvents(getEvents(new SimpleDateFormat("dd-MM-yyyy").parse(this.newSchduledInfoLists.get(i3).getTraining_start_date().equalsIgnoreCase("") ? "" : this.newSchduledInfoLists.get(i3).getTraining_start_date()).getTime(), i3));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
    }

    private List<Event> getEvents(long j, int i) {
        int i2 = this.mMonth + 1;
        int i3 = this.mDay;
        if (this.SelectedMonth < i2) {
            return Arrays.asList(new Event(getResources().getColor(R.color.new_textcolor), j, "Event at " + new Date(j)));
        }
        return i < i3 ? Arrays.asList(new Event(getResources().getColor(R.color.viyatik), j, "Event at " + new Date(j))) : Arrays.asList(new Event(getResources().getColor(R.color.viyatik), j, "Event at " + new Date(j)));
    }

    private void setToMidnight(Calendar calendar) {
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
    }

    public void GET_TMS() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        List<NewSchduledInfoList> list = this.newSchduledInfoLists;
        if (list != null && list.size() > 0) {
            this.newSchduledInfoLists.clear();
        }
        List<TmsProgramList> list2 = this.TmsProgramlist;
        if (list2 != null && list2.size() > 0) {
            this.TmsProgramlist.clear();
        }
        this.lStrToken = "2cad69e349c176585afbc88d0fc0cbe4";
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.Nexa_BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).GET_TMSList(this.lStrToken, Constants.FUNCTION_mobile_webservices_fetch_current_month_tms_program, "json", this.SelectedMonth, new Callback<NewTmsProgram>() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.CompactCalendarTab.10
            @Override // retrofit.Callback
            public void success(NewTmsProgram newTmsProgram, Response response) {
                if (newTmsProgram != null && newTmsProgram.getTmsProgram().size() > 0) {
                    CompactCalendarTab.this.TmsProgramlist = newTmsProgram.getTmsProgram();
                    CompactCalendarTab.this.TmsProgramlist.get(CompactCalendarTab.this.mDay).getSchduledInfo();
                    for (int i = CompactCalendarTab.this.mDay - 1; i < CompactCalendarTab.this.TmsProgramlist.size(); i++) {
                        TmsProgramList tmsProgramList = CompactCalendarTab.this.TmsProgramlist.get(i);
                        NewSchduledInfoList newSchduledInfoList = new NewSchduledInfoList();
                        if (tmsProgramList.getIs_scheduled().booleanValue()) {
                            newSchduledInfoList.setTraining_end_date(tmsProgramList.getSchduledInfo().getTraining_end_date());
                            newSchduledInfoList.setTraining_end_time(tmsProgramList.getSchduledInfo().getTraining_end_time());
                            newSchduledInfoList.setTraining_start_date(tmsProgramList.getSchduledInfo().getTraining_start_date());
                            newSchduledInfoList.setTraining_start_time(tmsProgramList.getSchduledInfo().getTraining_start_time());
                            newSchduledInfoList.setVenue(tmsProgramList.getSchduledInfo().getVenue());
                            newSchduledInfoList.setTraining_name(tmsProgramList.getSchduledInfo().getTraining_name());
                            newSchduledInfoList.setDay(tmsProgramList.getDay());
                            CompactCalendarTab.this.newSchduledInfoLists.add(newSchduledInfoList);
                        }
                    }
                    if (CompactCalendarTab.this.newSchduledInfoLists.size() <= 0) {
                        CompactCalendarTab.this.recyclerView.setVisibility(8);
                        CompactCalendarTab.this.ryt_main.setVisibility(0);
                    } else {
                        CompactCalendarTab.this.ryt_main.setVisibility(8);
                        CompactCalendarTab.this.recyclerView.setVisibility(0);
                        CompactCalendarTab.this.newsAdapter = new TmsEventAdapter(CompactCalendarTab.this.getActivity(), CompactCalendarTab.this.newSchduledInfoLists);
                        CompactCalendarTab.this.recyclerView.setAdapter(CompactCalendarTab.this.newsAdapter);
                        CompactCalendarTab.this.recyclerView.setLayoutManager(new LinearLayoutManager(CompactCalendarTab.this.getActivity()));
                    }
                    CompactCalendarTab.this.loadEvents();
                    CompactCalendarTab.this.loadEventsForYear(2017);
                    CompactCalendarTab.this.compactCalendarView.invalidate();
                    CompactCalendarTab compactCalendarTab = CompactCalendarTab.this;
                    compactCalendarTab.logEventsByMonth(compactCalendarTab.compactCalendarView);
                }
                CompactCalendarTab.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                CompactCalendarTab.this.progressDialog.dismiss();
                ErrorResponse errorResponse = (ErrorResponse) retrofitError.getBodyAs(ErrorResponse.class);
                Log.d("Monish", "Login fail::" + retrofitError.toString());
                if (errorResponse == null || errorResponse.getMessage() == null) {
                    return;
                }
                String message = errorResponse.getMessage();
                Toast.makeText(CompactCalendarTab.this.getActivity(), message, 0).show();
                message.equalsIgnoreCase("Invalid Session. Please try to login again.");
            }
        });
    }
}
