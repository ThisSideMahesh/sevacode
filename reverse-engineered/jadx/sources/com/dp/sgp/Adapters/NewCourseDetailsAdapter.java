package com.dp.sgp.Adapters;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.dp.sgp.Model.HomeResponse.Youtube;
import com.dp.sgp.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class NewCourseDetailsAdapter extends RecyclerView.Adapter<MyViewHolder> {
    private List<Youtube> albumList;
    private Context mContext;

    public class MyViewHolder extends RecyclerView.ViewHolder {
        public ImageView VideoPreviewPlayButton;
        public TextView count;
        LinearLayout dateContainer;
        public TextView duartionn;
        public ImageView overflow;
        ProgressBar progressBar;
        public ImageView thumbnail;
        public TextView title;

        public MyViewHolder(View view) {
            super(view);
            this.progressBar = (ProgressBar) this.itemView.findViewById(R.id.prograss_load_photo);
            this.VideoPreviewPlayButton = (ImageView) this.itemView.findViewById(R.id.VideoPreviewPlayButton);
            this.title = (TextView) view.findViewById(R.id.tvName);
            this.thumbnail = (ImageView) view.findViewById(R.id.ivFollowImage);
        }
    }

    public NewCourseDetailsAdapter(Context context, List<Youtube> list) {
        this.mContext = context;
        this.albumList = list;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.grid_video_row, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, int i) {
        Youtube youtube = this.albumList.get(i);
        myViewHolder.title.setText(youtube.getTitle());
        Glide.with(this.mContext).load(youtube.getImage()).into(myViewHolder.thumbnail);
        myViewHolder.VideoPreviewPlayButton.setImageDrawable(ContextCompat.getDrawable(this.mContext, R.drawable.ic_baseline_play_circle_filled_44));
        myViewHolder.VideoPreviewPlayButton.setVisibility(0);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.albumList.size();
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
