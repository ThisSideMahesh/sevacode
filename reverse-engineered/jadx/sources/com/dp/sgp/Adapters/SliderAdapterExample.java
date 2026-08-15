package com.dp.sgp.Adapters;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.Target;
import com.dp.sgp.Model.HomeResponse.Banner;
import com.dp.sgp.R;
import com.dp.sgp.autoimageslider.SliderViewAdapter;
import com.dp.sgp.util.ImageUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SliderAdapterExample extends SliderViewAdapter<SliderAdapterVH> {
    private Context context;
    private List<Banner> mSliderItems = new ArrayList();
    OnItemClickedListner onItemClickedListner;

    public interface OnItemClickedListner {
        void DetailedViewClicked(Banner banner);
    }

    public SliderAdapterExample(Context context, OnItemClickedListner onItemClickedListner) {
        this.context = context;
        this.onItemClickedListner = onItemClickedListner;
    }

    public void renewItems(List<Banner> list) {
        this.mSliderItems = list;
        notifyDataSetChanged();
    }

    public void deleteItem(int i) {
        this.mSliderItems.remove(i);
        notifyDataSetChanged();
    }

    public void addItem(Banner banner) {
        this.mSliderItems.add(banner);
        notifyDataSetChanged();
    }

    @Override // com.dp.sgp.autoimageslider.SliderViewAdapter
    public SliderAdapterVH onCreateViewHolder(ViewGroup viewGroup) {
        return new SliderAdapterVH(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.image_slider_layout_item, (ViewGroup) null));
    }

    @Override // com.dp.sgp.autoimageslider.SliderViewAdapter
    public void onBindViewHolder(SliderAdapterVH sliderAdapterVH, int i) {
        final Banner banner = this.mSliderItems.get(i);
        RequestOptions requestOptions = new RequestOptions();
        requestOptions.placeholder(ImageUtils.getRandomDrawbleColor());
        requestOptions.error(ImageUtils.getRandomDrawbleColor());
        requestOptions.diskCacheStrategy(DiskCacheStrategy.ALL);
        Glide.with(this.context).load(banner.getUrl()).apply(requestOptions).listener(new RequestListener<Drawable>() { // from class: com.dp.sgp.Adapters.SliderAdapterExample.1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target<Drawable> target, boolean z) {
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(Drawable drawable, Object obj, Target<Drawable> target, DataSource dataSource, boolean z) {
                return false;
            }
        }).transition(DrawableTransitionOptions.withCrossFade()).into(sliderAdapterVH.imageViewBackground);
        sliderAdapterVH.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.Adapters.SliderAdapterExample.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (banner.getUrl() == null || banner.getUrl().equalsIgnoreCase("")) {
                    return;
                }
                SliderAdapterExample.this.onItemClickedListner.DetailedViewClicked(banner);
            }
        });
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.mSliderItems.size();
    }

    class SliderAdapterVH extends SliderViewAdapter.ViewHolder {
        ImageView imageViewBackground;
        View itemView;

        public SliderAdapterVH(View view) {
            super(view);
            this.imageViewBackground = (ImageView) view.findViewById(R.id.iv_auto_image_slider);
            this.itemView = view;
        }
    }
}
