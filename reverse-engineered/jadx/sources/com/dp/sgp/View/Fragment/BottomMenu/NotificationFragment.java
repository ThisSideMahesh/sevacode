package com.dp.sgp.View.Fragment.BottomMenu;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
import com.dp.sgp.View.Fragment.Details.ImageDetailsFragment;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class NotificationFragment extends Fragment {
    String LstrToken;
    DataHandler dataHandler;
    private FragmentManager fragmentManager;
    String message;
    ClassicsNotificationAdapter newsAdapter;
    TextView notifation_msg;
    private ProgressDialog pdialog;
    ProgressDialog progressDialog;
    private RecyclerView recyclerView;
    SendHomeBody sendHomeBody;
    String status;
    FragmentTransaction transaction;
    View v;
    private List<Vibhag> vibhag;
    Fragment fragment = null;
    String lStrToken = "";
    int updateIndex = 0;
    String device_token = "";
    String user_id = "";
    private List<Banner> data = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_notification, viewGroup, false);
        this.v = viewInflate;
        this.recyclerView = (RecyclerView) viewInflate.findViewById(R.id.rv_audio_video);
        this.notifation_msg = (TextView) this.v.findViewById(R.id.notifation_msg);
        getActivity().setTitle("अधिकृत संदेश");
        this.vibhag = new ArrayList();
        this.dataHandler = new DataHandler(getActivity());
        this.sendHomeBody = new SendHomeBody();
        this.data = new ArrayList();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sendHomeBody.setDevice_token(this.device_token);
        this.sendHomeBody.setUser_id(this.user_id);
        HomeScreen();
        this.recyclerView.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.recyclerView, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.NotificationFragment.1
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                Banner banner = (Banner) NotificationFragment.this.data.get(i);
                if (banner.getUrl() != null) {
                    if (banner.getUrl().equalsIgnoreCase("")) {
                        Toast.makeText(NotificationFragment.this.getActivity(), "Details not availabel", 0).show();
                        return;
                    }
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(Key.MESSAGE, banner.getTitle());
                    bundle2.putString("media_url", banner.getUrl());
                    ImageDetailsFragment imageDetailsFragment = new ImageDetailsFragment();
                    imageDetailsFragment.setArguments(bundle2);
                    NotificationFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, imageDetailsFragment).addToBackStack(null).commit();
                    return;
                }
                Toast.makeText(NotificationFragment.this.getActivity(), "Details not availabel", 0).show();
            }
        }));
        return this.v;
    }

    public void HomeScreen() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).Notifications(this.sendHomeBody, new Callback<NotificationResponse>() { // from class: com.dp.sgp.View.Fragment.BottomMenu.NotificationFragment.2
            @Override // retrofit.Callback
            public void success(NotificationResponse notificationResponse, Response response) {
                if (notificationResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(notificationResponse));
                    NotificationFragment.this.message = notificationResponse.getMessage();
                    NotificationFragment.this.status = notificationResponse.getStatus();
                    if (notificationResponse.getData() != null) {
                        NotificationFragment.this.data = notificationResponse.getData();
                        if (NotificationFragment.this.data.size() > 0) {
                            NotificationFragment.this.notifation_msg.setText(notificationResponse.getUnread_count() + "\nTotal\n");
                            ClassicsNotificationAdapter classicsNotificationAdapter = new ClassicsNotificationAdapter(NotificationFragment.this.getActivity(), NotificationFragment.this.data);
                            NotificationFragment.this.recyclerView.setLayoutManager(new LinearLayoutManager(NotificationFragment.this.getActivity()));
                            NotificationFragment.this.recyclerView.setItemAnimator(new DefaultItemAnimator());
                            NotificationFragment.this.recyclerView.setAdapter(classicsNotificationAdapter);
                        }
                    }
                }
                NotificationFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                NotificationFragment.this.progressDialog.dismiss();
            }
        });
    }
}
