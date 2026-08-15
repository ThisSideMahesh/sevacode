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
import com.dp.sgp.Adapters.OfflineSwamiCharitraAdapter;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.Model.SwamiCharitraModel;
import com.dp.sgp.Model.SwamiDatum;
import com.dp.sgp.Model.SwamiExample;
import com.dp.sgp.Model.saramrut.DBSwamiDatum;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.dp.sgp.View.Activity.Deatils.OfflineSwamiCharitraDetailActivity;
import com.dp.sgp.database.DatabaseHelperClass;
import com.dp.sgp.database.DatabaseTables;
import com.dp.sgp.util.AssestParser;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class OfflineSwamiCharitraFragment extends Fragment {
    private List<SwamiCharitraModel> NewswamiCharitraModelList;
    Button btn_reset;
    private String complete_prayan;
    private String current_adhyay;
    private List<SwamiDatum> data;
    DataHandler dataHandler;
    private List<DBSwamiDatum> dbSwamiData;
    private List<DBSwamiDatum> dbSwamiDatumList;
    OfflineSwamiCharitraAdapter mAdapter;
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
        this.dbSwamiDatumList = new ArrayList();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.txt_adhayay = (TextView) this.v.findViewById(R.id.txt_adhayay);
        this.pos = (TextView) this.v.findViewById(R.id.pos);
        getActivity().setTitle("श्री स्वामी चरित्र ऑफलाइन");
        this.dbSwamiData = new ArrayList();
        this.swamiCharitraModelList = new ArrayList();
        this.NewswamiCharitraModelList = new ArrayList();
        RecyclerView recyclerView = (RecyclerView) this.v.findViewById(R.id.my_recycler_view);
        this.rvArticles = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.rvArticles.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rvArticles, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.OfflineSwamiCharitraFragment.1
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                DBSwamiDatum dBSwamiDatum = (DBSwamiDatum) OfflineSwamiCharitraFragment.this.dbSwamiDatumList.get(i);
                if (dBSwamiDatum.getStatus().equalsIgnoreCase("3")) {
                    Toast.makeText(OfflineSwamiCharitraFragment.this.getActivity(), "You are not eligible for to view this अधयाय please complete privious अधयाय ", 0).show();
                    return;
                }
                Intent intent = new Intent(OfflineSwamiCharitraFragment.this.getActivity(), (Class<?>) OfflineSwamiCharitraDetailActivity.class);
                intent.putExtra(DatabaseTables.ID, dBSwamiDatum.getIds());
                intent.putExtra("Title", dBSwamiDatum.getTitle());
                intent.putExtra(DatabaseTables.DESCRIPTION, dBSwamiDatum.getDescription());
                intent.putExtra("Status", dBSwamiDatum.getStatus());
                intent.putExtra("position", i);
                OfflineSwamiCharitraFragment.this.startActivity(intent);
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
        ApiService apiService = (ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class);
        Log.d("sendCommonBody", new Gson().toJson(this.sendCommonBody));
        apiService.saramrut(this.sendCommonBody, new Callback<SwamiExample>() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.OfflineSwamiCharitraFragment.2
            @Override // retrofit.Callback
            public void success(SwamiExample swamiExample, Response response) {
                if (swamiExample != null) {
                    Log.d("appUpdateBody", new Gson().toJson(swamiExample));
                    OfflineSwamiCharitraFragment.this.message = swamiExample.getMessage();
                    OfflineSwamiCharitraFragment.this.status = swamiExample.getStatus();
                    if (swamiExample.getData() != null) {
                        OfflineSwamiCharitraFragment.this.data = swamiExample.getData();
                        if (OfflineSwamiCharitraFragment.this.data != null) {
                            OfflineSwamiCharitraFragment.this.data.size();
                        }
                    }
                }
                OfflineSwamiCharitraFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                OfflineSwamiCharitraFragment.this.progressDialog.dismiss();
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        display();
        super.onResume();
    }

    public void display() {
        int i;
        if (this.dataHandler.getData("adhaycount").equalsIgnoreCase("")) {
            this.txt_adhayay.setText("1");
        } else {
            String data = this.dataHandler.getData("adhaycount");
            if (data.equalsIgnoreCase("") || (i = Integer.parseInt(data)) == 1) {
                this.txt_adhayay.setText("1");
            } else {
                this.txt_adhayay.setText((i + 1) + "");
            }
        }
        if (this.dataHandler.getData("parayancount").equalsIgnoreCase("")) {
            this.pos.setText("0");
        } else {
            String data2 = this.dataHandler.getData("parayancount");
            if (data2.equalsIgnoreCase("")) {
                this.pos.setText("0");
            } else {
                this.pos.setText(Integer.parseInt(data2) + "");
            }
        }
        String jsonFromAssets = null;
        try {
            jsonFromAssets = AssestParser.getJsonFromAssets(getActivity(), "newswamicharitra.json");
            Log.i("data", jsonFromAssets);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Gson gson = new Gson();
        SwamiExample swamiExample = (SwamiExample) gson.fromJson(jsonFromAssets, new TypeToken<SwamiExample>() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.OfflineSwamiCharitraFragment.3
        }.getType());
        if (swamiExample == null || swamiExample.getData() == null) {
            return;
        }
        List<SwamiDatum> data3 = swamiExample.getData();
        this.data = data3;
        if (data3 == null || data3.size() <= 0) {
            return;
        }
        DatabaseHelperClass databaseHelperClass = new DatabaseHelperClass(getActivity());
        List<DBSwamiDatum> employeeList = databaseHelperClass.getEmployeeList();
        if (employeeList.size() > 0) {
            if (employeeList == null || employeeList.size() <= 0) {
                return;
            }
            this.dbSwamiDatumList = employeeList;
            Log.d("offlineBody", gson.toJson(employeeList));
            this.mAdapter = new OfflineSwamiCharitraAdapter(getActivity(), employeeList);
            this.rvArticles.setLayoutManager(new LinearLayoutManager(getActivity()));
            this.rvArticles.setItemAnimator(new DefaultItemAnimator());
            this.rvArticles.setAdapter(this.mAdapter);
            this.rvArticles.setHasFixedSize(true);
            return;
        }
        for (int i2 = 0; i2 < this.data.size(); i2++) {
            DatabaseHelperClass databaseHelperClass2 = new DatabaseHelperClass(getActivity());
            DBSwamiDatum dBSwamiDatum = new DBSwamiDatum();
            dBSwamiDatum.setTitle(this.data.get(i2).getTitle());
            dBSwamiDatum.setDescription(this.data.get(i2).getDescription());
            dBSwamiDatum.setComplete_prayan("0");
            if (i2 == 0) {
                dBSwamiDatum.setStatus("2");
            } else {
                dBSwamiDatum.setStatus("3");
            }
            dBSwamiDatum.setCurrent_adhyay("0");
            dBSwamiDatum.setCompleted_on("ऑफलाइन मोडमध्ये कार्य करेल");
            dBSwamiDatum.setImage(this.data.get(i2).getImage());
            databaseHelperClass2.addEmployee(dBSwamiDatum);
        }
        List<DBSwamiDatum> employeeList2 = databaseHelperClass.getEmployeeList();
        this.dbSwamiData = employeeList2;
        if (employeeList2 == null || employeeList2.size() <= 0) {
            return;
        }
        List<DBSwamiDatum> list = this.dbSwamiData;
        this.dbSwamiDatumList = list;
        Log.d("savinglineBody", gson.toJson(list));
        this.mAdapter = new OfflineSwamiCharitraAdapter(getActivity(), this.dbSwamiData);
        this.rvArticles.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.rvArticles.setItemAnimator(new DefaultItemAnimator());
        this.rvArticles.setAdapter(this.mAdapter);
        this.rvArticles.setHasFixedSize(true);
    }
}
