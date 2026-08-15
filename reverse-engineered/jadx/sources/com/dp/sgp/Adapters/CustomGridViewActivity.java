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
public class CustomGridViewActivity extends BaseAdapter {
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

    public CustomGridViewActivity(Context context, String[] strArr, int[] iArr) {
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
        if (view == null) {
            new View(this.mContext);
            view = layoutInflater.inflate(R.layout.gridview_layout_row, (ViewGroup) null);
            TextView textView = (TextView) view.findViewById(R.id.txt_left);
            TextView textView2 = (TextView) view.findViewById(R.id.txt_right);
            ImageView imageView = (ImageView) view.findViewById(R.id.title_lag);
            if (i % 2 == 0) {
                textView.setVisibility(0);
                textView.setText(this.gridViewString[i]);
                textView2.setVisibility(8);
            } else {
                textView.setVisibility(8);
                textView2.setText(this.gridViewString[i]);
                textView2.setVisibility(0);
            }
            imageView.setImageResource(this.gridViewImageId[i]);
        }
        return view;
    }
}
