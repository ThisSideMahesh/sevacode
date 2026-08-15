package com.dp.sgp.View.Fragment.SwamiCharitra;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.Adapters.SwamiCharitraAdapter;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.Model.SwamiCharitraModel;
import com.dp.sgp.Model.SwamiDatum;
import com.dp.sgp.Model.SwamiExample;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.dp.sgp.View.Activity.Deatils.SwamiCharitraDetailActivity;
import com.dp.sgp.database.DatabaseTables;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class SwamiCharitraFragment extends Fragment {
    private List<SwamiCharitraModel> NewswamiCharitraModelList;
    Button btn_reset;
    private String complete_prayan;
    private String current_adhyay;
    private List<SwamiDatum> data;
    DataHandler dataHandler;
    SwamiCharitraAdapter mAdapter;
    private String message;
    TextView pos;
    ProgressDialog progressDialog;
    Runnable runnable;
    RecyclerView rvArticles;
    SendCommonBody sendCommonBody;
    String status;
    private List<SwamiCharitraModel> swamiCharitraModelList;
    TextView txt_adhayay;
    View v;
    String lStrCode = "";
    String lStrSelectedLang = "";
    String strtext = "";
    int count = 0;
    int postion = 0;
    String device_token = "";
    String user_id = "";
    Handler handler = new Handler();
    int delay = 10000;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_swami_charitra, viewGroup, false);
        this.dataHandler = new DataHandler(getActivity());
        this.sendCommonBody = new SendCommonBody();
        this.data = new ArrayList();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.txt_adhayay = (TextView) this.v.findViewById(R.id.txt_adhayay);
        this.pos = (TextView) this.v.findViewById(R.id.pos);
        getActivity().setTitle("श्री स्वामी चरित्र");
        this.swamiCharitraModelList = new ArrayList();
        this.NewswamiCharitraModelList = new ArrayList();
        RecyclerView recyclerView = (RecyclerView) this.v.findViewById(R.id.my_recycler_view);
        this.rvArticles = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.rvArticles.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rvArticles, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.SwamiCharitraFragment.1
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                SwamiDatum swamiDatum = (SwamiDatum) SwamiCharitraFragment.this.data.get(i);
                if (swamiDatum.getStatus().equalsIgnoreCase("3")) {
                    Toast.makeText(SwamiCharitraFragment.this.getActivity(), "You are not eligible for to view this अधयाय please complete privious अधयाय ", 0).show();
                    return;
                }
                Intent intent = new Intent(SwamiCharitraFragment.this.getActivity(), (Class<?>) SwamiCharitraDetailActivity.class);
                intent.putExtra(DatabaseTables.ID, swamiDatum.getId());
                intent.putExtra("Title", swamiDatum.getTitle());
                intent.putExtra(DatabaseTables.DESCRIPTION, swamiDatum.getDescription());
                intent.putExtra("Status", swamiDatum.getStatus());
                intent.putExtra("position", i);
                SwamiCharitraFragment.this.startActivity(intent);
            }
        }));
        return this.v;
    }

    public void saramrut() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).saramrut(this.sendCommonBody, new Callback<SwamiExample>() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.SwamiCharitraFragment.2
            @Override // retrofit.Callback
            public void success(SwamiExample swamiExample, Response response) {
                if (swamiExample != null) {
                    Log.d("appUpdateBody", new Gson().toJson(swamiExample));
                    SwamiCharitraFragment.this.message = swamiExample.getMessage();
                    SwamiCharitraFragment.this.status = swamiExample.getStatus();
                    if (swamiExample.getData() != null) {
                        SwamiCharitraFragment.this.data = swamiExample.getData();
                        if (SwamiCharitraFragment.this.data != null && SwamiCharitraFragment.this.data.size() > 0) {
                            SwamiCharitraFragment.this.txt_adhayay.setText(((SwamiDatum) SwamiCharitraFragment.this.data.get(0)).getCurrent_adhyay());
                            SwamiCharitraFragment.this.pos.setText(((SwamiDatum) SwamiCharitraFragment.this.data.get(0)).getComplete_prayan());
                            SwamiCharitraFragment.this.mAdapter = new SwamiCharitraAdapter(SwamiCharitraFragment.this.getActivity(), SwamiCharitraFragment.this.data);
                            SwamiCharitraFragment.this.rvArticles.setLayoutManager(new LinearLayoutManager(SwamiCharitraFragment.this.getActivity()));
                            SwamiCharitraFragment.this.rvArticles.setItemAnimator(new DefaultItemAnimator());
                            SwamiCharitraFragment.this.rvArticles.setAdapter(SwamiCharitraFragment.this.mAdapter);
                            SwamiCharitraFragment.this.rvArticles.setHasFixedSize(true);
                        }
                    }
                }
                SwamiCharitraFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SwamiCharitraFragment.this.progressDialog.dismiss();
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        saramrut();
        super.onResume();
    }
}
