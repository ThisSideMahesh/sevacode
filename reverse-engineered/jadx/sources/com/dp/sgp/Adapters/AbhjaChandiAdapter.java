package com.dp.sgp.Adapters;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.GradientDrawable;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.dp.sgp.Model.AbjachnadiData;
import com.dp.sgp.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AbhjaChandiAdapter extends RecyclerView.Adapter<MyViewHolder> {
    private List<AbjachnadiData> albumList;
    private Context mContext;

    public class MyViewHolder extends RecyclerView.ViewHolder {
        public ImageView VideoPreviewPlayButton;
        public TextView count;
        LinearLayout lyt_Courses;
        public ImageView overflow;
        ProgressBar progressBar;
        public TextView releaseYear;
        public ImageView thumbnail;
        public TextView title;
        public TextView title_lag;
        public TextView txt_count;
        public TextView txt_date;
        public TextView txt_maal;

        public MyViewHolder(View view) {
            super(view);
            this.title = (TextView) view.findViewById(R.id.title);
            this.txt_date = (TextView) view.findViewById(R.id.txt_date);
            this.releaseYear = (TextView) view.findViewById(R.id.releaseYear);
            this.txt_count = (TextView) view.findViewById(R.id.txt_count);
            this.txt_maal = (TextView) view.findViewById(R.id.txt_maal);
            this.lyt_Courses = (LinearLayout) view.findViewById(R.id.lyt_Courses);
        }
    }

    public AbhjaChandiAdapter(Context context, List<AbjachnadiData> list) {
        this.mContext = context;
        this.albumList = list;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.bhja_seva_row, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, int i) {
        AbjachnadiData abjachnadiData = this.albumList.get(i);
        myViewHolder.txt_date.setText(abjachnadiData.getAdded_on());
        myViewHolder.title.setText(abjachnadiData.getList_name());
        myViewHolder.releaseYear.setText(abjachnadiData.getTypeName());
        if (abjachnadiData.getList_value() != null) {
            myViewHolder.txt_count.setText(abjachnadiData.getList_value() + "");
        } else {
            myViewHolder.txt_count.setText("0");
        }
        if (abjachnadiData.getTypeName().equalsIgnoreCase("वैयक्तिक")) {
            if (abjachnadiData.getList_type().equalsIgnoreCase("1")) {
                myViewHolder.txt_maal.setText("माळ");
                myViewHolder.txt_count.setTextColor(Color.parseColor("#3c4cac"));
                myViewHolder.txt_maal.getBackground().setColorFilter(Color.parseColor("#3c4cac"), PorterDuff.Mode.SRC_IN);
                myViewHolder.releaseYear.getBackground().setColorFilter(Color.parseColor("#3c4cac"), PorterDuff.Mode.SRC_IN);
                ((GradientDrawable) myViewHolder.lyt_Courses.getBackground()).setStroke(1, Color.parseColor("#3c4cac"));
                ((GradientDrawable) myViewHolder.lyt_Courses.getBackground()).setColor(-1);
                return;
            }
            myViewHolder.txt_maal.setText("पारायण");
            myViewHolder.txt_count.setTextColor(Color.parseColor("#fe676e"));
            myViewHolder.txt_maal.getBackground().setColorFilter(Color.parseColor("#fe676e"), PorterDuff.Mode.SRC_IN);
            myViewHolder.releaseYear.getBackground().setColorFilter(Color.parseColor("#fe676e"), PorterDuff.Mode.SRC_IN);
            ((GradientDrawable) myViewHolder.lyt_Courses.getBackground()).setStroke(1, Color.parseColor("#fe676e"));
            ((GradientDrawable) myViewHolder.lyt_Courses.getBackground()).setColor(-1);
            return;
        }
        if (abjachnadiData.getTypeName().equalsIgnoreCase("कौटूंबिक")) {
            if (abjachnadiData.getList_type().equalsIgnoreCase("1")) {
                myViewHolder.txt_maal.setText("माळ");
                myViewHolder.txt_count.setTextColor(Color.parseColor("#941c4e"));
                myViewHolder.txt_maal.getBackground().setColorFilter(Color.parseColor("#941c4e"), PorterDuff.Mode.SRC_IN);
                myViewHolder.releaseYear.getBackground().setColorFilter(Color.parseColor("#941c4e"), PorterDuff.Mode.SRC_IN);
                ((GradientDrawable) myViewHolder.lyt_Courses.getBackground()).setStroke(1, Color.parseColor("#941c4e"));
                ((GradientDrawable) myViewHolder.lyt_Courses.getBackground()).setColor(-1);
                return;
            }
            myViewHolder.txt_maal.setText("पारायण");
            myViewHolder.txt_count.setTextColor(Color.parseColor("#918500"));
            myViewHolder.txt_maal.getBackground().setColorFilter(Color.parseColor("#918500"), PorterDuff.Mode.SRC_IN);
            myViewHolder.releaseYear.getBackground().setColorFilter(Color.parseColor("#918500"), PorterDuff.Mode.SRC_IN);
            ((GradientDrawable) myViewHolder.lyt_Courses.getBackground()).setStroke(1, Color.parseColor("#918500"));
            ((GradientDrawable) myViewHolder.lyt_Courses.getBackground()).setColor(-1);
            return;
        }
        if (abjachnadiData.getList_type().equalsIgnoreCase("1")) {
            myViewHolder.txt_maal.setText("माळ");
            myViewHolder.txt_count.setTextColor(Color.parseColor("#8A52E9"));
            myViewHolder.txt_maal.getBackground().setColorFilter(Color.parseColor("#8A52E9"), PorterDuff.Mode.SRC_IN);
            myViewHolder.releaseYear.getBackground().setColorFilter(Color.parseColor("#8A52E9"), PorterDuff.Mode.SRC_IN);
            ((GradientDrawable) myViewHolder.lyt_Courses.getBackground()).setStroke(1, Color.parseColor("#8A52E9"));
            ((GradientDrawable) myViewHolder.lyt_Courses.getBackground()).setColor(-1);
            return;
        }
        myViewHolder.txt_maal.setText("पारायण");
        myViewHolder.txt_count.setTextColor(Color.parseColor("#4caf50"));
        myViewHolder.txt_maal.getBackground().setColorFilter(Color.parseColor("#4caf50"), PorterDuff.Mode.SRC_IN);
        myViewHolder.releaseYear.getBackground().setColorFilter(Color.parseColor("#4caf50"), PorterDuff.Mode.SRC_IN);
        ((GradientDrawable) myViewHolder.lyt_Courses.getBackground()).setStroke(1, Color.parseColor("#4caf50"));
        ((GradientDrawable) myViewHolder.lyt_Courses.getBackground()).setColor(-1);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.albumList.size();
    }
}
