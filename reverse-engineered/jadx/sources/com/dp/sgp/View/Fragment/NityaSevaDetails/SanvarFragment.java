package com.dp.sgp.View.Fragment.NityaSevaDetails;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dp.sgp.Adapters.AartiSanghraAdapter;
import com.dp.sgp.Adapters.VibaghhDetailsAdapter;
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
import com.dp.sgp.View.Fragment.SanvarSwipePages.SanvarPagerFragment;
import com.dp.sgp.database.DatabaseHelperClass;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class SanvarFragment extends Fragment {
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
    private RecyclerView rvArticles;
    private RecyclerView rv_evening;
    private RecyclerView rv_morning;
    List<CommonData> sanwar;
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
        this.v = layoutInflater.inflate(R.layout.fragment_sanvar, viewGroup, false);
        getActivity().setTitle("सणवार");
        this.nityaSevaDataResponse = new NityaSevaDataResponse();
        RecyclerView recyclerView = (RecyclerView) this.v.findViewById(R.id.rvArticles);
        this.rvArticles = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.rvArticles.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.dataHandler = new DataHandler(getActivity());
        this.sendCommonBody = new SendCommonBody();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sanwar = new ArrayList();
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.sendCommonBody.setType("0");
        this.sendCommonBody.setId("0");
        NityaSevaDataResponse nityaSevaDataResponse = getsanvar("sanvar");
        this.nityaSevaDataResponse = nityaSevaDataResponse;
        if (nityaSevaDataResponse.getData() != null) {
            NityaSevaData data = this.nityaSevaDataResponse.getData();
            this.data = data;
            this.sanwar = data.getSanwar();
            VibaghhDetailsAdapter vibaghhDetailsAdapter = new VibaghhDetailsAdapter(getActivity(), this.sanwar);
            this.rvArticles.setLayoutManager(new GridLayoutManager(getActivity(), 2));
            this.rvArticles.setItemAnimator(new DefaultItemAnimator());
            this.rvArticles.setAdapter(vibaghhDetailsAdapter);
        }
        this.rvArticles.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rvArticles, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.SanvarFragment.1
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = SanvarFragment.this.sanwar.get(i);
                int i2 = Integer.parseInt(commonData.getId());
                Bundle bundle2 = new Bundle();
                bundle2.putString("pos", i2 + "");
                bundle2.putString(Key.MESSAGE, commonData.getDescription());
                bundle2.putString("selected_image", commonData.getImage());
                bundle2.putString(DatabaseHelperClass.TITLE, commonData.getTitle());
                bundle2.putParcelableArrayList("Data", (ArrayList) SanvarFragment.this.sanwar);
                bundle2.putInt("position", i);
                SanvarPagerFragment sanvarPagerFragment = new SanvarPagerFragment();
                sanvarPagerFragment.setArguments(bundle2);
                SanvarFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, sanvarPagerFragment).addToBackStack(null).commit();
            }
        }));
        return this.v;
    }

    public void ProductsCommon() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).nityaseva(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.SanvarFragment.2
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    SanvarFragment.this.message = nityaSevaDataResponse.getMessage();
                    SanvarFragment.this.status = nityaSevaDataResponse.getStatus();
                    if (nityaSevaDataResponse.getData() != null) {
                        SanvarFragment.this.data = nityaSevaDataResponse.getData();
                        SanvarFragment sanvarFragment = SanvarFragment.this;
                        sanvarFragment.sanwar = sanvarFragment.data.getSanwar();
                        VibaghhDetailsAdapter vibaghhDetailsAdapter = new VibaghhDetailsAdapter(SanvarFragment.this.getActivity(), SanvarFragment.this.sanwar);
                        SanvarFragment.this.rvArticles.setLayoutManager(new GridLayoutManager(SanvarFragment.this.getActivity(), 2));
                        SanvarFragment.this.rvArticles.setItemAnimator(new DefaultItemAnimator());
                        SanvarFragment.this.rvArticles.setAdapter(vibaghhDetailsAdapter);
                    }
                }
                SanvarFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SanvarFragment.this.progressDialog.dismiss();
            }
        });
    }

    public NityaSevaDataResponse getsanvar(String str) {
        return (NityaSevaDataResponse) new Gson().fromJson(PreferenceManager.getDefaultSharedPreferences(getActivity()).getString(str, null), new TypeToken<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.SanvarFragment.3
        }.getType());
    }
}
