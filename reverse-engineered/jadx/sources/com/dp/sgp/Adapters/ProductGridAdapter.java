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
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class ProductGridAdapter extends RecyclerView.Adapter<MyViewHolder> {
    private List<CommonData> albumList;
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

    public ProductGridAdapter(Context context, List<CommonData> list) {
        this.mContext = context;
        this.albumList = list;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.grid_video_row, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, int i) {
        CommonData commonData = this.albumList.get(i);
        myViewHolder.title.setText(commonData.getTitle());
        Glide.with(this.mContext).load(commonData.getThumb_image()).into(myViewHolder.thumbnail);
        myViewHolder.VideoPreviewPlayButton.setImageDrawable(ContextCompat.getDrawable(this.mContext, R.drawable.ic_baseline_play_circle_filled_24));
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
