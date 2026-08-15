package com.dp.sgp.View.Activity.Home;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class BaseActivity extends AppCompatActivity {
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public void setHeader(String str, boolean z, boolean z2) {
        View viewInflate = ((ViewStub) findViewById(R.id.vsHeader)).inflate();
        ((TextView) viewInflate.findViewById(R.id.txtHeading)).setText(str);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.img_Home);
        if (!z) {
            imageView.setVisibility(4);
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Home.BaseActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseActivity.this.finish();
            }
        });
    }
}
