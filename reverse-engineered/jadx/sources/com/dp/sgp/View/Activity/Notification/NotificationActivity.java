package com.dp.sgp.View.Activity.Notification;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.Adapters.ClassicsNotificationAdapter;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.HomeResponse.Banner;
import com.dp.sgp.Model.HomeResponse.NotificationResponse;
import com.dp.sgp.Model.HomeResponse.SendHomeBody;
import com.dp.sgp.Model.HomeResponse.Vibhag;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.dp.sgp.View.Activity.Home.MainActivity;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class NotificationActivity extends AppCompatActivity {
    String LstrToken;
    DataHandler dataHandler;
    ImageView img_Home;
    String message;
    ClassicsNotificationAdapter newsAdapter;
    TextView notifation_msg;
    private ProgressDialog pdialog;
    ProgressDialog progressDialog;
    private RecyclerView recyclerView;
    SendHomeBody sendHomeBody;
    String status;
    View v;
    private List<Vibhag> vibhag;
    String lStrToken = "";
    int updateIndex = 0;
    String device_token = "";
    String user_id = "";
    private List<Banner> data = null;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_notification);
        this.notifation_msg = (TextView) findViewById(R.id.notifation_msg);
        this.recyclerView = (RecyclerView) findViewById(R.id.rv_audio_video);
        ImageView imageView = (ImageView) findViewById(R.id.img_Home);
        this.img_Home = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Notification.NotificationActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NotificationActivity.this.startActivity(new Intent(NotificationActivity.this, (Class<?>) MainActivity.class));
                NotificationActivity.this.finish();
            }
        });
        this.vibhag = new ArrayList();
        this.dataHandler = new DataHandler(this);
        this.sendHomeBody = new SendHomeBody();
        this.data = new ArrayList();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sendHomeBody.setDevice_token(this.device_token);
        this.sendHomeBody.setUser_id(this.user_id);
        HomeScreen();
        this.recyclerView.addOnItemTouchListener(new RecyclerTouchListener(this, this.recyclerView, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Activity.Notification.NotificationActivity.2
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                Banner banner = (Banner) NotificationActivity.this.data.get(i);
                if (banner.getUrl() != null) {
                    if (banner.getUrl().equalsIgnoreCase("")) {
                        Toast.makeText(NotificationActivity.this, "Details not availabel", 0).show();
                        return;
                    }
                    Intent intent = new Intent(NotificationActivity.this, (Class<?>) NotificationDetailsActivity.class);
                    intent.putExtra(Key.MESSAGE, banner.getTitle());
                    intent.putExtra("media_url", banner.getUrl());
                    NotificationActivity.this.startActivity(intent);
                    return;
                }
                Toast.makeText(NotificationActivity.this, "Details not availabel", 0).show();
            }
        }));
    }

    public void HomeScreen() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).Notifications(this.sendHomeBody, new Callback<NotificationResponse>() { // from class: com.dp.sgp.View.Activity.Notification.NotificationActivity.3
            @Override // retrofit.Callback
            public void success(NotificationResponse notificationResponse, Response response) {
                if (notificationResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(notificationResponse));
                    NotificationActivity.this.message = notificationResponse.getMessage();
                    NotificationActivity.this.status = notificationResponse.getStatus();
                    if (notificationResponse.getData() != null) {
                        NotificationActivity.this.data = notificationResponse.getData();
                        if (NotificationActivity.this.data.size() > 0) {
                            NotificationActivity.this.notifation_msg.setText(notificationResponse.getUnread_count() + "\nTotal\n");
                            NotificationActivity notificationActivity = NotificationActivity.this;
                            ClassicsNotificationAdapter classicsNotificationAdapter = new ClassicsNotificationAdapter(notificationActivity, notificationActivity.data);
                            NotificationActivity.this.recyclerView.setLayoutManager(new LinearLayoutManager(NotificationActivity.this));
                            NotificationActivity.this.recyclerView.setItemAnimator(new DefaultItemAnimator());
                            NotificationActivity.this.recyclerView.setAdapter(classicsNotificationAdapter);
                        }
                    }
                }
                NotificationActivity.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                NotificationActivity.this.progressDialog.dismiss();
            }
        });
    }
}
