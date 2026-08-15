package com.dp.sgp.View.Activity.Notification;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
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
import com.dp.sgp.Constants.Key;
import com.dp.sgp.R;
import com.dp.sgp.util.ImageUtils;

/* JADX INFO: loaded from: classes.dex */
public class NotificationDetailsActivity extends AppCompatActivity {
    ImageView img_Home;
    ImageView iv_auto_image_slider;
    View rootview;
    TextView txtHeading;
    String url = "";
    String lStrLink = "";
    String strtext = "";

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_notification_details);
        this.txtHeading = (TextView) findViewById(R.id.txtHeading);
        ImageView imageView = (ImageView) findViewById(R.id.img_Home);
        this.img_Home = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Notification.NotificationDetailsActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NotificationDetailsActivity.this.finish();
            }
        });
        this.iv_auto_image_slider = (ImageView) findViewById(R.id.iv_auto_image_slider);
        Intent intent = getIntent();
        if (intent != null) {
            this.url = intent.getStringExtra("media_url");
            this.strtext = intent.getStringExtra(Key.MESSAGE);
            Log.e("URL URL", this.url);
            this.txtHeading.setText(this.strtext);
            RequestOptions requestOptions = new RequestOptions();
            requestOptions.placeholder(ImageUtils.getRandomDrawbleColor());
            requestOptions.error(ImageUtils.getRandomDrawbleColor());
            requestOptions.diskCacheStrategy(DiskCacheStrategy.ALL);
            Glide.with((FragmentActivity) this).load(this.url).apply(requestOptions).listener(new RequestListener<Drawable>() { // from class: com.dp.sgp.View.Activity.Notification.NotificationDetailsActivity.2
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
    }
}
