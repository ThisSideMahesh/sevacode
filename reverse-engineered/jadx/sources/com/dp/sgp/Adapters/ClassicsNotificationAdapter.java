package com.dp.sgp.Adapters;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bumptech.glide.load.Key;
import com.dp.sgp.Model.HomeResponse.Banner;
import com.dp.sgp.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ClassicsNotificationAdapter extends RecyclerView.Adapter<NewsViewHolder> implements Filterable {
    boolean isDark;
    Context mContext;
    List<Banner> mData;
    List<Banner> mDataFiltered;

    public ClassicsNotificationAdapter(Context context, List<Banner> list, boolean z) {
        this.isDark = false;
        this.mContext = context;
        this.mData = list;
        this.isDark = z;
        this.mDataFiltered = list;
    }

    public ClassicsNotificationAdapter(Context context, List<Banner> list) {
        this.isDark = false;
        this.mContext = context;
        this.mData = list;
        this.mDataFiltered = list;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public NewsViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new NewsViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.new_notification_row, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(NewsViewHolder newsViewHolder, int i) {
        newsViewHolder.img_user.setAnimation(AnimationUtils.loadAnimation(this.mContext, R.anim.fade_transition_animation));
        newsViewHolder.container.setAnimation(AnimationUtils.loadAnimation(this.mContext, R.anim.fade_scale_animation));
        newsViewHolder.tv_title.setText(this.mDataFiltered.get(i).getTitle());
        String description = this.mDataFiltered.get(i).getDescription();
        newsViewHolder.tv_content.setText(description);
        String create_datetime = this.mDataFiltered.get(i).getCreate_datetime();
        newsViewHolder.publishedAt.setText(this.mDataFiltered.get(i).getCreate_datetime());
        if (!create_datetime.equalsIgnoreCase("")) {
            newsViewHolder.releaseYear.setText(parseDate(create_datetime));
        }
        newsViewHolder.img_user.setImageDrawable(ContextCompat.getDrawable(this.mContext, R.drawable.ic_notifications_yellow_800_48dp));
        if (this.mDataFiltered.get(i).getUrl() == null || this.mDataFiltered.get(i).getUrl().equalsIgnoreCase("") || this.mDataFiltered.get(i).getUrl().equalsIgnoreCase("")) {
            newsViewHolder.tv_date.setVisibility(4);
        } else {
            newsViewHolder.tv_date.setVisibility(0);
        }
        newsViewHolder.webView.getSettings().setJavaScriptEnabled(true);
        newsViewHolder.webView.clearCache(true);
        newsViewHolder.webView.clearHistory();
        newsViewHolder.webView.getSettings().setSupportZoom(false);
        newsViewHolder.webView.getSettings().setBuiltInZoomControls(false);
        newsViewHolder.webView.getSettings().setDisplayZoomControls(false);
        CookieManager.getInstance().removeAllCookie();
        newsViewHolder.webView.loadData(description, "text/html", Key.STRING_CHARSET_NAME);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mDataFiltered.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.dp.sgp.Adapters.ClassicsNotificationAdapter.1
            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                String string = charSequence.toString();
                if (string.isEmpty()) {
                    ClassicsNotificationAdapter classicsNotificationAdapter = ClassicsNotificationAdapter.this;
                    classicsNotificationAdapter.mDataFiltered = classicsNotificationAdapter.mData;
                } else {
                    ArrayList arrayList = new ArrayList();
                    for (Banner banner : ClassicsNotificationAdapter.this.mData) {
                        if (banner.getTitle().toLowerCase().contains(string.toLowerCase())) {
                            arrayList.add(banner);
                        }
                    }
                    ClassicsNotificationAdapter.this.mDataFiltered = arrayList;
                }
                Filter.FilterResults filterResults = new Filter.FilterResults();
                filterResults.values = ClassicsNotificationAdapter.this.mDataFiltered;
                return filterResults;
            }

            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                ClassicsNotificationAdapter.this.mDataFiltered = (List) filterResults.values;
                ClassicsNotificationAdapter.this.notifyDataSetChanged();
            }
        };
    }

    public class NewsViewHolder extends RecyclerView.ViewHolder {
        RelativeLayout container;
        ImageView imag_url;
        ImageView img_user;
        FrameLayout layoutDate;
        TextView publishedAt;
        TextView releaseYear;
        TextView tv_content;
        TextView tv_date;
        TextView tv_title;
        private WebView webView;

        public NewsViewHolder(View view) {
            super(view);
            this.layoutDate = (FrameLayout) view.findViewById(R.id.layoutDate);
            this.container = (RelativeLayout) view.findViewById(R.id.container);
            this.tv_title = (TextView) view.findViewById(R.id.tv_title);
            this.releaseYear = (TextView) view.findViewById(R.id.releaseYear);
            this.tv_content = (TextView) view.findViewById(R.id.tv_description);
            this.tv_date = (TextView) view.findViewById(R.id.tv_date);
            this.publishedAt = (TextView) view.findViewById(R.id.publishedAt);
            this.img_user = (ImageView) view.findViewById(R.id.img_user);
            this.imag_url = (ImageView) view.findViewById(R.id.imag_url);
            this.webView = (WebView) view.findViewById(R.id.web_view);
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
                return (j <= 0 || j7 >= 59) ? "now" : " now";
            }
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
            if (j <= 348 || j > 360) {
                return (j <= 360 || j > 720) ? "now" : "1 year ago";
            }
            return "12 months ago";
        } catch (ParseException e3) {
            e3.printStackTrace();
            return "now";
        }
    }
}
