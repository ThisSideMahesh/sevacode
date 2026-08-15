package com.dp.sgp.View.Fragment.Youtube;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dp.sgp.Adapters.NewCourseDetailsAdapter;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.HomeResponse.SendHomeBody;
import com.dp.sgp.Model.HomeResponse.Youtube;
import com.dp.sgp.Model.YoutubeResponse;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.dp.sgp.View.Activity.Youtube.YoutubeWebviewActivity;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class YoutubeGridFragment extends Fragment {
    DataHandler dataHandler;
    String message;
    ProgressDialog progressDialog;
    private RecyclerView recyclerView;
    private RecyclerView rv_popular_video_content;
    SendHomeBody sendHomeBody;
    String status;
    View v;
    String device_token = "";
    String user_id = "";
    List<Youtube> youtubelist = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_youtube_grid, viewGroup, false);
        getActivity().setTitle("New Videos");
        this.rv_popular_video_content = (RecyclerView) this.v.findViewById(R.id.youtube_horizontalrecyclerView);
        this.youtubelist = new ArrayList();
        this.dataHandler = new DataHandler(getActivity());
        this.sendHomeBody = new SendHomeBody();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sendHomeBody.setDevice_token(this.device_token);
        this.sendHomeBody.setUser_id(this.user_id);
        HomeScreen();
        this.rv_popular_video_content.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_popular_video_content, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.Youtube.YoutubeGridFragment.1
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                Youtube youtube = YoutubeGridFragment.this.youtubelist.get(i);
                Intent intent = new Intent(YoutubeGridFragment.this.getContext(), (Class<?>) YoutubeWebviewActivity.class);
                intent.putExtra("media_url", youtube.getLinks());
                YoutubeGridFragment.this.startActivity(intent);
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
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).Youtube(this.sendHomeBody, new Callback<YoutubeResponse>() { // from class: com.dp.sgp.View.Fragment.Youtube.YoutubeGridFragment.2
            @Override // retrofit.Callback
            public void success(YoutubeResponse youtubeResponse, Response response) {
                if (youtubeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(youtubeResponse));
                    YoutubeGridFragment.this.message = youtubeResponse.getMessage();
                    YoutubeGridFragment.this.status = youtubeResponse.getStatus();
                    if (youtubeResponse.getData() != null) {
                        YoutubeGridFragment.this.youtubelist = youtubeResponse.getData();
                        NewCourseDetailsAdapter newCourseDetailsAdapter = new NewCourseDetailsAdapter(YoutubeGridFragment.this.getActivity(), YoutubeGridFragment.this.youtubelist);
                        YoutubeGridFragment.this.rv_popular_video_content.setLayoutManager(new GridLayoutManager(YoutubeGridFragment.this.getActivity(), 2));
                        YoutubeGridFragment.this.rv_popular_video_content.setItemAnimator(new DefaultItemAnimator());
                        YoutubeGridFragment.this.rv_popular_video_content.setAdapter(newCourseDetailsAdapter);
                    }
                }
                YoutubeGridFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                YoutubeGridFragment.this.progressDialog.dismiss();
            }
        });
    }
}
