package com.dp.sgp.Adapters;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.Target;
import com.dp.sgp.Model.HomeResponse.Youtube;
import com.dp.sgp.R;
import com.dp.sgp.util.ImageUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class YoutubeVideoAdapter extends RecyclerView.Adapter<ViewHolder> {
    Context context;
    List<Youtube> list;

    public YoutubeVideoAdapter(List<Youtube> list, Context context) {
        this.list = list;
        this.context = context;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R.layout.view_my_articles, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(final ViewHolder viewHolder, int i) {
        viewHolder.textViewAndroid.setText(this.list.get(i).getTitle());
        RequestOptions requestOptions = new RequestOptions();
        requestOptions.placeholder(ImageUtils.getRandomDrawbleColor());
        requestOptions.error(ImageUtils.getRandomDrawbleColor());
        requestOptions.diskCacheStrategy(DiskCacheStrategy.ALL);
        requestOptions.centerCrop();
        Glide.with(this.context).load(this.list.get(i).getImage()).apply(requestOptions).listener(new RequestListener<Drawable>() { // from class: com.dp.sgp.Adapters.YoutubeVideoAdapter.1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target<Drawable> target, boolean z) {
                viewHolder.progressBar.setVisibility(8);
                viewHolder.VideoPreviewPlayButton.setVisibility(8);
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(Drawable drawable, Object obj, Target<Drawable> target, DataSource dataSource, boolean z) {
                viewHolder.progressBar.setVisibility(8);
                viewHolder.VideoPreviewPlayButton.setVisibility(0);
                return false;
            }
        }).transition(DrawableTransitionOptions.withCrossFade()).into(viewHolder.imageViewAndroid);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        ImageView VideoPreviewPlayButton;
        ImageView imag_url;
        ImageView imageViewAndroid;
        TextView lbl_txt_AmsCode;
        TextView lbl_txt_Rank;
        ProgressBar progressBar;
        TextView textViewAndroid;
        TextView tvreginallevel;
        TextView txt_lbl_Assesment;

        public ViewHolder(View view) {
            super(view);
            this.progressBar = (ProgressBar) view.findViewById(R.id.prograss_load_photo);
            this.textViewAndroid = (TextView) view.findViewById(R.id.tvName);
            this.VideoPreviewPlayButton = (ImageView) view.findViewById(R.id.VideoPreviewPlayButton);
            this.imageViewAndroid = (ImageView) view.findViewById(R.id.ivFollowImage);
        }
    }
}
