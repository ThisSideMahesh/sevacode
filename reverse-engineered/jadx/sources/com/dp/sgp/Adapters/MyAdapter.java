package com.dp.sgp.Adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MyAdapter extends BaseAdapter {
    private Context acitivityContext;
    private int layoutId;
    private List<CommonData> nameList;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public MyAdapter(Context context, int i, List<CommonData> list) {
        this.acitivityContext = context;
        this.layoutId = i;
        this.nameList = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.nameList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.nameList.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = LayoutInflater.from(this.acitivityContext).inflate(this.layoutId, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.nameTextView = (TextView) view.findViewById(R.id.title);
            viewHolder.title_lag = (ImageView) view.findViewById(R.id.title_lag);
            viewHolder.txt_left = (TextView) view.findViewById(R.id.txt_left);
            viewHolder.txt_right = (TextView) view.findViewById(R.id.txt_right);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        viewHolder.nameTextView.setText(this.nameList.get(i).getTitle());
        if (i % 2 == 0) {
            viewHolder.txt_left.setVisibility(0);
            viewHolder.txt_right.setVisibility(8);
        } else {
            viewHolder.txt_left.setVisibility(8);
            viewHolder.txt_right.setVisibility(0);
        }
        if (i == 0) {
            viewHolder.txt_left.setText("सर्वात लोकप्रिय");
            viewHolder.txt_right.setText("संपुर्ण पहा");
        }
        if (i == 1) {
            viewHolder.txt_left.setText("पूजा साहित्य");
            viewHolder.txt_right.setText("संपुर्ण पहा");
        }
        if (i == 2) {
            viewHolder.txt_left.setText("आयुर्वेदिक उत्पादने");
            viewHolder.txt_right.setText("संपुर्ण पहा");
        }
        Glide.with(this.acitivityContext).load(this.nameList.get(i).getImage()).into(viewHolder.title_lag);
        return view;
    }

    private static class ViewHolder {
        private TextView nameTextView;
        ImageView title_lag;
        private TextView txt_left;
        private TextView txt_right;

        private ViewHolder() {
        }
    }
}
