package com.dp.sgp.View.Fragment.Calendar;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.dp.sgp.Adapters.CalendarRecyclerAdapter;
import com.dp.sgp.Constants.PreferenceHelper;
import com.dp.sgp.Model.IsSaturday;
import com.dp.sgp.R;
import com.dp.sgp.calendar.CalendarPagerData;
import com.dp.sgp.calendar.CalendarViewModel;
import com.dp.sgp.calendar.CalenderData;
import com.dp.sgp.calendar.DateUtils;
import com.dp.sgp.database.DatabaseTables;
import com.dp.sgp.database.DatabaseUtils;
import com.dp.sgp.listener.OnRecyclerItemClickListener;
import com.google.gson.Gson;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class CalendarFragment extends Fragment implements View.OnClickListener {
    private CalendarRecyclerAdapter adapter;
    private CalendarPagerData calendarPagerData;
    private CalendarViewModel calendarViewData;
    private ImageView ivUpArrow;
    private ArrayList<IsSaturday> list;
    private RecyclerView mRecyclerView;
    private View rootView;
    private TextView tvChandraRashi;
    private TextView tvDaySpecial;
    private TextView tvKaran;
    private TextView tvMarqueHeader;
    private TextView tvNakshatra;
    private TextView tvPanchang;
    private TextView tvRahukal;
    private TextView tvShubhaShubh;
    private TextView tvSuvichar;
    private TextView tvTithi;
    private TextView tvVar;
    private TextView tvYog;

    public static CalendarFragment newInstance(Bundle bundle) {
        CalendarFragment calendarFragment = new CalendarFragment();
        calendarFragment.setArguments(bundle);
        return calendarFragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.calendarPagerData = (CalendarPagerData) getArguments().getSerializable(PreferenceHelper.EXTRA_PARAMS_RESULT_KEY);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.rootView = layoutInflater.inflate(R.layout.fragment_calendar, viewGroup, false);
        this.list = new ArrayList<>();
        findViews();
        setData(DateUtils.getCalendarDayOfMonth(), this.calendarPagerData.getMonth(), this.calendarPagerData.getYear());
        return this.rootView;
    }

    private void findViews() {
        this.rootView.findViewById(R.id.root).setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.Calendar.CalendarFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        TextView textView = (TextView) this.rootView.findViewById(R.id.tvMarqueHeader);
        this.tvMarqueHeader = textView;
        textView.setSelected(true);
        this.tvSuvichar = (TextView) this.rootView.findViewById(R.id.tvSuvichar);
        this.tvPanchang = (TextView) this.rootView.findViewById(R.id.tvPanchang);
        this.tvTithi = (TextView) this.rootView.findViewById(R.id.tvTithi);
        this.tvVar = (TextView) this.rootView.findViewById(R.id.tvVar);
        this.tvNakshatra = (TextView) this.rootView.findViewById(R.id.tvNakshatra);
        this.tvYog = (TextView) this.rootView.findViewById(R.id.tvYog);
        this.tvKaran = (TextView) this.rootView.findViewById(R.id.tvKaran);
        this.tvChandraRashi = (TextView) this.rootView.findViewById(R.id.tvChandraRashi);
        this.tvRahukal = (TextView) this.rootView.findViewById(R.id.tvRahukal);
        this.tvShubhaShubh = (TextView) this.rootView.findViewById(R.id.tvShubhaShubh);
        this.tvDaySpecial = (TextView) this.rootView.findViewById(R.id.tvDaySpecial);
        this.ivUpArrow = (ImageView) this.rootView.findViewById(R.id.ivUpArrow);
        RecyclerView recyclerView = (RecyclerView) this.rootView.findViewById(R.id.recyclerView);
        this.mRecyclerView = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.mRecyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 7));
        this.calendarViewData = new CalendarViewModel(getActivity(), this.calendarPagerData.getMonth(), this.calendarPagerData.getYear());
        Gson gson = new Gson();
        ArrayList<Date> arrayList = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        calendar.set(5, 1);
        int i = calendar.get(2);
        calendar.get(5);
        do {
            if (calendar.get(7) == 7) {
                arrayList.add(calendar.getTime());
            }
            calendar.add(5, 1);
        } while (calendar.get(2) == i);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE M/d/yyyy");
        for (Date date : arrayList) {
            try {
                System.out.println(simpleDateFormat.format(date));
                Date date2 = simpleDateFormat.parse(simpleDateFormat.format(date));
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTimeInMillis(date2.getTime());
                int i2 = calendar2.get(5);
                System.out.println(i2 + "");
                IsSaturday isSaturday = new IsSaturday();
                isSaturday.setEvent("true");
                isSaturday.setDayId(i2);
                this.list.add(isSaturday);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        Log.d("Data", gson.toJson(this.calendarViewData.getData()));
        Log.d("list", gson.toJson(this.list));
        CalendarRecyclerAdapter calendarRecyclerAdapter = new CalendarRecyclerAdapter(getActivity(), this.calendarViewData.getData(), this.list);
        this.adapter = calendarRecyclerAdapter;
        this.mRecyclerView.setAdapter(calendarRecyclerAdapter);
        this.adapter.setOnRecyclerItemClickListener(new OnRecyclerItemClickListener() { // from class: com.dp.sgp.View.Fragment.Calendar.CalendarFragment.2
            @Override // com.dp.sgp.listener.OnRecyclerItemClickListener
            public void onRecyclerItemClick(int i3, int i4) {
                CalendarFragment calendarFragment = CalendarFragment.this;
                calendarFragment.setData(calendarFragment.calendarViewData.getData().get(i3).getDayId(), CalendarFragment.this.calendarPagerData.getMonth() + 1, CalendarFragment.this.calendarPagerData.getYear());
                AnimationUtils.loadAnimation(CalendarFragment.this.getActivity(), R.anim.translate).setAnimationListener(new Animation.AnimationListener() { // from class: com.dp.sgp.View.Fragment.Calendar.CalendarFragment.2.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setData(int i, int i2, int i3) {
        CalenderData allDayData = DatabaseUtils.getAllDayData(getActivity(), i3, i2, i);
        StringBuilder sb = new StringBuilder();
        sb.append("                                                                      ");
        if (!TextUtils.isEmpty(allDayData.getDay())) {
            sb.append(getActivity().getResources().getString(R.string.panchang) + " " + allDayData.getDay());
        }
        if (!TextUtils.isEmpty(allDayData.getTithi())) {
            sb.append(", " + getActivity().getResources().getString(R.string.thithi) + " " + allDayData.getTithi());
        }
        if (!TextUtils.isEmpty(allDayData.getVar())) {
            sb.append(", " + getActivity().getResources().getString(R.string.var) + " " + allDayData.getVar());
        }
        if (!TextUtils.isEmpty(allDayData.getNakshatra())) {
            sb.append(", " + getActivity().getResources().getString(R.string.nakshatra) + " " + allDayData.getNakshatra());
        }
        if (!TextUtils.isEmpty(allDayData.getYog())) {
            sb.append(", " + getActivity().getResources().getString(R.string.yog) + " " + allDayData.getYog());
        }
        if (!TextUtils.isEmpty(allDayData.getKaran())) {
            sb.append(", " + getActivity().getResources().getString(R.string.karan) + " " + allDayData.getKaran());
        }
        if (!TextUtils.isEmpty(allDayData.getChangraRashi())) {
            sb.append(", " + getActivity().getResources().getString(R.string.chnandraRashi) + " " + allDayData.getChangraRashi());
        }
        if (!TextUtils.isEmpty(allDayData.getRahukal())) {
            sb.append(", " + getActivity().getResources().getString(R.string.rahukal) + " " + allDayData.getRahukal());
        }
        if (!TextUtils.isEmpty(allDayData.getDaySpecial())) {
            sb.append(", " + getActivity().getResources().getString(R.string.day_special) + " " + allDayData.getDaySpecial());
            if (allDayData.getEvent().startsWith(DatabaseTables.AMAVASYA)) {
                this.tvMarqueHeader.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_amavasya_new, 0, 0, 0);
                this.tvPanchang.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.ic_amavasya, 0);
            } else if (allDayData.getEvent().startsWith(DatabaseTables.POURNIMA)) {
                this.tvMarqueHeader.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_purnima_new, 0, 0, 0);
                this.tvPanchang.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.ic_purnima, 0);
            } else if (allDayData.getEvent().startsWith(DatabaseTables.CHATURTHI)) {
                this.tvMarqueHeader.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_chaturthi_legend_new, 0, 0, 0);
                this.tvPanchang.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.ic_chaturthi_legend, 0);
            } else if (allDayData.getEvent().startsWith(DatabaseTables.MEETING)) {
                this.tvMarqueHeader.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_satsang_legend_new, 0, 0, 0);
                this.tvPanchang.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.ic_satsang_legend, 0);
            } else if (allDayData.getEvent().startsWith(DatabaseTables.SAPTAH)) {
                this.tvMarqueHeader.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_yagna_legend_new, 0, 0, 0);
                this.tvPanchang.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.ic_yagna_legend, 0);
            }
        } else {
            this.tvMarqueHeader.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            this.tvPanchang.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        }
        this.tvMarqueHeader.setText(sb);
        this.tvSuvichar.setText(allDayData.getSuvichar());
        this.tvPanchang.setText(getActivity().getResources().getString(R.string.panchang) + " " + (TextUtils.isEmpty(allDayData.getDay()) ? "" : allDayData.getDay()));
        this.tvYog.setText(getActivity().getResources().getString(R.string.yog) + " " + (TextUtils.isEmpty(allDayData.getYog()) ? "" : allDayData.getYog()));
        this.tvKaran.setText(getActivity().getResources().getString(R.string.karan) + " " + (TextUtils.isEmpty(allDayData.getKaran()) ? "" : allDayData.getKaran()));
        this.tvChandraRashi.setText(getActivity().getResources().getString(R.string.chnandraRashi) + " " + (TextUtils.isEmpty(allDayData.getChangraRashi()) ? "" : allDayData.getChangraRashi()));
        this.tvTithi.setText(TextUtils.isEmpty(allDayData.getTithi()) ? "" : allDayData.getTithi());
        this.tvVar.setText(TextUtils.isEmpty(allDayData.getVar()) ? "" : allDayData.getVar());
        this.tvNakshatra.setText(TextUtils.isEmpty(allDayData.getNakshatra()) ? "" : allDayData.getNakshatra());
        this.tvRahukal.setText(TextUtils.isEmpty(allDayData.getRahukal()) ? "" : allDayData.getRahukal());
        this.tvShubhaShubh.setText(TextUtils.isEmpty(allDayData.getShubhashubh()) ? "" : allDayData.getShubhashubh());
        this.tvDaySpecial.setText(TextUtils.isEmpty(allDayData.getDaySpecial()) ? "" : allDayData.getDaySpecial());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        view.getId();
    }
}
