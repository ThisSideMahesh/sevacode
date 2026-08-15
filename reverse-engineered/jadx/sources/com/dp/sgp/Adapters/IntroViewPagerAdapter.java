package com.dp.sgp.Adapters;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.dp.sgp.Model.ScreenItem;
import com.dp.sgp.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class IntroViewPagerAdapter extends PagerAdapter {
    Context mContext;
    List<ScreenItem> mListScreen;

    @Override // android.support.v4.view.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public IntroViewPagerAdapter(Context context, List<ScreenItem> list) {
        this.mContext = context;
        this.mListScreen = list;
    }

    @Override // android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View viewInflate = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.bollywood_prediction_card, (ViewGroup) null);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.intro_img);
        TextView textView = (TextView) viewInflate.findViewById(R.id.intro_title);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.intro_description);
        textView.setText(this.mListScreen.get(i).getTitle());
        textView2.setText(this.mListScreen.get(i).getDescription());
        imageView.setImageResource(this.mListScreen.get(i).getScreenImg());
        viewGroup.addView(viewInflate);
        return viewInflate;
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.mListScreen.size();
    }

    @Override // android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }
}
