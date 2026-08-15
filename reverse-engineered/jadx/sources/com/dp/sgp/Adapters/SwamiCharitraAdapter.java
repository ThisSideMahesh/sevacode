package com.dp.sgp.Adapters;

import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.dp.sgp.Model.SwamiDatum;
import com.dp.sgp.R;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.ColorAnimation;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SwamiCharitraAdapter extends RecyclerView.Adapter<MyViewHolder> {
    private Context mContext;
    private List<SwamiDatum> swamiCharitraModelList;

    public class MyViewHolder extends RecyclerView.ViewHolder {
        public ImageView VideoPreviewPlayButton;
        public TextView count;
        public ImageView image;
        public ImageView imageViewAndroid;
        LinearLayout lyt_Courses;
        public ImageView overflow;
        ProgressBar progressBar;
        public TextView releaseYear;
        public TextView title;
        public TextView title_lag;
        public TextView txt_count;
        public TextView txt_date;
        public TextView txt_maal;

        public MyViewHolder(View view) {
            super(view);
            this.title = (TextView) view.findViewById(R.id.title);
            this.txt_date = (TextView) view.findViewById(R.id.timing);
            this.txt_count = (TextView) view.findViewById(R.id.pos);
            this.lyt_Courses = (LinearLayout) view.findViewById(R.id.thumbnail);
            this.image = (ImageView) view.findViewById(R.id.image);
            this.imageViewAndroid = (ImageView) this.itemView.findViewById(R.id.image_user);
        }
    }

    public SwamiCharitraAdapter(Context context, List<SwamiDatum> list) {
        this.mContext = context;
        this.swamiCharitraModelList = list;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.new_row_of_course, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, int i) {
        SwamiDatum swamiDatum = this.swamiCharitraModelList.get(i);
        myViewHolder.title.setText(swamiDatum.getTitle());
        myViewHolder.txt_count.setText((i + 1) + "");
        myViewHolder.txt_date.setText(swamiDatum.getCompleted_on());
        Glide.with(this.mContext).load(swamiDatum.getImage()).into(myViewHolder.imageViewAndroid);
        if (swamiDatum.getStatus().equalsIgnoreCase("1")) {
            myViewHolder.txt_count.setTextColor(Color.parseColor(ColorAnimation.DEFAULT_SELECTED_COLOR));
            myViewHolder.title.setTextColor(Color.parseColor("#302165"));
            myViewHolder.image.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_baseline_check_circle_24_green));
        } else if (swamiDatum.getStatus().equalsIgnoreCase("2")) {
            myViewHolder.txt_count.setTextColor(Color.parseColor(ColorAnimation.DEFAULT_SELECTED_COLOR));
            myViewHolder.title.setTextColor(Color.parseColor("#302165"));
            myViewHolder.image.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_baseline_play_circle_filled_30));
        } else {
            myViewHolder.txt_count.setTextColor(Color.parseColor("#7b7890"));
            myViewHolder.title.setTextColor(Color.parseColor("#7b7890"));
            myViewHolder.image.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_baseline_lock_grey));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.swamiCharitraModelList.size();
    }
}
