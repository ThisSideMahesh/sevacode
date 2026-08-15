package com.dp.sgp.countrypicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.dp.sgp.R;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class CountryListAdapter extends BaseAdapter {
    private static final String TAG = "CountryListAdapter";
    private List<Country> countries;
    private LayoutInflater inflater;
    private final Context mContext;
    private boolean showDialingCode;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    public CountryListAdapter(Context context, List<Country> list, boolean z) {
        this.mContext = context;
        this.countries = list;
        this.showDialingCode = z;
        this.inflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.countries.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.countries.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate;
        Item item;
        Country country = this.countries.get(i);
        if (view == null) {
            item = new Item();
            viewInflate = this.inflater.inflate(R.layout.item_country, viewGroup, false);
            item.setIcon((ImageView) viewInflate.findViewById(R.id.icon));
            item.setName((TextView) viewInflate.findViewById(R.id.name));
            viewInflate.setTag(item);
        } else {
            viewInflate = view;
            item = (Item) view.getTag();
        }
        item.getName().setText(new Locale(this.mContext.getResources().getConfiguration().locale.getLanguage(), country.getIsoCode()).getDisplayCountry() + (this.showDialingCode ? " (+" + country.getDialingCode() + ")" : ""));
        item.getIcon().setImageResource(Utils.getMipmapResId(this.mContext, country.getIsoCode().toLowerCase(Locale.ENGLISH) + "_flag"));
        return viewInflate;
    }

    public static class Item {
        private ImageView icon;
        private TextView name;

        public ImageView getIcon() {
            return this.icon;
        }

        public void setIcon(ImageView imageView) {
            this.icon = imageView;
        }

        public TextView getName() {
            return this.name;
        }

        public void setName(TextView textView) {
            this.name = textView;
        }
    }
}
