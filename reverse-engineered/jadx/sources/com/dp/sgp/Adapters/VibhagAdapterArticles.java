package com.dp.sgp.Adapters;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
public class VibhagAdapterArticles extends RecyclerView.Adapter<ViewHolder> {
    Context context;
    List<CommonData> list;

    public VibhagAdapterArticles(List<CommonData> list, Context context) {
        this.list = list;
        this.context = context;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R.layout.vibagh_view_articles, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        CommonData commonData = this.list.get(i);
        viewHolder.tvTitle.setText(commonData.getTitle());
        viewHolder.tvDesc.setText(commonData.getDescription());
        RequestOptions requestOptions = new RequestOptions();
        requestOptions.placeholder(ImageUtils.getRandomDrawbleColor());
        requestOptions.error(ImageUtils.getRandomDrawbleColor());
        requestOptions.diskCacheStrategy(DiskCacheStrategy.ALL);
        Glide.with(this.context).load(commonData.getImage()).apply(requestOptions).listener(new RequestListener<Drawable>() { // from class: com.dp.sgp.Adapters.VibhagAdapterArticles.1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target<Drawable> target, boolean z) {
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(Drawable drawable, Object obj, Target<Drawable> target, DataSource dataSource, boolean z) {
                return false;
            }
        }).transition(DrawableTransitionOptions.withCrossFade()).into(viewHolder.imgArticle);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        public Button btReadMore;
        public ImageView imgArticle;
        public TextView tvDesc;
        public TextView tvTitle;

        public ViewHolder(View view) {
            super(view);
            this.imgArticle = (ImageView) view.findViewById(R.id.imgArticle);
            this.tvTitle = (TextView) view.findViewById(R.id.tvTitle);
            this.tvDesc = (TextView) view.findViewById(R.id.tvDesc);
            this.btReadMore = (Button) view.findViewById(R.id.btReadMore);
        }
    }
}
