package com.dp.sgp.Adapters;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.Target;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.R;
import com.dp.sgp.util.ImageUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VibhagGridViewActivity extends BaseAdapter {
    private final List<CommonData> gridViewString;
    private Context mContext;

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    public VibhagGridViewActivity(Context context, List<CommonData> list) {
        this.mContext = context;
        this.gridViewString = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.gridViewString.size();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
        if (view != null) {
            return view;
        }
        new View(this.mContext);
        View viewInflate = layoutInflater.inflate(R.layout.grid_vibagh_row, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.title);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.title_lag);
        textView.setText(this.gridViewString.get(i).getTitle());
        RequestOptions requestOptions = new RequestOptions();
        requestOptions.placeholder(ImageUtils.getRandomDrawbleColor());
        requestOptions.error(ImageUtils.getRandomDrawbleColor());
        requestOptions.diskCacheStrategy(DiskCacheStrategy.ALL);
        requestOptions.centerCrop();
        Glide.with(this.mContext).load(this.gridViewString.get(i).getImage()).apply(requestOptions).listener(new RequestListener<Drawable>() { // from class: com.dp.sgp.Adapters.VibhagGridViewActivity.1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target<Drawable> target, boolean z) {
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(Drawable drawable, Object obj, Target<Drawable> target, DataSource dataSource, boolean z) {
                return false;
            }
        }).transition(DrawableTransitionOptions.withCrossFade()).into(imageView);
        return viewInflate;
    }
}
