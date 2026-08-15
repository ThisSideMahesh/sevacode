package com.dp.sgp.Adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.dp.sgp.Model.AbjachnadiData;
import com.dp.sgp.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SevaAdapter extends RecyclerView.Adapter<MyViewHolder> {
    private List<AbjachnadiData> albumList;
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
            this.title_lag = (TextView) view.findViewById(R.id.title_lag);
        }
    }

    public SevaAdapter(Context context, List<AbjachnadiData> list) {
        this.mContext = context;
        this.albumList = list;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.seva_row, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, int i) {
        AbjachnadiData abjachnadiData = this.albumList.get(i);
        myViewHolder.title_lag.setText(abjachnadiData.getList_value());
        if (abjachnadiData.getList_type().equalsIgnoreCase("1")) {
            myViewHolder.title.setText(abjachnadiData.getList_name());
        } else {
            myViewHolder.title.setText(abjachnadiData.getList_name());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.albumList.size();
    }
}
