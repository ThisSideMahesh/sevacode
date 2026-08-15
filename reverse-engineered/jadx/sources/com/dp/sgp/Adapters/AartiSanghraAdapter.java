package com.dp.sgp.Adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AartiSanghraAdapter extends RecyclerView.Adapter<ViewHolder> {
    Context context;
    List<CommonData> list;

    public AartiSanghraAdapter(List<CommonData> list, Context context) {
        this.list = list;
        this.context = context;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R.layout.aarti_card_layout, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        viewHolder.textViewAndroid.setText(this.list.get(i).getTitle());
        Glide.with(this.context).load(this.list.get(i).getImage()).into(viewHolder.imageViewAndroid);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        ImageView VideoPreviewPlayButton;
        ImageView imag_url;
        ImageView imageViewAndroid;
        TextView lbl_txt_AmsCode;
        TextView lbl_txt_Rank;
        ProgressBar progressBar;
        TextView textViewAndroid;
        TextView tvreginallevel;
        TextView txt_lbl_Assesment;

        public ViewHolder(View view) {
            super(view);
            this.textViewAndroid = (TextView) view.findViewById(R.id.text_user_name);
            this.imageViewAndroid = (ImageView) view.findViewById(R.id.image_user);
        }
    }
}
