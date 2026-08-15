package com.dp.sgp.Adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class UpakramGridViewActivity extends BaseAdapter {
    private final int[] gridViewImageId;
    private final String[] gridViewString;
    private Context mContext;

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    public UpakramGridViewActivity(Context context, String[] strArr, int[] iArr) {
        this.mContext = context;
        this.gridViewImageId = iArr;
        this.gridViewString = strArr;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.gridViewString.length;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
        if (view != null) {
            return view;
        }
        new View(this.mContext);
        View viewInflate = layoutInflater.inflate(R.layout.upkram_row, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.title);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.title_lag);
        textView.setText(this.gridViewString[i]);
        imageView.setImageResource(this.gridViewImageId[i]);
        return viewInflate;
    }
}
