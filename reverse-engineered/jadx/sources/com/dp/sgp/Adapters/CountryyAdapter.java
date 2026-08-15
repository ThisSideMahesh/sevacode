package com.dp.sgp.Adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.dp.sgp.R;
import com.dp.sgp.countrypicker.Country;
import com.dp.sgp.countrypicker.Utils;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class CountryyAdapter extends RecyclerView.Adapter<MyViewHolder> {
    private List<Country> albumList;
    private Context mContext;

    public class MyViewHolder extends RecyclerView.ViewHolder {
        public ImageView VideoPreviewPlayButton;
        public TextView count;
        public ImageView overflow;
        ProgressBar progressBar;
        public ImageView thumbnail;
        public TextView title;
        public TextView title_lag;

        public MyViewHolder(View view) {
            super(view);
            this.title = (TextView) view.findViewById(R.id.title);
            this.thumbnail = (ImageView) view.findViewById(R.id.title_lag);
        }
    }

    public CountryyAdapter(Context context, List<Country> list) {
        this.mContext = context;
        this.albumList = list;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.country_detail_row_new, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, int i) {
        Country country = this.albumList.get(i);
        myViewHolder.title.setText(new Locale(this.mContext.getResources().getConfiguration().locale.getLanguage(), country.getIsoCode()).getDisplayCountry() + " (+" + country.getDialingCode() + ")");
        myViewHolder.thumbnail.setImageResource(Utils.getMipmapResId(this.mContext, country.getIsoCode().toLowerCase(Locale.ENGLISH) + "_flag"));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.albumList.size();
    }
}
