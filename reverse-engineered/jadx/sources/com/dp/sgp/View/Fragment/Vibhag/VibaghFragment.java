package com.dp.sgp.View.Fragment.Vibhag;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SnapHelper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import com.dp.sgp.Adapters.VibaghhDetailsAdapter;
import com.dp.sgp.Adapters.VibhagAdapterArticles;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.Model.CommonResponse;
import com.dp.sgp.Model.HomeResponse.HomeData;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.dp.sgp.View.Fragment.VibhagSwipePages.VibhagPagerFragment;
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
public class VibaghFragment extends Fragment {
    GridView androidGridView;
    ConnectionDetector connectionDetector;
    HomeData data;
    DataHandler dataHandler;
    CommonResponse dataresponse;
    VibhagAdapterArticles mAdapter;
    String message;
    ProgressDialog progressDialog;
    RecyclerView rvArticles;
    SendCommonBody sendCommonBody;
    SnapHelper snapHelper;
    String status;
    View v;
    String[] gridViewString = {"प्रश्नोत्तर", "गर्भसंस्कार ", "बालसंस्कार", "युवा प्रबोधन", "आय टी", "पर्यावरण", "भारतीय संस्कृती", "विवाहसंस्कार", "वेद संशोधन", "प्रशिक्षण", "प्रशासकिय", "स्वयंरोजगार", "प्रचार प्रसार", "वास्तुशास्त्र", "कृषी व पशुगोवंश", "आयुर्वेदिक", "कायदेविषयक", "देशविदेश"};
    int[] gridViewImageId = {R.drawable.ic_ic_prashna, R.drawable.ic_ic_garbhsanskar, R.drawable.ic_ic_balsanskar, R.drawable.ic_ic_yuva, R.drawable.ic_ic_it, R.drawable.ic_ic_paryavaran, R.drawable.ic_ic_sanskruti, R.drawable.ic_ic_vivah, R.drawable.ic_ic_ved, R.drawable.ic_ic_prashikshan, R.drawable.ic_ic_prashaskiy, R.drawable.ic_ic_rojgar, R.drawable.ic_ic_prachar, R.drawable.ic_ic_vastu, R.drawable.ic_ic_krushi, R.drawable.ic_ic_ayurvedik, R.drawable.ic_ic_kayda, R.drawable.ic_ic_deshvidesh};
    String device_token = "";
    String user_id = "";
    String lStrLink = "";
    String Type = "0";
    String id = "";
    private List<CommonData> dataList = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_vibagh, viewGroup, false);
        getActivity().setTitle("विभाग");
        this.dataresponse = new CommonResponse();
        RecyclerView recyclerView = (RecyclerView) this.v.findViewById(R.id.rvArticles);
        this.rvArticles = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.rvArticles.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.sendCommonBody = new SendCommonBody();
        DataHandler dataHandler = new DataHandler(getActivity());
        this.dataHandler = dataHandler;
        this.device_token = dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.dataList = new ArrayList();
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.sendCommonBody.setId("0");
        this.connectionDetector = new ConnectionDetector(getActivity());
        this.androidGridView = (GridView) this.v.findViewById(R.id.grid_view_image_text);
        this.rvArticles.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rvArticles, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.Vibhag.VibaghFragment.1
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = (CommonData) VibaghFragment.this.dataList.get(i);
                int i2 = Integer.parseInt(commonData.getId());
                Bundle bundle2 = new Bundle();
                bundle2.putString("pos", i2 + "");
                bundle2.putString(Key.MESSAGE, commonData.getDescription());
                bundle2.putString("selected_image", commonData.getImage());
                bundle2.putString(DatabaseHelperClass.TITLE, commonData.getTitle());
                bundle2.putParcelableArrayList("Data", (ArrayList) VibaghFragment.this.dataList);
                bundle2.putInt("position", i);
                VibhagPagerFragment vibhagPagerFragment = new VibhagPagerFragment();
                vibhagPagerFragment.setArguments(bundle2);
                VibaghFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, vibhagPagerFragment).addToBackStack(null).commit();
            }
        }));
        CommonResponse commonResponse = getvibhag("Vibhag");
        this.dataresponse = commonResponse;
        List<CommonData> data = commonResponse.getData();
        this.dataList = data;
        if (data != null && data.size() > 0) {
            VibaghhDetailsAdapter vibaghhDetailsAdapter = new VibaghhDetailsAdapter(getActivity(), this.dataList);
            this.rvArticles.setLayoutManager(new GridLayoutManager(getActivity(), 2));
            this.rvArticles.setItemAnimator(new DefaultItemAnimator());
            this.rvArticles.setAdapter(vibaghhDetailsAdapter);
        }
        return this.v;
    }

    public void VibhagDetails() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).Vibhag(this.sendCommonBody, new Callback<CommonResponse>() { // from class: com.dp.sgp.View.Fragment.Vibhag.VibaghFragment.2
            @Override // retrofit.Callback
            public void success(CommonResponse commonResponse, Response response) {
                if (commonResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(commonResponse));
                    VibaghFragment.this.message = commonResponse.getMessage();
                    VibaghFragment.this.status = commonResponse.getStatus();
                    if (commonResponse.getData() != null) {
                        VibaghFragment.this.dataList = commonResponse.getData();
                        if (VibaghFragment.this.dataList != null && VibaghFragment.this.dataList.size() > 0) {
                            VibaghhDetailsAdapter vibaghhDetailsAdapter = new VibaghhDetailsAdapter(VibaghFragment.this.getActivity(), VibaghFragment.this.dataList);
                            VibaghFragment.this.rvArticles.setLayoutManager(new GridLayoutManager(VibaghFragment.this.getActivity(), 2));
                            VibaghFragment.this.rvArticles.setItemAnimator(new DefaultItemAnimator());
                            VibaghFragment.this.rvArticles.setAdapter(vibaghhDetailsAdapter);
                        }
                    }
                }
                VibaghFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                VibaghFragment.this.progressDialog.dismiss();
            }
        });
    }

    public CommonResponse getvibhag(String str) {
        return (CommonResponse) new Gson().fromJson(PreferenceManager.getDefaultSharedPreferences(getActivity()).getString(str, null), new TypeToken<CommonResponse>() { // from class: com.dp.sgp.View.Fragment.Vibhag.VibaghFragment.3
        }.getType());
    }
}
