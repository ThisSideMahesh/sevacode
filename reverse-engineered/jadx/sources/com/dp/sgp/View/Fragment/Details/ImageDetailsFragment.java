package com.dp.sgp.View.Fragment.Details;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
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
import com.dp.sgp.Constants.Key;
import com.dp.sgp.R;
import com.dp.sgp.util.ImageUtils;

/* JADX INFO: loaded from: classes.dex */
public class ImageDetailsFragment extends Fragment {
    ImageView iv_auto_image_slider;
    View rootview;
    String url = "";
    String lStrLink = "";
    String strtext = "";

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_image_details, viewGroup, false);
        this.rootview = viewInflate;
        this.iv_auto_image_slider = (ImageView) viewInflate.findViewById(R.id.iv_auto_image_slider);
        if (getArguments() != null) {
            this.strtext = getArguments().getString(Key.MESSAGE);
            String string = getArguments().getString("media_url");
            this.url = string;
            Log.e("URL URL", string);
            getActivity().setTitle(this.strtext);
            RequestOptions requestOptions = new RequestOptions();
            requestOptions.placeholder(ImageUtils.getRandomDrawbleColor());
            requestOptions.error(ImageUtils.getRandomDrawbleColor());
            requestOptions.diskCacheStrategy(DiskCacheStrategy.ALL);
            Glide.with(getActivity()).load(this.url).apply(requestOptions).listener(new RequestListener<Drawable>() { // from class: com.dp.sgp.View.Fragment.Details.ImageDetailsFragment.1
                @Override // com.bumptech.glide.request.RequestListener
                public boolean onLoadFailed(GlideException glideException, Object obj, Target<Drawable> target, boolean z) {
                    return false;
                }

                @Override // com.bumptech.glide.request.RequestListener
                public boolean onResourceReady(Drawable drawable, Object obj, Target<Drawable> target, DataSource dataSource, boolean z) {
                    return false;
                }
            }).transition(DrawableTransitionOptions.withCrossFade()).into(this.iv_auto_image_slider);
        }
        return this.rootview;
    }
}
