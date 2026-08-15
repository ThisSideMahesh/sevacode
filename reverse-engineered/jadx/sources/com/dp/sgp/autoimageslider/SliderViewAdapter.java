package com.dp.sgp.autoimageslider;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import com.dp.sgp.autoimageslider.SliderViewAdapter.ViewHolder;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public abstract class SliderViewAdapter<VH extends ViewHolder> extends PagerAdapter {
    private DataSetListener dataSetListener;
    private Queue<VH> destroyedItems = new LinkedList();

    interface DataSetListener {
        void dataSetChanged();
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    public abstract void onBindViewHolder(VH vh, int i);

    public abstract VH onCreateViewHolder(ViewGroup viewGroup);

    public static abstract class ViewHolder {
        public final View itemView;

        public ViewHolder(View view) {
            this.itemView = view;
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        VH vhPoll = this.destroyedItems.poll();
        if (vhPoll == null) {
            vhPoll = onCreateViewHolder(viewGroup);
        }
        viewGroup.addView(vhPoll.itemView);
        onBindViewHolder(vhPoll, i);
        return vhPoll;
    }

    @Override // android.support.v4.view.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        ViewHolder viewHolder = (ViewHolder) obj;
        viewGroup.removeView(viewHolder.itemView);
        this.destroyedItems.add((VH) viewHolder);
    }

    @Override // android.support.v4.view.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        return ((ViewHolder) obj).itemView == view;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        DataSetListener dataSetListener = this.dataSetListener;
        if (dataSetListener != null) {
            dataSetListener.dataSetChanged();
        }
    }

    void dataSetChangedListener(DataSetListener dataSetListener) {
        this.dataSetListener = dataSetListener;
    }
}
