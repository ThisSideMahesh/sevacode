package com.dp.sgp.View.Fragment.NityaSevaDetails;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dp.sgp.Adapters.SevaAdapter;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.AbjachandiResponse;
import com.dp.sgp.Model.AbjachnadiData;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.Model.LanguageModel;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class SevaMonthlyFragment extends Fragment {
    DataHandler dataHandler;
    private List<LanguageModel> languageModels;
    SevaAdapter mAdapter;
    private String message;
    ProgressDialog progressDialog;
    RecyclerView rvArticles;
    SendCommonBody sendCommonBody;
    String status;
    View v;
    String lStrCode = "";
    String lStrSelectedLang = "";
    private List<AbjachnadiData> data = null;
    private List<AbjachnadiData> modifieddata = null;
    String device_token = "";
    String user_id = "";

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_seva_weekly, viewGroup, false);
        getActivity().setTitle("माझी सेवा");
        this.dataHandler = new DataHandler(getActivity());
        this.sendCommonBody = new SendCommonBody();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.data = new ArrayList();
        this.modifieddata = new ArrayList();
        this.languageModels = new ArrayList();
        RecyclerView recyclerView = (RecyclerView) this.v.findViewById(R.id.my_recycler_view);
        this.rvArticles = recyclerView;
        recyclerView.setHasFixedSize(true);
        for (int i = 0; i < 30; i++) {
            LanguageModel languageModel = new LanguageModel();
            languageModel.setCode((new Random().nextInt(901) + 100) + "");
            languageModel.setName("SwamiCharitra \nParayan");
            this.languageModels.add(languageModel);
        }
        this.rvArticles.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rvArticles, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.SevaMonthlyFragment.1
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i2) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i2) {
            }
        }));
        abjachandi();
        return this.v;
    }

    public void abjachandi() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).abjachandi(this.sendCommonBody, new Callback<AbjachandiResponse>() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.SevaMonthlyFragment.2
            @Override // retrofit.Callback
            public void success(AbjachandiResponse abjachandiResponse, Response response) {
                if (abjachandiResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(abjachandiResponse));
                    SevaMonthlyFragment.this.message = abjachandiResponse.getMessage();
                    SevaMonthlyFragment.this.status = abjachandiResponse.getStatus();
                    if (abjachandiResponse.getData() != null) {
                        SevaMonthlyFragment.this.data = abjachandiResponse.getData();
                        if (SevaMonthlyFragment.this.data != null && SevaMonthlyFragment.this.data.size() > 0) {
                            for (int i = 0; i < SevaMonthlyFragment.this.data.size(); i++) {
                                if (((AbjachnadiData) SevaMonthlyFragment.this.data.get(i)).getTypeName().equalsIgnoreCase("कौटूंबिक")) {
                                    AbjachnadiData abjachnadiData = new AbjachnadiData();
                                    abjachnadiData.setList_name(((AbjachnadiData) SevaMonthlyFragment.this.data.get(i)).getList_name());
                                    abjachnadiData.setList_value(((AbjachnadiData) SevaMonthlyFragment.this.data.get(i)).getList_value());
                                    abjachnadiData.setList_type(((AbjachnadiData) SevaMonthlyFragment.this.data.get(i)).getList_type());
                                    SevaMonthlyFragment.this.modifieddata.add(abjachnadiData);
                                }
                            }
                            if (SevaMonthlyFragment.this.modifieddata != null && SevaMonthlyFragment.this.modifieddata.size() > 0) {
                                SevaMonthlyFragment.this.mAdapter = new SevaAdapter(SevaMonthlyFragment.this.getActivity(), SevaMonthlyFragment.this.modifieddata);
                                SevaMonthlyFragment.this.rvArticles.setLayoutManager(new GridLayoutManager(SevaMonthlyFragment.this.getActivity(), 2));
                                SevaMonthlyFragment.this.rvArticles.setItemAnimator(new DefaultItemAnimator());
                                SevaMonthlyFragment.this.rvArticles.setAdapter(SevaMonthlyFragment.this.mAdapter);
                            }
                        }
                    }
                }
                SevaMonthlyFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SevaMonthlyFragment.this.progressDialog.dismiss();
            }
        });
    }
}
