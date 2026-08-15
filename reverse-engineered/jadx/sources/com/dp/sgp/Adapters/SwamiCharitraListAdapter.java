package com.dp.sgp.Adapters;

import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.dp.sgp.Constants.PreferenceHelper;
import com.dp.sgp.Model.ListData;
import com.dp.sgp.R;
import com.dp.sgp.listener.OnRecyclerItemClickListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SwamiCharitraListAdapter extends RecyclerView.Adapter {
    private String bookmarkType;
    private ArrayList<ListData> list;
    private Context mContext;
    private OnRecyclerItemClickListener recyclerItemClickListener;

    public SwamiCharitraListAdapter(Context context, ArrayList<ListData> arrayList, String str) {
        this.mContext = context;
        this.list = arrayList;
        this.bookmarkType = str;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ListViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.new_row_of_course, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
        ListViewHolder listViewHolder = (ListViewHolder) viewHolder;
        listViewHolder.mTvName.setText("" + this.list.get(i).getTitle());
        if (i < PreferenceHelper.getIntPreferenceValue(this.mContext, this.bookmarkType)) {
            listViewHolder.mTvStatus.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_baseline_check_circle_24_green));
            listViewHolder.mTvName.setTextColor(Color.parseColor("#302165"));
        } else if (i == PreferenceHelper.getIntPreferenceValue(this.mContext, this.bookmarkType)) {
            listViewHolder.mTvStatus.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_baseline_play_circle_filled_30));
            listViewHolder.mTvName.setTextColor(Color.parseColor("#302165"));
        } else {
            listViewHolder.mTvStatus.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_baseline_lock_grey));
            listViewHolder.mTvName.setTextColor(Color.parseColor("#7b7890"));
        }
        listViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.Adapters.SwamiCharitraListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SwamiCharitraListAdapter.this.recyclerItemClickListener.onRecyclerItemClick(i, 0);
            }
        });
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    public class ListViewHolder extends RecyclerView.ViewHolder {
        TextView mTvName;
        ImageView mTvStatus;
        RelativeLayout rlRoot;

        public ListViewHolder(View view) {
            super(view);
            this.mTvName = (TextView) view.findViewById(R.id.title);
            this.mTvStatus = (ImageView) view.findViewById(R.id.image);
        }
    }

    public void setOnRecyclerItemClickListener(OnRecyclerItemClickListener onRecyclerItemClickListener) {
        this.recyclerItemClickListener = onRecyclerItemClickListener;
    }
}
