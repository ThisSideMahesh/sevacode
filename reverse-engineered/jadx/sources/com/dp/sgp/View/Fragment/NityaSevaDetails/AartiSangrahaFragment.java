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
public class AartiSangrahaFragment extends Fragment {
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

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_aarti_sangraha, viewGroup, false);
        getActivity().setTitle("आरती संग्रह");
        this.nityaSevaDataResponse = new NityaSevaDataResponse();
        this.dataHandler = new DataHandler(getActivity());
        this.sendCommonBody = new SendCommonBody();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.dataList = new ProductData();
        this.data = new NityaSevaData();
        this.aartisangrah = new Aartisangrah();
        this.bhoopalilist = new ArrayList();
        this.morninglist = new ArrayList();
        this.eveninglist = new ArrayList();
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
        this.rv_bhoopali.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_bhoopali, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.AartiSangrahaFragment.1
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = (CommonData) AartiSangrahaFragment.this.bhupaliaartisakali800AM.get(i);
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, commonData.getDescription());
                bundle2.putString("subtitle", commonData.getTitle());
                bundle2.putString(DatabaseHelperClass.TITLE, "आरती संग्रह");
                GlVars.Title = "आरती संग्रह";
                bundle2.putParcelableArrayList("Data", (ArrayList) AartiSangrahaFragment.this.bhupaliaartisakali800AM);
                bundle2.putInt("position", i);
                TestSwpieFragment testSwpieFragment = new TestSwpieFragment();
                testSwpieFragment.setArguments(bundle2);
                AartiSangrahaFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, testSwpieFragment).addToBackStack(null).commit();
            }
        }));
        this.rv_morning.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_morning, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.AartiSangrahaFragment.2
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = (CommonData) AartiSangrahaFragment.this.naivadyaAartiSakali1030AM.get(i);
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, commonData.getDescription());
                bundle2.putString("subtitle", commonData.getTitle());
                bundle2.putString(DatabaseHelperClass.TITLE, "आरती संग्रह");
                GlVars.Title = "आरती संग्रह";
                bundle2.putParcelableArrayList("Data", (ArrayList) AartiSangrahaFragment.this.naivadyaAartiSakali1030AM);
                bundle2.putInt("position", i);
                TestSwpieFragment testSwpieFragment = new TestSwpieFragment();
                testSwpieFragment.setArguments(bundle2);
                AartiSangrahaFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, testSwpieFragment).addToBackStack(null).commit();
            }
        }));
        this.rv_evening.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_evening, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.AartiSangrahaFragment.3
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = (CommonData) AartiSangrahaFragment.this.naivadyaaartisayankal.get(i);
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, commonData.getDescription());
                bundle2.putString("subtitle", commonData.getTitle());
                bundle2.putString(DatabaseHelperClass.TITLE, "आरती संग्रह");
                GlVars.Title = "आरती संग्रह";
                bundle2.putParcelableArrayList("Data", (ArrayList) AartiSangrahaFragment.this.naivadyaaartisayankal);
                bundle2.putInt("position", i);
                TestSwpieFragment testSwpieFragment = new TestSwpieFragment();
                testSwpieFragment.setArguments(bundle2);
                AartiSangrahaFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, testSwpieFragment).addToBackStack(null).commit();
            }
        }));
        NityaSevaDataResponse aarti = getAarti("Aarti");
        this.nityaSevaDataResponse = aarti;
        if (aarti.getData() != null) {
            NityaSevaData data = this.nityaSevaDataResponse.getData();
            this.data = data;
            Aartisangrah aartisangrah = data.getAartisangrah();
            this.aartisangrah = aartisangrah;
            this.naivadyaAartiSakali1030AM = aartisangrah.getNaivadyaAartiSakali();
            this.naivadyaaartisayankal = this.aartisangrah.getNaivadyaaartisayankal();
            this.bhupaliaartisakali800AM = this.aartisangrah.getBhupaliaartisakali();
            AartiSanghraAdapter aartiSanghraAdapter = new AartiSanghraAdapter(this.bhupaliaartisakali800AM, getActivity());
            this.bhoopaliAdapter = aartiSanghraAdapter;
            this.rv_bhoopali.setAdapter(aartiSanghraAdapter);
            AartiSanghraAdapter aartiSanghraAdapter2 = new AartiSanghraAdapter(this.naivadyaAartiSakali1030AM, getActivity());
            this.morningAdapter = aartiSanghraAdapter2;
            this.rv_morning.setAdapter(aartiSanghraAdapter2);
            AartiSanghraAdapter aartiSanghraAdapter3 = new AartiSanghraAdapter(this.naivadyaaartisayankal, getActivity());
            this.eveningAdapter = aartiSanghraAdapter3;
            this.rv_evening.setAdapter(aartiSanghraAdapter3);
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
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).nityaseva(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.AartiSangrahaFragment.4
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    AartiSangrahaFragment.this.message = nityaSevaDataResponse.getMessage();
                    AartiSangrahaFragment.this.status = nityaSevaDataResponse.getStatus();
                    if (nityaSevaDataResponse.getData() != null) {
                        AartiSangrahaFragment.this.data = nityaSevaDataResponse.getData();
                        AartiSangrahaFragment aartiSangrahaFragment = AartiSangrahaFragment.this;
                        aartiSangrahaFragment.aartisangrah = aartiSangrahaFragment.data.getAartisangrah();
                        AartiSangrahaFragment aartiSangrahaFragment2 = AartiSangrahaFragment.this;
                        aartiSangrahaFragment2.naivadyaAartiSakali1030AM = aartiSangrahaFragment2.aartisangrah.getNaivadyaAartiSakali();
                        AartiSangrahaFragment aartiSangrahaFragment3 = AartiSangrahaFragment.this;
                        aartiSangrahaFragment3.naivadyaaartisayankal = aartiSangrahaFragment3.aartisangrah.getNaivadyaaartisayankal();
                        AartiSangrahaFragment aartiSangrahaFragment4 = AartiSangrahaFragment.this;
                        aartiSangrahaFragment4.bhupaliaartisakali800AM = aartiSangrahaFragment4.aartisangrah.getBhupaliaartisakali();
                        AartiSangrahaFragment.this.bhoopaliAdapter = new AartiSanghraAdapter(AartiSangrahaFragment.this.bhupaliaartisakali800AM, AartiSangrahaFragment.this.getActivity());
                        AartiSangrahaFragment.this.rv_bhoopali.setAdapter(AartiSangrahaFragment.this.bhoopaliAdapter);
                        AartiSangrahaFragment.this.morningAdapter = new AartiSanghraAdapter(AartiSangrahaFragment.this.naivadyaAartiSakali1030AM, AartiSangrahaFragment.this.getActivity());
                        AartiSangrahaFragment.this.rv_morning.setAdapter(AartiSangrahaFragment.this.morningAdapter);
                        AartiSangrahaFragment.this.eveningAdapter = new AartiSanghraAdapter(AartiSangrahaFragment.this.naivadyaaartisayankal, AartiSangrahaFragment.this.getActivity());
                        AartiSangrahaFragment.this.rv_evening.setAdapter(AartiSangrahaFragment.this.eveningAdapter);
                    }
                }
                AartiSangrahaFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                AartiSangrahaFragment.this.progressDialog.dismiss();
            }
        });
    }

    public NityaSevaDataResponse getAarti(String str) {
        return (NityaSevaDataResponse) new Gson().fromJson(PreferenceManager.getDefaultSharedPreferences(getActivity()).getString(str, null), new TypeToken<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.AartiSangrahaFragment.5
        }.getType());
    }
}
