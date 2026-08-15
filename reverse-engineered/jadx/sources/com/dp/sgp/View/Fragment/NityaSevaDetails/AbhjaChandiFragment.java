package com.dp.sgp.View.Fragment.NityaSevaDetails;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.dp.sgp.Adapters.AbhjaChandiAdapter;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.AbjachandiResponse;
import com.dp.sgp.Model.AbjachnadiData;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.Model.LanguageModel;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.dp.sgp.View.Fragment.Details.AbjaChandiDetailsFragment;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class AbhjaChandiFragment extends Fragment {
    DataHandler dataHandler;
    private List<LanguageModel> languageModels;
    LinearLayout lytmain;
    AbhjaChandiAdapter mAdapter;
    private String message;
    ProgressDialog progressDialog;
    RecyclerView rvArticles;
    SendCommonBody sendCommonBody;
    String status;
    View v;
    String lStrCode = "";
    String lStrSelectedLang = "";
    String strtext = "";
    private List<AbjachnadiData> data = null;
    String device_token = "";
    String user_id = "";

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_abhja_chandi, viewGroup, false);
        this.dataHandler = new DataHandler(getActivity());
        this.sendCommonBody = new SendCommonBody();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.languageModels = new ArrayList();
        this.data = new ArrayList();
        this.strtext = getArguments().getString(Key.MESSAGE);
        getActivity().setTitle(this.strtext);
        this.rvArticles = (RecyclerView) this.v.findViewById(R.id.my_recycler_view);
        this.lytmain = (LinearLayout) this.v.findViewById(R.id.main);
        this.rvArticles.setHasFixedSize(true);
        this.rvArticles.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rvArticles, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.AbhjaChandiFragment.1
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }
        }));
        this.lytmain.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.AbhjaChandiFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AbhjaChandiFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, new AbjaChandiDetailsFragment()).addToBackStack(null).commit();
            }
        });
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
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).abjachandi(this.sendCommonBody, new Callback<AbjachandiResponse>() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.AbhjaChandiFragment.3
            @Override // retrofit.Callback
            public void success(AbjachandiResponse abjachandiResponse, Response response) {
                if (abjachandiResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(abjachandiResponse));
                    AbhjaChandiFragment.this.message = abjachandiResponse.getMessage();
                    AbhjaChandiFragment.this.status = abjachandiResponse.getStatus();
                    if (abjachandiResponse.getData() != null) {
                        AbhjaChandiFragment.this.data = abjachandiResponse.getData();
                        if (AbhjaChandiFragment.this.data != null && AbhjaChandiFragment.this.data.size() > 0) {
                            AbhjaChandiFragment.this.mAdapter = new AbhjaChandiAdapter(AbhjaChandiFragment.this.getActivity(), AbhjaChandiFragment.this.data);
                            AbhjaChandiFragment.this.rvArticles.setLayoutManager(new LinearLayoutManager(AbhjaChandiFragment.this.getActivity()));
                            AbhjaChandiFragment.this.rvArticles.setItemAnimator(new DefaultItemAnimator());
                            AbhjaChandiFragment.this.rvArticles.setAdapter(AbhjaChandiFragment.this.mAdapter);
                            AbhjaChandiFragment.this.rvArticles.setHasFixedSize(true);
                        }
                    }
                }
                AbhjaChandiFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                AbhjaChandiFragment.this.progressDialog.dismiss();
            }
        });
    }
}
