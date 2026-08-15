package com.dp.sgp.Adapters;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dp.sgp.Model.IsSaturday;
import com.dp.sgp.R;
import com.dp.sgp.calendar.CalenderData;
import com.dp.sgp.database.DatabaseTables;
import com.dp.sgp.listener.OnRecyclerItemClickListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CalendarRecyclerAdapter extends RecyclerView.Adapter {
    public static final int ITEM_VIEW = 0;
    private ArrayList<IsSaturday> isSaturdays;
    private ArrayList<CalenderData> list;
    private Context mContext;
    private OnRecyclerItemClickListener recyclerItemClickListener;
    private int selectedPosition;

    public CalendarRecyclerAdapter(Context context, ArrayList<CalenderData> arrayList, ArrayList<IsSaturday> arrayList2) {
        this.selectedPosition = -1;
        this.mContext = context;
        this.list = arrayList;
        this.isSaturdays = arrayList2;
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i).getTodaysDate() > 0) {
                this.selectedPosition = i;
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new CustomViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_calendar, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
        CustomViewHolder customViewHolder = (CustomViewHolder) viewHolder;
        customViewHolder.mTvDate.setText("" + this.list.get(i).getDay());
        if (!TextUtils.isEmpty(this.list.get(i).getEvent())) {
            if (this.list.get(i).getEvent().startsWith(DatabaseTables.AMAVASYA)) {
                customViewHolder.imageView.setImageResource(R.drawable.ic_amavasya);
            } else if (this.list.get(i).getEvent().startsWith(DatabaseTables.POURNIMA)) {
                customViewHolder.imageView.setImageResource(R.drawable.ic_purnima);
            } else if (this.list.get(i).getEvent().startsWith(DatabaseTables.CHATURTHI)) {
                customViewHolder.imageView.setImageResource(R.drawable.ic_chaturthi_legend);
            } else if (this.list.get(i).getEvent().startsWith(DatabaseTables.MEETING)) {
                customViewHolder.imageView.setImageResource(R.drawable.ic_satsang_legend);
            } else if (this.list.get(i).getEvent().startsWith(DatabaseTables.SAPTAH)) {
                customViewHolder.imageView.setImageResource(R.drawable.ic_yagna_legend);
            } else {
                customViewHolder.imageView.setImageResource(0);
            }
        } else {
            customViewHolder.imageView.setImageResource(0);
        }
        if (i == this.selectedPosition) {
            viewHolder.itemView.setSelected(true);
            customViewHolder.mTvDate.setBackgroundDrawable(ContextCompat.getDrawable(this.mContext, R.drawable.calendar_selected));
            customViewHolder.mTvDate.setTextColor(ContextCompat.getColor(this.mContext, R.color.white));
            this.recyclerItemClickListener.onRecyclerItemClick(i, 0);
        } else {
            viewHolder.itemView.setSelected(false);
            customViewHolder.mTvDate.setBackgroundDrawable(null);
            if (this.list.get(i).isEnable()) {
                customViewHolder.mTvDate.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorPrimary));
            } else {
                customViewHolder.mTvDate.setTextColor(ContextCompat.getColor(this.mContext, R.color.gray));
            }
        }
        customViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.Adapters.CalendarRecyclerAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CalendarRecyclerAdapter.this.recyclerItemClickListener == null || !((CalenderData) CalendarRecyclerAdapter.this.list.get(i)).isEnable()) {
                    return;
                }
                CalendarRecyclerAdapter.this.selectedPosition = i;
                CalendarRecyclerAdapter.this.notifyDataSetChanged();
                CalendarRecyclerAdapter.this.recyclerItemClickListener.onRecyclerItemClick(i, 0);
            }
        });
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    public class CustomViewHolder extends RecyclerView.ViewHolder {
        ImageView imageView;
        LinearLayout lyt_main;
        TextView mTvDate;

        public CustomViewHolder(View view) {
            super(view);
            this.lyt_main = (LinearLayout) view.findViewById(R.id.lyt_main);
            this.mTvDate = (TextView) view.findViewById(R.id.tvDate);
            this.imageView = (ImageView) view.findViewById(R.id.ivIcon);
        }
    }

    public void setOnRecyclerItemClickListener(OnRecyclerItemClickListener onRecyclerItemClickListener) {
        this.recyclerItemClickListener = onRecyclerItemClickListener;
    }
}
