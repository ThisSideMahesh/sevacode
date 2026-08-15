package com.dp.sgp.Adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.dp.sgp.Model.MuhurathModel;
import com.dp.sgp.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TestooAdapter extends RecyclerView.Adapter<MyViewHolder> {
    private List<MuhurathModel> SubFolderDatasList;
    Context mContext;

    public class MyViewHolder extends RecyclerView.ViewHolder {
        TextView mobile_edit_text;
        TextView mobile_text_input;

        public MyViewHolder(View view) {
            super(view);
            this.mobile_edit_text = (TextView) view.findViewById(R.id.tv_title);
            this.mobile_text_input = (TextView) view.findViewById(R.id.tv_description);
        }
    }

    public TestooAdapter(Context context, List<MuhurathModel> list) {
        this.mContext = context;
        this.SubFolderDatasList = list;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.activity_events, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, int i) {
        MuhurathModel muhurathModel = this.SubFolderDatasList.get(i);
        myViewHolder.mobile_edit_text.setText(muhurathModel.getTime());
        myViewHolder.mobile_text_input.setText(muhurathModel.getName());
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.SubFolderDatasList.size();
    }
}
