package com.dp.sgp.autoimageslider.InfiniteAdapter;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import com.dp.sgp.autoimageslider.SliderViewAdapter;

/* JADX INFO: loaded from: classes.dex */
public class InfinitePagerAdapter extends PagerAdapter {
    public static final int INFINITE_SCROLL_LIMIT = 32400;
    private static final String TAG = "InfinitePagerAdapter";
    private SliderViewAdapter adapter;

    public InfinitePagerAdapter(SliderViewAdapter sliderViewAdapter) {
        this.adapter = sliderViewAdapter;
    }

    public PagerAdapter getRealAdapter() {
        return this.adapter;
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        if (getRealCount() < 1) {
            return 0;
        }
        return getRealCount() * INFINITE_SCROLL_LIMIT;
    }

    public int getRealCount() {
        try {
            return getRealAdapter().getCount();
        } catch (Exception unused) {
            return 0;
        }
    }

    public int getMiddlePosition(int i) {
        return i + (Math.max(0, getRealCount()) * 16200);
    }

    @Override // android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        if (getRealCount() < 1) {
            return this.adapter.instantiateItem(viewGroup, 0);
        }
        return this.adapter.instantiateItem(viewGroup, getRealPosition(i));
    }

    @Override // android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        if (getRealCount() < 1) {
            this.adapter.destroyItem(viewGroup, 0, obj);
        } else {
            this.adapter.destroyItem(viewGroup, getRealPosition(i), obj);
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
        this.adapter.startUpdate(viewGroup);
    }

    @Override // android.support.v4.view.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        this.adapter.finishUpdate(viewGroup);
    }

    @Override // android.support.v4.view.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return this.adapter.isViewFromObject(view, obj);
    }

    @Override // android.support.v4.view.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        this.adapter.restoreState(parcelable, classLoader);
    }

    @Override // android.support.v4.view.PagerAdapter
    public Parcelable saveState() {
        return this.adapter.saveState();
    }

    @Override // android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return this.adapter.getPageTitle(getRealPosition(i));
    }

    @Override // android.support.v4.view.PagerAdapter
    public float getPageWidth(int i) {
        return this.adapter.getPageWidth(i);
    }

    @Override // android.support.v4.view.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        this.adapter.setPrimaryItem(viewGroup, i, obj);
    }

    @Override // android.support.v4.view.PagerAdapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.adapter.unregisterDataSetObserver(dataSetObserver);
    }

    @Override // android.support.v4.view.PagerAdapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.adapter.registerDataSetObserver(dataSetObserver);
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getItemPosition(Object obj) {
        return this.adapter.getItemPosition(obj);
    }

    public int getRealPosition(int i) {
        if (getRealCount() > 0) {
            return i % getRealCount();
        }
        return 0;
    }
}
