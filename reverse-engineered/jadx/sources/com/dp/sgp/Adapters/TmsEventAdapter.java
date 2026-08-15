package com.dp.sgp.Adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.dp.sgp.Model.NewTMS.NewSchduledInfoList;
import com.dp.sgp.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class TmsEventAdapter extends RecyclerView.Adapter<NewsViewHolder> {
    boolean isDark;
    Context mContext;
    List<NewSchduledInfoList> mData;
    List<NewSchduledInfoList> mDataFiltered;

    public TmsEventAdapter(Context context, List<NewSchduledInfoList> list, boolean z) {
        this.isDark = false;
        this.mContext = context;
        this.mData = list;
        this.isDark = z;
        this.mDataFiltered = list;
    }

    public TmsEventAdapter(Context context, List<NewSchduledInfoList> list) {
        this.isDark = false;
        this.mContext = context;
        this.mData = list;
        this.mDataFiltered = list;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public NewsViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new NewsViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.tms_schedule, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(NewsViewHolder newsViewHolder, int i) {
        newsViewHolder.img_user.setAnimation(AnimationUtils.loadAnimation(this.mContext, R.anim.fade_transition_animation));
        newsViewHolder.container.setAnimation(AnimationUtils.loadAnimation(this.mContext, R.anim.fade_scale_animation));
        newsViewHolder.tv_day.setText(this.mDataFiltered.get(i).getDay() + "");
        newsViewHolder.tv_title.setText(this.mDataFiltered.get(i).getTraining_name());
        newsViewHolder.tv_content.setText(this.mDataFiltered.get(i).getVenue());
        newsViewHolder.training_start_date.setText(this.mDataFiltered.get(i).getTraining_start_date() + "-" + this.mDataFiltered.get(i).getTraining_end_date());
        newsViewHolder.training_end_date.setText(this.mDataFiltered.get(i).getTraining_start_time() + "-" + this.mDataFiltered.get(i).getTraining_end_time());
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mDataFiltered.size();
    }

    public class NewsViewHolder extends RecyclerView.ViewHolder {
        RelativeLayout container;
        ImageView imag_url;
        ImageView img_user;
        TextView publishedAt;
        TextView releaseYear;
        TextView training_end_date;
        TextView training_start_date;
        TextView tv_content;
        TextView tv_date;
        TextView tv_day;
        TextView tv_title;

        public NewsViewHolder(View view) {
            super(view);
            this.container = (RelativeLayout) view.findViewById(R.id.container);
            this.tv_title = (TextView) view.findViewById(R.id.tv_title);
            this.tv_day = (TextView) view.findViewById(R.id.tv_day);
            this.training_start_date = (TextView) view.findViewById(R.id.training_start_date);
            this.training_end_date = (TextView) view.findViewById(R.id.training_end_date);
            this.releaseYear = (TextView) view.findViewById(R.id.releaseYear);
            this.tv_content = (TextView) view.findViewById(R.id.tv_description);
            this.tv_date = (TextView) view.findViewById(R.id.tv_date);
            this.publishedAt = (TextView) view.findViewById(R.id.publishedAt);
            this.img_user = (ImageView) view.findViewById(R.id.img_user);
            this.imag_url = (ImageView) view.findViewById(R.id.imag_url);
        }
    }

    public static String parseDate(String str) {
        long time;
        if (str.equalsIgnoreCase("")) {
            return "";
        }
        try {
            time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str).getTime();
            try {
                System.out.println("Date in milli :: " + time);
            } catch (ParseException e) {
                e = e;
                e.printStackTrace();
            }
        } catch (ParseException e2) {
            e = e2;
            time = 0;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str2 = simpleDateFormat.format(new Date());
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        try {
            long jAbs = Math.abs(simpleDateFormat.parse(str2).getTime() - simpleDateFormat.parse(simpleDateFormat.format(calendar.getTime())).getTime());
            long j = jAbs / 86400000;
            long j2 = jAbs % 86400000;
            long j3 = j2 / 3600000;
            long j4 = j2 % 3600000;
            long j5 = j4 / 60000;
            long j6 = j4 % 60000;
            long j7 = j6 / 1000;
            long j8 = j6 % 1000;
            if (j == 0) {
                if (j3 != 0) {
                    return j3 + " hr ago";
                }
                if (j5 != 0) {
                    return j5 + " mins ago";
                }
                if (j7 < 0) {
                    return "0 s";
                }
                if (j <= 0 || j7 < 59) {
                    return " now";
                }
            } else {
                if (j <= 29) {
                    return j + " days ago";
                }
                if (j > 29 && j <= 58) {
                    return "1 month ago";
                }
                if (j > 58 && j <= 87) {
                    return "2 months ago";
                }
                if (j > 87 && j <= 116) {
                    return "3 months ago";
                }
                if (j > 116 && j <= 145) {
                    return "4 months ago";
                }
                if (j > 145 && j <= 174) {
                    return "5 months ago";
                }
                if (j > 174 && j <= 203) {
                    return "6 months ago";
                }
                if (j > 203 && j <= 232) {
                    return "7 months ago";
                }
                if (j > 232 && j <= 261) {
                    return "8 months ago";
                }
                if (j > 261 && j <= 290) {
                    return "9 months ago";
                }
                if (j > 290 && j <= 319) {
                    return "10 months ago";
                }
                if (j > 319 && j <= 348) {
                    return "11 months ago";
                }
                if (j > 348 && j <= 360) {
                    return "12 months ago";
                }
                if (j > 360 && j <= 720) {
                    return "1 year ago";
                }
            }
        } catch (ParseException e3) {
            e3.printStackTrace();
        }
        return " now";
    }

    public static String DateFormat(String str) {
        try {
            return new SimpleDateFormat("E, d MMM yyyy", new Locale(getCountry())).format(new SimpleDateFormat("yyyy-MM-dd").parse(str));
        } catch (ParseException e) {
            e.printStackTrace();
            return str;
        }
    }

    public static String getCountry() {
        return String.valueOf(Locale.getDefault().getCountry()).toLowerCase();
    }

    public static String getLanguage() {
        return String.valueOf(Locale.getDefault().getLanguage()).toLowerCase();
    }
}
