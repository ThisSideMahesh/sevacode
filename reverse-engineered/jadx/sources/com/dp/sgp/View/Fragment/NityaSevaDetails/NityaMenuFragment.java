package com.dp.sgp.View.Fragment.NityaSevaDetails;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dp.sgp.Adapters.AartiSanghraAdapter;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.Model.MainNityaseva.Aartisangrah;
import com.dp.sgp.Model.MainNityaseva.NityaSevaData;
import com.dp.sgp.Model.MainNityaseva.NityaSevaDataResponse;
import com.dp.sgp.Model.MainNityaseva.NityasevaMMainResponse;
import com.dp.sgp.Model.nityaseva.ProductData;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.dp.sgp.View.Fragment.TestSwipePages.TestSwpieFragment;
import com.dp.sgp.database.DatabaseHelperClass;
import com.dp.sgp.glvars.GlVars;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class NityaMenuFragment extends Fragment {
    Aartisangrah aartisangrah;
    AartiSanghraAdapter bhoopaliAdapter;
    ConnectionDetector connectionDetector;
    private DataHandler datHandler;
    private NityaSevaData data;
    DataHandler dataHandler;
    AartiSanghraAdapter eveningAdapter;
    RecyclerView.LayoutManager layoutManager;
    String message;
    AartiSanghraAdapter morningAdapter;
    NityaSevaDataResponse nityaSevaDataResponse;
    NityasevaMMainResponse nityaseva;
    ProgressDialog progressDialog;
    private RecyclerView rv_bhoopali;
    private RecyclerView rv_evening;
    private RecyclerView rv_morning;
    SendCommonBody sendCommonBody;
    String status;
    View v;
    String Channel_id = "";
    String coursename = "";
    String lStrToken = "";
    String device_token = "";
    String user_id = "";
    private ProductData dataList = null;
    private List<CommonData> bhoopalilist = null;
    private List<CommonData> morninglist = null;
    private List<CommonData> eveninglist = null;
    private List<CommonData> naivadyaAartiSakali1030AM = null;
    private List<CommonData> naivadyaaartisayankal = null;
    private List<CommonData> bhupaliaartisakali800AM = null;
    private List<CommonData> mantravibhag = null;
    private List<CommonData> stotravibhag = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_nitya_menu, viewGroup, false);
        getActivity().setTitle("नित्यसेवा");
        this.nityaSevaDataResponse = new NityaSevaDataResponse();
        this.dataHandler = new DataHandler(getActivity());
        this.sendCommonBody = new SendCommonBody();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.dataList = new ProductData();
        this.nityaseva = new NityasevaMMainResponse();
        this.data = new NityaSevaData();
        this.aartisangrah = new Aartisangrah();
        this.bhoopalilist = new ArrayList();
        this.morninglist = new ArrayList();
        this.eveninglist = new ArrayList();
        this.mantravibhag = new ArrayList();
        this.stotravibhag = new ArrayList();
        this.naivadyaAartiSakali1030AM = new ArrayList();
        this.naivadyaaartisayankal = new ArrayList();
        this.bhupaliaartisakali800AM = new ArrayList();
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.sendCommonBody.setType("0");
        this.sendCommonBody.setId("0");
        RecyclerView recyclerView = (RecyclerView) this.v.findViewById(R.id.rv_bhoopali);
        this.rv_bhoopali = recyclerView;
        recyclerView.setHasFixedSize(true);
        RecyclerView recyclerView2 = (RecyclerView) this.v.findViewById(R.id.rv_morning);
        this.rv_morning = recyclerView2;
        recyclerView2.setHasFixedSize(true);
        RecyclerView recyclerView3 = (RecyclerView) this.v.findViewById(R.id.rv_evening);
        this.rv_evening = recyclerView3;
        recyclerView3.setHasFixedSize(true);
        this.rv_bhoopali.setLayoutManager(new LinearLayoutManager(getActivity(), 1, false));
        this.rv_morning.setLayoutManager(new LinearLayoutManager(getActivity(), 1, false));
        this.rv_evening.setLayoutManager(new LinearLayoutManager(getActivity(), 1, false));
        this.rv_bhoopali.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_bhoopali, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.NityaMenuFragment.1
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = (CommonData) NityaMenuFragment.this.mantravibhag.get(i);
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, commonData.getDescription());
                bundle2.putString("subtitle", commonData.getTitle());
                bundle2.putString(DatabaseHelperClass.TITLE, "मंत्र विभाग");
                GlVars.Title = "नित्यसेवा";
                bundle2.putParcelableArrayList("Data", (ArrayList) NityaMenuFragment.this.mantravibhag);
                bundle2.putInt("position", i);
                TestSwpieFragment testSwpieFragment = new TestSwpieFragment();
                testSwpieFragment.setArguments(bundle2);
                NityaMenuFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, testSwpieFragment).addToBackStack(null).commit();
            }
        }));
        this.rv_morning.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_morning, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.NityaMenuFragment.2
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = (CommonData) NityaMenuFragment.this.stotravibhag.get(i);
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, commonData.getDescription());
                bundle2.putString("subtitle", commonData.getTitle());
                bundle2.putString(DatabaseHelperClass.TITLE, "स्तोत्र विभाग");
                GlVars.Title = "नित्यसेवा";
                bundle2.putParcelableArrayList("Data", (ArrayList) NityaMenuFragment.this.stotravibhag);
                bundle2.putInt("position", i);
                TestSwpieFragment testSwpieFragment = new TestSwpieFragment();
                testSwpieFragment.setArguments(bundle2);
                NityaMenuFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, testSwpieFragment).addToBackStack(null).commit();
            }
        }));
        NityaSevaDataResponse nitya = getNitya("Nitya");
        this.nityaSevaDataResponse = nitya;
        if (nitya.getData() != null) {
            NityaSevaData data = this.nityaSevaDataResponse.getData();
            this.data = data;
            this.aartisangrah = data.getAartisangrah();
            NityasevaMMainResponse nityaseva = this.data.getNityaseva();
            this.nityaseva = nityaseva;
            this.mantravibhag = nityaseva.getMantravibhag();
            this.stotravibhag = this.nityaseva.getStotravibhag();
            AartiSanghraAdapter aartiSanghraAdapter = new AartiSanghraAdapter(this.mantravibhag, getActivity());
            this.bhoopaliAdapter = aartiSanghraAdapter;
            this.rv_bhoopali.setAdapter(aartiSanghraAdapter);
            AartiSanghraAdapter aartiSanghraAdapter2 = new AartiSanghraAdapter(this.stotravibhag, getActivity());
            this.morningAdapter = aartiSanghraAdapter2;
            this.rv_morning.setAdapter(aartiSanghraAdapter2);
        }
        return this.v;
    }

    public void ProductsCommon() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).nityaseva(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.NityaMenuFragment.3
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    NityaMenuFragment.this.message = nityaSevaDataResponse.getMessage();
                    NityaMenuFragment.this.status = nityaSevaDataResponse.getStatus();
                    if (nityaSevaDataResponse.getData() != null) {
                        NityaMenuFragment.this.data = nityaSevaDataResponse.getData();
                        NityaMenuFragment nityaMenuFragment = NityaMenuFragment.this;
                        nityaMenuFragment.aartisangrah = nityaMenuFragment.data.getAartisangrah();
                        NityaMenuFragment nityaMenuFragment2 = NityaMenuFragment.this;
                        nityaMenuFragment2.nityaseva = nityaMenuFragment2.data.getNityaseva();
                        NityaMenuFragment nityaMenuFragment3 = NityaMenuFragment.this;
                        nityaMenuFragment3.mantravibhag = nityaMenuFragment3.nityaseva.getMantravibhag();
                        NityaMenuFragment nityaMenuFragment4 = NityaMenuFragment.this;
                        nityaMenuFragment4.stotravibhag = nityaMenuFragment4.nityaseva.getStotravibhag();
                        NityaMenuFragment.this.bhoopaliAdapter = new AartiSanghraAdapter(NityaMenuFragment.this.mantravibhag, NityaMenuFragment.this.getActivity());
                        NityaMenuFragment.this.rv_bhoopali.setAdapter(NityaMenuFragment.this.bhoopaliAdapter);
                        NityaMenuFragment.this.morningAdapter = new AartiSanghraAdapter(NityaMenuFragment.this.stotravibhag, NityaMenuFragment.this.getActivity());
                        NityaMenuFragment.this.rv_morning.setAdapter(NityaMenuFragment.this.morningAdapter);
                    }
                }
                NityaMenuFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                NityaMenuFragment.this.progressDialog.dismiss();
            }
        });
    }

    public NityaSevaDataResponse getNitya(String str) {
        return (NityaSevaDataResponse) new Gson().fromJson(PreferenceManager.getDefaultSharedPreferences(getActivity()).getString(str, null), new TypeToken<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.NityaMenuFragment.4
        }.getType());
    }
}
