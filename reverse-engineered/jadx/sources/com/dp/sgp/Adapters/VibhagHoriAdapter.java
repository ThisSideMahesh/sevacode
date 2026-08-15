package com.dp.sgp.Adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class VibhagHoriAdapter extends RecyclerView.Adapter<RankViewHolder> {
    private final int[] gridViewImageId;
    private final String[] gridViewString;
    boolean isDark = false;
    Context mContext;

    public VibhagHoriAdapter(Context context, String[] strArr, int[] iArr) {
        this.mContext = context;
        this.gridViewImageId = iArr;
        this.gridViewString = strArr;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RankViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new RankViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.followers_card, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RankViewHolder rankViewHolder, int i) {
        rankViewHolder.textViewAndroid.setText(this.gridViewString[i]);
        rankViewHolder.imageViewAndroid.setImageResource(this.gridViewImageId[i]);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.gridViewString.length;
    }

    public class RankViewHolder extends RecyclerView.ViewHolder {
        ImageView imag_url;
        ImageView imageViewAndroid;
        TextView lbl_txt_AmsCode;
        TextView lbl_txt_Rank;
        TextView textViewAndroid;
        TextView tvreginallevel;
        TextView txt_lbl_Assesment;

        public RankViewHolder(View view) {
            super(view);
            this.textViewAndroid = (TextView) view.findViewById(R.id.tvName);
            this.imageViewAndroid = (ImageView) view.findViewById(R.id.ivFollowImage);
        }
    }
}
