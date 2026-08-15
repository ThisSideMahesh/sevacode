package com.dp.sgp.Adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.TextView;
import com.dp.sgp.R;
import com.dp.sgp.countrypicker.NewCountry;
import com.dp.sgp.countrypicker.Utils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class DataAdapter extends RecyclerView.Adapter<ViewHolder> implements Filterable {
    private List<NewCountry> mArrayList;
    private final Context mContext;
    private List<NewCountry> mFilteredList;

    public interface OnItemClickedListner {
        void PrintClicked(NewCountry newCountry);
    }

    public DataAdapter(Context context, List<NewCountry> list) {
        this.mContext = context;
        this.mArrayList = list;
        this.mFilteredList = list;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_country, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        NewCountry newCountry = this.mFilteredList.get(i);
        viewHolder.title.setText(newCountry.getCcName() + " (+" + newCountry.getDialingCode() + ")");
        viewHolder.thumbnail.setImageResource(Utils.getMipmapResId(this.mContext, newCountry.getIsoCode().toLowerCase(Locale.ENGLISH) + "_flag"));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mFilteredList.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.dp.sgp.Adapters.DataAdapter.1
            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                String string = charSequence.toString();
                if (string.isEmpty()) {
                    DataAdapter dataAdapter = DataAdapter.this;
                    dataAdapter.mFilteredList = dataAdapter.mArrayList;
                } else {
                    ArrayList arrayList = new ArrayList();
                    for (NewCountry newCountry : DataAdapter.this.mArrayList) {
                        String.valueOf(newCountry.getDialingCode());
                        if (newCountry.getDialingCode().toLowerCase().contains(string) || newCountry.getIsoCode().toLowerCase().contains(string) || newCountry.getCcName().toLowerCase().contains(string)) {
                            arrayList.add(newCountry);
                        }
                    }
                    DataAdapter.this.mFilteredList = arrayList;
                }
                Filter.FilterResults filterResults = new Filter.FilterResults();
                filterResults.values = DataAdapter.this.mFilteredList;
                return filterResults;
            }

            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                DataAdapter.this.mFilteredList = (ArrayList) filterResults.values;
                DataAdapter.this.notifyDataSetChanged();
            }
        };
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        public ImageView VideoPreviewPlayButton;
        public TextView count;
        public ImageView overflow;
        public ImageView thumbnail;
        public TextView title;
        public TextView title_lag;

        public ViewHolder(View view) {
            super(view);
            this.title = (TextView) view.findViewById(R.id.name);
            this.thumbnail = (ImageView) view.findViewById(R.id.icon);
        }
    }

    public List<NewCountry> getitemmsQty() {
        return this.mFilteredList;
    }
}
