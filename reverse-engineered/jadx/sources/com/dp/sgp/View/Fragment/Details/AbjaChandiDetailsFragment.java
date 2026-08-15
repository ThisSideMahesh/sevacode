package com.dp.sgp.View.Fragment.Details;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;
import com.dp.sgp.Adapters.AbjaaSevaAdapter;
import com.dp.sgp.Adapters.PlanningAdapter;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.MainNityaseva.NityaSevaDataResponse;
import com.dp.sgp.Model.SubmitAbhjaBody;
import com.dp.sgp.Model.SubmitAbjaData;
import com.dp.sgp.R;
import com.dp.sgp.View.Fragment.NityaSevaDetails.AbhjaChandiFragment;
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
public class AbjaChandiDetailsFragment extends Fragment {
    private List<SubmitAbhjaBody> SevaModels;
    private ConnectionDetector connectionDetector;
    DataHandler dataHandler;
    EditText edt_BlanksReceived;
    LinearLayout lyt_main;
    AbjaaSevaAdapter mAdapter;
    PlanningAdapter planningAdapter;
    ProgressDialog progressDialog;
    RadioButton radia_id2;
    RadioButton radia_id3;
    RadioButton radioButton;
    private RadioGroup radioGroup;
    RecyclerView rvArticles;
    SubmitAbjaData sendCommonBody;
    View v;
    Boolean lBliSelected = true;
    Boolean lBliSelected1 = false;
    Boolean lBliSelected2 = false;
    private String type = "1";
    String device_token = "";
    String user_id = "";
    String status = "";
    String message = "";
    String lStrQQty = "";
    List<SubmitAbhjaBody> BodylistList = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_abja_chandi_details, viewGroup, false);
        getActivity().setTitle("अब्जाचंडी सेवा अंतर्गत नोंदणी");
        this.dataHandler = new DataHandler(getActivity());
        this.SevaModels = new ArrayList();
        this.sendCommonBody = new SubmitAbjaData();
        this.BodylistList = new ArrayList();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.connectionDetector = new ConnectionDetector(getActivity());
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.edt_BlanksReceived = (EditText) this.v.findViewById(R.id.edt_BlanksReceived);
        this.lyt_main = (LinearLayout) this.v.findViewById(R.id.main);
        this.rvArticles = (RecyclerView) this.v.findViewById(R.id.my_recycler_view);
        if (this.dataHandler.getData("name") != null) {
            this.edt_BlanksReceived.setText(this.dataHandler.getData("name"));
            this.edt_BlanksReceived.setEnabled(false);
        }
        this.rvArticles.setHasFixedSize(true);
        String jsonFromAssets = null;
        try {
            jsonFromAssets = AssestParser.getJsonFromAssets(getActivity(), "newsampleDescription.json");
            Log.i("data", jsonFromAssets);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Gson gson = new Gson();
        List<SubmitAbhjaBody> list = (List) gson.fromJson(jsonFromAssets, new TypeToken<List<SubmitAbhjaBody>>() { // from class: com.dp.sgp.View.Fragment.Details.AbjaChandiDetailsFragment.1
        }.getType());
        this.SevaModels = list;
        Log.d("appUpdateBody ", gson.toJson(list));
        List<SubmitAbhjaBody> list2 = this.SevaModels;
        if (list2 != null && list2.size() > 0) {
            this.planningAdapter = new PlanningAdapter(getActivity(), this.SevaModels);
            this.rvArticles.setLayoutManager(new LinearLayoutManager(getActivity()));
            this.rvArticles.setItemAnimator(new DefaultItemAnimator());
            this.rvArticles.setAdapter(this.planningAdapter);
            this.rvArticles.setHasFixedSize(true);
        }
        this.radioGroup = (RadioGroup) this.v.findViewById(R.id.groupradio);
        this.radioButton = (RadioButton) this.v.findViewById(R.id.radia_id1);
        this.radia_id2 = (RadioButton) this.v.findViewById(R.id.radia_id2);
        this.radia_id3 = (RadioButton) this.v.findViewById(R.id.radia_id3);
        this.radioButton.setChecked(true);
        this.lBliSelected = true;
        this.radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.dp.sgp.View.Fragment.Details.AbjaChandiDetailsFragment.2
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                RadioButton radioButton = (RadioButton) AbjaChandiDetailsFragment.this.v.findViewById(i);
                if (radioButton.getText().toString().equalsIgnoreCase("वैयक्तिक")) {
                    AbjaChandiDetailsFragment.this.type = "1";
                    AbjaChandiDetailsFragment.this.edt_BlanksReceived.setText(AbjaChandiDetailsFragment.this.dataHandler.getData("name"));
                    AbjaChandiDetailsFragment.this.edt_BlanksReceived.setHint("वैयक्तिक (स्वतःचे नाव)");
                    AbjaChandiDetailsFragment.this.edt_BlanksReceived.setEnabled(false);
                } else if (radioButton.getText().toString().equalsIgnoreCase("कौटूंबिक")) {
                    AbjaChandiDetailsFragment.this.type = "2";
                    AbjaChandiDetailsFragment.this.edt_BlanksReceived.setText("");
                    AbjaChandiDetailsFragment.this.edt_BlanksReceived.setHint("कौटूंबिक (कुटुंबातील व्यक्तीचे नाव)");
                    AbjaChandiDetailsFragment.this.edt_BlanksReceived.setEnabled(true);
                } else {
                    AbjaChandiDetailsFragment.this.type = "3";
                    AbjaChandiDetailsFragment.this.edt_BlanksReceived.setText("");
                    AbjaChandiDetailsFragment.this.edt_BlanksReceived.setHint("सामुदायिक  (सेवा केंद्राचे नाव)");
                    AbjaChandiDetailsFragment.this.edt_BlanksReceived.setEnabled(true);
                }
                Toast.makeText(AbjaChandiDetailsFragment.this.getActivity(), radioButton.getText(), 0).show();
            }
        });
        this.lyt_main.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.Details.AbjaChandiDetailsFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String string = AbjaChandiDetailsFragment.this.edt_BlanksReceived.getText().toString();
                if (AbjaChandiDetailsFragment.this.planningAdapter == null || AbjaChandiDetailsFragment.this.planningAdapter.getallrecords().size() <= 0) {
                    AlertDialog alertDialogCreate = new AlertDialog.Builder(AbjaChandiDetailsFragment.this.getActivity()).create();
                    alertDialogCreate.setTitle("Unable To Submit");
                    alertDialogCreate.setMessage("Sorry , Empty items not allowed .\n Please add atleast one item. ");
                    alertDialogCreate.setIcon(R.mipmap.ic_launcher_round);
                    alertDialogCreate.setButton("Retry", new DialogInterface.OnClickListener() { // from class: com.dp.sgp.View.Fragment.Details.AbjaChandiDetailsFragment.3.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    alertDialogCreate.show();
                    return;
                }
                if (AbjaChandiDetailsFragment.this.planningAdapter == null || AbjaChandiDetailsFragment.this.planningAdapter.getallrecords() == null || AbjaChandiDetailsFragment.this.planningAdapter.getallrecords().size() <= 0) {
                    return;
                }
                List<SubmitAbhjaBody> list3 = AbjaChandiDetailsFragment.this.planningAdapter.getallrecords();
                if (list3.size() > 0) {
                    for (int i = 0; i < list3.size(); i++) {
                        String name = list3.get(i).getName();
                        String text = list3.get(i).getText();
                        if (!text.equalsIgnoreCase("0")) {
                            AbjaChandiDetailsFragment.this.lStrQQty = list3.get(i).getText();
                            SubmitAbhjaBody submitAbhjaBody = new SubmitAbhjaBody();
                            submitAbhjaBody.setName(name);
                            submitAbhjaBody.setText(text);
                            submitAbhjaBody.setListType(list3.get(i).getListType());
                            AbjaChandiDetailsFragment.this.BodylistList.add(submitAbhjaBody);
                        }
                    }
                }
                if (AbjaChandiDetailsFragment.this.connectionDetector.isConnectingToInternet()) {
                    if (AbjaChandiDetailsFragment.this.lStrQQty.equalsIgnoreCase("")) {
                        AlertDialog alertDialogCreate2 = new AlertDialog.Builder(AbjaChandiDetailsFragment.this.getActivity()).create();
                        alertDialogCreate2.setTitle("श्री स्वामी समर्थ \n\nअब्जचंडी सेवा नोंद");
                        alertDialogCreate2.setMessage(" किमान एक रेकॉर्ड प्रविष्ट करा माळी स्वरुपातील सेवा किंवा पारायण स्वरुपातील सेवा. ");
                        alertDialogCreate2.setIcon(R.mipmap.ic_launcher_round);
                        alertDialogCreate2.setButton("पुन्हा प्रयत्न करा", new DialogInterface.OnClickListener() { // from class: com.dp.sgp.View.Fragment.Details.AbjaChandiDetailsFragment.3.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                            }
                        });
                        alertDialogCreate2.show();
                        return;
                    }
                    if (AbjaChandiDetailsFragment.this.BodylistList != null) {
                        if (AbjaChandiDetailsFragment.this.BodylistList.size() > 0) {
                            AbjaChandiDetailsFragment.this.sendCommonBody.setType(AbjaChandiDetailsFragment.this.type);
                            AbjaChandiDetailsFragment.this.sendCommonBody.setMember_name(string);
                            AbjaChandiDetailsFragment.this.sendCommonBody.setData(AbjaChandiDetailsFragment.this.BodylistList);
                            if (AbjaChandiDetailsFragment.this.sendCommonBody != null) {
                                AbjaChandiDetailsFragment.this.Submitabjachandi();
                                return;
                            }
                            return;
                        }
                        AlertDialog alertDialogCreate3 = new AlertDialog.Builder(AbjaChandiDetailsFragment.this.getActivity()).create();
                        alertDialogCreate3.setTitle("श्री स्वामी समर्थ \n\nअब्जचंडी सेवा नोंद");
                        alertDialogCreate3.setMessage(" किमान एक रेकॉर्ड प्रविष्ट करा माळी स्वरुपातील सेवा किंवा पारायण स्वरुपातील सेवा. ");
                        alertDialogCreate3.setIcon(R.mipmap.ic_launcher_round);
                        alertDialogCreate3.setButton("पुन्हा प्रयत्न करा", new DialogInterface.OnClickListener() { // from class: com.dp.sgp.View.Fragment.Details.AbjaChandiDetailsFragment.3.3
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                            }
                        });
                        alertDialogCreate3.show();
                        return;
                    }
                    AlertDialog alertDialogCreate4 = new AlertDialog.Builder(AbjaChandiDetailsFragment.this.getActivity()).create();
                    alertDialogCreate4.setTitle("श्री स्वामी समर्थ \n\nअब्जचंडी सेवा नोंद");
                    alertDialogCreate4.setMessage(" किमान एक रेकॉर्ड प्रविष्ट करा माळी स्वरुपातील सेवा किंवा पारायण स्वरुपातील सेवा. ");
                    alertDialogCreate4.setIcon(R.mipmap.ic_launcher_round);
                    alertDialogCreate4.setButton("पुन्हा प्रयत्न करा", new DialogInterface.OnClickListener() { // from class: com.dp.sgp.View.Fragment.Details.AbjaChandiDetailsFragment.3.4
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                        }
                    });
                    alertDialogCreate4.show();
                    return;
                }
                Toast.makeText(AbjaChandiDetailsFragment.this.getActivity(), AbjaChandiDetailsFragment.this.getResources().getString(R.string.no_internet), 0).show();
            }
        });
        return this.v;
    }

    public void Submitabjachandi() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        Log.d("sendCommonBody", new Gson().toJson(this.sendCommonBody));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).submitAbjachandi(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Fragment.Details.AbjaChandiDetailsFragment.4
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                AbjaChandiDetailsFragment.this.progressDialog.dismiss();
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    if (nityaSevaDataResponse.getStatus() != null) {
                        AbjaChandiDetailsFragment.this.message = nityaSevaDataResponse.getMessage();
                        AbjaChandiDetailsFragment.this.status = nityaSevaDataResponse.getStatus();
                        if (AbjaChandiDetailsFragment.this.status.equalsIgnoreCase("success")) {
                            Toast.makeText(AbjaChandiDetailsFragment.this.getActivity(), AbjaChandiDetailsFragment.this.message, 0).show();
                            Bundle bundle = new Bundle();
                            bundle.putString(Key.MESSAGE, "अब्जचंडी");
                            AbhjaChandiFragment abhjaChandiFragment = new AbhjaChandiFragment();
                            abhjaChandiFragment.setArguments(bundle);
                            AbjaChandiDetailsFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, abhjaChandiFragment).addToBackStack(null).commit();
                        } else {
                            Toast.makeText(AbjaChandiDetailsFragment.this.getActivity(), AbjaChandiDetailsFragment.this.message, 0).show();
                        }
                    }
                }
                AbjaChandiDetailsFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                AbjaChandiDetailsFragment.this.progressDialog.dismiss();
            }
        });
    }
}
