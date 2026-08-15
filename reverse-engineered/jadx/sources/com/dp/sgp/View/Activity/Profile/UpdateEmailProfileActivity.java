package com.dp.sgp.View.Activity.Profile;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.Constants.AppConstant;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.HomeResponse.HomeResponse;
import com.dp.sgp.Model.HomeResponse.SendHomeBody;
import com.dp.sgp.Model.SendProfileBody;
import com.dp.sgp.Model.SucessResponse;
import com.dp.sgp.Model.UpdateDeviceInFo;
import com.dp.sgp.Model.YoutubeResponse;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Home.MainActivity;
import com.dp.sgp.View.Activity.Login.LoginActivity;
import com.dp.sgp.util.ErrorResponseDailogs;
import com.google.android.gms.common.Scopes;
import com.google.gson.Gson;
import java.util.regex.Pattern;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class UpdateEmailProfileActivity extends AppCompatActivity {
    private Button button;
    private ConnectionDetector connectionDetector;
    private DataHandler datHandler;
    private EditText editTextConfirmPassword;
    private EditText editTextCountry;
    private EditText editTextEmail;
    private EditText editTextName;
    private EditText editTextPassword;
    private EditText editText_lastname;
    private EditText editText_middlename;
    private EditText editText_mobile;
    private Button facebookLoginButton;
    private Button googleLoginButton;
    private TextView imageView;
    String message;
    ProgressDialog myProgressDialog;
    SendHomeBody sendHomeBody;
    SendProfileBody sendProfileBody;
    String status;
    private ImageView textView;
    private TextView textView2;
    private LinearLayout textView3;
    private TextView textView4;
    private LinearLayout txtNewreg;
    private TextView txtPaasword;
    TextView txt_Register;
    UpdateDeviceInFo updateDeviceInFo;
    String lStrUserName = "";
    String lStrEmailID = "";
    String pstrDeviceId = "";
    String lStrCountry = "";
    String lStrPassword = "";
    String lStrConfirmPassword = "";
    private String mobileNumber = "";

    private void assignViews() {
        this.editText_lastname = (EditText) findViewById(R.id.editText_lastname);
        this.editText_middlename = (EditText) findViewById(R.id.editText_middlename);
        this.textView = (ImageView) findViewById(R.id.textView);
        this.textView2 = (TextView) findViewById(R.id.textView2);
        this.imageView = (TextView) findViewById(R.id.imageView);
        this.editText_mobile = (EditText) findViewById(R.id.editText_mobile);
        this.editTextName = (EditText) findViewById(R.id.editText_name);
        this.editTextEmail = (EditText) findViewById(R.id.editText_email);
        this.editTextCountry = (EditText) findViewById(R.id.editText_Country);
        this.textView3 = (LinearLayout) findViewById(R.id.textView3);
        this.txtPaasword = (TextView) findViewById(R.id.txt__Paasword);
        this.editTextPassword = (EditText) findViewById(R.id.editText_password);
        this.editTextConfirmPassword = (EditText) findViewById(R.id.editText_confirm_password);
        this.button = (Button) findViewById(R.id.button);
        this.textView4 = (TextView) findViewById(R.id.textView4);
        this.txtNewreg = (LinearLayout) findViewById(R.id.txt_newreg);
        this.facebookLoginButton = (Button) findViewById(R.id.facebook_login_button);
        this.googleLoginButton = (Button) findViewById(R.id.google_login_button);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_update_email_profile);
        this.updateDeviceInFo = new UpdateDeviceInFo();
        this.datHandler = new DataHandler(getApplicationContext());
        this.connectionDetector = new ConnectionDetector(getApplicationContext());
        this.txt_Register = (TextView) findViewById(R.id.txt_Register);
        this.sendHomeBody = new SendHomeBody();
        this.pstrDeviceId = Settings.Secure.getString(getApplicationContext().getContentResolver(), "android_id");
        this.sendProfileBody = new SendProfileBody();
        assignViews();
        if (getIntent() != null) {
            String stringExtra = getIntent().getStringExtra(AppConstant.Mobile_No);
            this.mobileNumber = stringExtra;
            this.editTextEmail.setText(stringExtra);
        }
        this.txt_Register.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Profile.UpdateEmailProfileActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UpdateEmailProfileActivity.this.startActivity(new Intent(UpdateEmailProfileActivity.this, (Class<?>) LoginActivity.class));
            }
        });
        this.button.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Profile.UpdateEmailProfileActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UpdateEmailProfileActivity updateEmailProfileActivity = UpdateEmailProfileActivity.this;
                updateEmailProfileActivity.lStrUserName = updateEmailProfileActivity.editTextName.getText().toString().trim();
                UpdateEmailProfileActivity updateEmailProfileActivity2 = UpdateEmailProfileActivity.this;
                updateEmailProfileActivity2.lStrEmailID = updateEmailProfileActivity2.editTextEmail.getText().toString().trim();
                UpdateEmailProfileActivity updateEmailProfileActivity3 = UpdateEmailProfileActivity.this;
                updateEmailProfileActivity3.lStrCountry = updateEmailProfileActivity3.editTextCountry.getText().toString().trim();
                UpdateEmailProfileActivity updateEmailProfileActivity4 = UpdateEmailProfileActivity.this;
                updateEmailProfileActivity4.lStrPassword = updateEmailProfileActivity4.editTextPassword.getText().toString().trim();
                UpdateEmailProfileActivity updateEmailProfileActivity5 = UpdateEmailProfileActivity.this;
                updateEmailProfileActivity5.lStrConfirmPassword = updateEmailProfileActivity5.editTextConfirmPassword.getText().toString().trim();
                if (UpdateEmailProfileActivity.this.lStrUserName.equalsIgnoreCase("")) {
                    UpdateEmailProfileActivity.this.editTextName.setError("Enter First Name");
                    return;
                }
                if (UpdateEmailProfileActivity.this.editText_middlename.getText().toString().trim().equalsIgnoreCase("")) {
                    UpdateEmailProfileActivity.this.editTextName.setError(null);
                    UpdateEmailProfileActivity.this.editText_middlename.setError("Enter Middle Name");
                    return;
                }
                if (UpdateEmailProfileActivity.this.editText_lastname.getText().toString().trim().equalsIgnoreCase("")) {
                    UpdateEmailProfileActivity.this.editTextName.setError(null);
                    UpdateEmailProfileActivity.this.editText_lastname.setError("Enter Last Name");
                    return;
                }
                if (UpdateEmailProfileActivity.this.lStrEmailID.equalsIgnoreCase("")) {
                    UpdateEmailProfileActivity.this.editText_lastname.setError(null);
                    UpdateEmailProfileActivity.this.editTextEmail.setError("Enter EmailId");
                    return;
                }
                UpdateEmailProfileActivity updateEmailProfileActivity6 = UpdateEmailProfileActivity.this;
                if (!updateEmailProfileActivity6.isValidEmailId(updateEmailProfileActivity6.lStrEmailID)) {
                    UpdateEmailProfileActivity.this.editTextEmail.setError("Enter valid Email address !");
                    return;
                }
                if (UpdateEmailProfileActivity.this.lStrCountry.equalsIgnoreCase("")) {
                    UpdateEmailProfileActivity.this.editTextEmail.setError(null);
                    UpdateEmailProfileActivity.this.editTextCountry.setError("Enter State/City/Country");
                    return;
                }
                UpdateEmailProfileActivity.this.editTextEmail.setError(null);
                UpdateEmailProfileActivity.this.editTextCountry.setError(null);
                UpdateEmailProfileActivity.this.editTextName.setError(null);
                UpdateEmailProfileActivity.this.editTextPassword.setError(null);
                UpdateEmailProfileActivity.this.editTextPassword.setError(null);
                UpdateEmailProfileActivity.this.editText_lastname.setError(null);
                UpdateEmailProfileActivity.this.editText_middlename.setError(null);
                UpdateEmailProfileActivity.this.lStrUserName = UpdateEmailProfileActivity.this.editTextName.getText().toString().trim() + " " + UpdateEmailProfileActivity.this.editText_middlename.getText().toString().trim() + " " + UpdateEmailProfileActivity.this.editText_lastname.getText().toString().trim();
                UpdateEmailProfileActivity.this.sendProfileBody.setCity(UpdateEmailProfileActivity.this.lStrCountry);
                UpdateEmailProfileActivity.this.sendProfileBody.setEmail(UpdateEmailProfileActivity.this.lStrEmailID);
                UpdateEmailProfileActivity.this.sendProfileBody.setDevice_token(UpdateEmailProfileActivity.this.pstrDeviceId);
                UpdateEmailProfileActivity.this.sendProfileBody.setPassword("123456");
                UpdateEmailProfileActivity.this.sendProfileBody.setMobile(UpdateEmailProfileActivity.this.mobileNumber);
                UpdateEmailProfileActivity.this.sendProfileBody.setName(UpdateEmailProfileActivity.this.lStrUserName);
                UpdateEmailProfileActivity.this.sendProfileBody.setUser_id(UpdateEmailProfileActivity.this.datHandler.getData("user_id"));
                if (UpdateEmailProfileActivity.this.connectionDetector.isConnectingToInternet()) {
                    UpdateEmailProfileActivity.this.profile_update();
                    ErrorResponseDailogs.customToast(UpdateEmailProfileActivity.this, "WELCOME TO " + UpdateEmailProfileActivity.this.getString(R.string.app_name) + " APPLICATION");
                    return;
                }
                Toast.makeText(UpdateEmailProfileActivity.this.getApplicationContext(), UpdateEmailProfileActivity.this.getResources().getString(R.string.no_internet), 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidEmailId(String str) {
        return Pattern.compile("^(([\\w-]+\\.)+[\\w-]+|([a-zA-Z]{1}|[\\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z]+[\\w-]+\\.)+[a-zA-Z]{2,4})$").matcher(str).matches();
    }

    public void profile_update() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage("Updating Profile Details...");
        this.myProgressDialog.show();
        Log.d("RequestBody", new Gson().toJson(this.sendProfileBody));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).profile_update(this.sendProfileBody, new Callback<HomeResponse>() { // from class: com.dp.sgp.View.Activity.Profile.UpdateEmailProfileActivity.3
            @Override // retrofit.Callback
            public void success(HomeResponse homeResponse, Response response) {
                UpdateEmailProfileActivity.this.myProgressDialog.dismiss();
                if (homeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(homeResponse));
                    UpdateEmailProfileActivity.this.message = homeResponse.getMessage();
                    UpdateEmailProfileActivity.this.status = homeResponse.getStatus();
                    if (UpdateEmailProfileActivity.this.status.equalsIgnoreCase("success")) {
                        UpdateEmailProfileActivity.this.datHandler.addData(Scopes.PROFILE, "yes");
                        UpdateEmailProfileActivity updateEmailProfileActivity = UpdateEmailProfileActivity.this;
                        ErrorResponseDailogs.customToast(updateEmailProfileActivity, updateEmailProfileActivity.message);
                        ErrorResponseDailogs.customToast(UpdateEmailProfileActivity.this, "WELCOME TO " + UpdateEmailProfileActivity.this.getString(R.string.app_name) + " APPLICATION");
                        UpdateEmailProfileActivity.this.HomeScreen();
                        return;
                    }
                    UpdateEmailProfileActivity updateEmailProfileActivity2 = UpdateEmailProfileActivity.this;
                    ErrorResponseDailogs.errorcustomToast(updateEmailProfileActivity2, updateEmailProfileActivity2.message);
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                UpdateEmailProfileActivity.this.myProgressDialog.dismiss();
                UpdateEmailProfileActivity.this.HomeScreen();
            }
        });
    }

    public void HomeScreen() {
        this.sendHomeBody.setDevice_token(this.pstrDeviceId);
        this.sendHomeBody.setUser_id(this.datHandler.getData("user_id"));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).HomeScreen(this.sendHomeBody, new Callback<HomeResponse>() { // from class: com.dp.sgp.View.Activity.Profile.UpdateEmailProfileActivity.4
            @Override // retrofit.Callback
            public void success(HomeResponse homeResponse, Response response) {
                if (homeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(homeResponse));
                    UpdateEmailProfileActivity.this.message = homeResponse.getMessage();
                    UpdateEmailProfileActivity.this.status = homeResponse.getStatus();
                    if (homeResponse.getData() != null) {
                        UpdateEmailProfileActivity.this.saveHome(homeResponse, "home");
                        UpdateEmailProfileActivity.this.DindoriYoutube();
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                UpdateEmailProfileActivity.this.DindoriYoutube();
            }
        });
    }

    public void DeviceInfo() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String data = this.datHandler.getData("regId");
        if (data.equalsIgnoreCase("")) {
            data = "FCM ID NOT FOUND FOR THIS DEVICE";
        }
        try {
            if (Build.VERSION.RELEASE != null) {
                String str11 = Build.VERSION.RELEASE;
            }
            str = Build.SERIAL != null ? Build.SERIAL : "";
            try {
                str7 = Build.BRAND != null ? Build.BRAND : "";
                try {
                    str8 = Build.VERSION.RELEASE != null ? Build.VERSION.RELEASE : "";
                    try {
                        int i = Build.VERSION.SDK_INT > 0 ? Build.VERSION.SDK_INT : 0;
                        str5 = Build.MANUFACTURER != null ? Build.MANUFACTURER : "";
                        try {
                            str6 = Build.MODEL != null ? Build.MODEL : "";
                            try {
                                str9 = "android : " + str8 + " sdk=" + i;
                                try {
                                    str10 = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
                                } catch (Exception e) {
                                    e = e;
                                    str4 = str9;
                                    str3 = str8;
                                    str2 = str7;
                                    e.printStackTrace();
                                    str = str;
                                    str7 = str2;
                                    str8 = str3;
                                    str9 = str4;
                                    str10 = "";
                                }
                            } catch (Exception e2) {
                                e = e2;
                                str4 = "";
                                e = e;
                                str3 = str8;
                                str2 = str7;
                                e.printStackTrace();
                                str = str;
                                str7 = str2;
                                str8 = str3;
                                str9 = str4;
                                str10 = "";
                                String str12 = "DEVICETOKEN :- \nOS NAME :- " + Constants.OS + "\nUSER-ID :- " + this.datHandler.getData("user_id") + "\nFCM-ID :- " + data + "\nBRAND :- " + str7 + "\nOS-SDK :- " + str9 + "\nAPP-CURRENT_VERSION :- " + str10 + "\nMAC-ID :- " + str + "\nMODEL NAME :- " + str6 + "\nMANUFACTURER :- " + str5 + "\n";
                                this.updateDeviceInFo.setManufacturer(str5);
                                this.updateDeviceInFo.setBrand(str7);
                                this.updateDeviceInFo.setNetwork_type("Not Mention");
                                this.updateDeviceInFo.setIp_address(str);
                                this.updateDeviceInFo.setOs_version(str8);
                                this.updateDeviceInFo.setDevice_token(this.pstrDeviceId);
                                this.updateDeviceInFo.setApp_version(str10);
                                this.updateDeviceInFo.setPlatform(Constants.OS);
                                this.updateDeviceInFo.setModel(str6);
                                this.updateDeviceInFo.setFcm_id(data);
                                this.updateDeviceInFo.setUser_id(this.datHandler.getData("user_id"));
                                Log.d("updateDeviceInFo", new Gson().toJson(this.updateDeviceInFo));
                                ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).update_mobileinfo(this.updateDeviceInFo, new Callback<SucessResponse>() { // from class: com.dp.sgp.View.Activity.Profile.UpdateEmailProfileActivity.5
                                    @Override // retrofit.Callback
                                    public void success(SucessResponse sucessResponse, Response response) {
                                        if (sucessResponse != null) {
                                            Log.d("appUpdateBody", new Gson().toJson(sucessResponse));
                                            UpdateEmailProfileActivity.this.message = sucessResponse.getMessage();
                                            UpdateEmailProfileActivity.this.status = sucessResponse.getStatus();
                                            if (UpdateEmailProfileActivity.this.status.equalsIgnoreCase("success")) {
                                                UpdateEmailProfileActivity.this.startActivity(new Intent(UpdateEmailProfileActivity.this, (Class<?>) MainActivity.class));
                                                UpdateEmailProfileActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                                                UpdateEmailProfileActivity.this.finish();
                                            }
                                        }
                                    }

                                    @Override // retrofit.Callback
                                    public void failure(RetrofitError retrofitError) {
                                        UpdateEmailProfileActivity.this.startActivity(new Intent(UpdateEmailProfileActivity.this, (Class<?>) MainActivity.class));
                                        UpdateEmailProfileActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                                        UpdateEmailProfileActivity.this.finish();
                                    }
                                });
                            }
                        } catch (Exception e3) {
                            e = e3;
                            str4 = "";
                            str6 = str4;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        str4 = "";
                        str5 = str4;
                        str6 = str5;
                    }
                } catch (Exception e5) {
                    str3 = "";
                    str4 = str3;
                    str5 = str4;
                    str6 = str5;
                    str7 = str7;
                    str = str;
                    e = e5;
                }
            } catch (Exception e6) {
                str2 = "";
                str3 = str2;
                str4 = str3;
                str5 = str4;
                str6 = str5;
                str = str;
                e = e6;
            }
        } catch (Exception e7) {
            e = e7;
            str = "";
            str2 = str;
            str3 = str2;
            str4 = str3;
            str5 = str4;
            str6 = str5;
        }
        String str13 = "DEVICETOKEN :- \nOS NAME :- " + Constants.OS + "\nUSER-ID :- " + this.datHandler.getData("user_id") + "\nFCM-ID :- " + data + "\nBRAND :- " + str7 + "\nOS-SDK :- " + str9 + "\nAPP-CURRENT_VERSION :- " + str10 + "\nMAC-ID :- " + str + "\nMODEL NAME :- " + str6 + "\nMANUFACTURER :- " + str5 + "\n";
        this.updateDeviceInFo.setManufacturer(str5);
        this.updateDeviceInFo.setBrand(str7);
        this.updateDeviceInFo.setNetwork_type("Not Mention");
        this.updateDeviceInFo.setIp_address(str);
        this.updateDeviceInFo.setOs_version(str8);
        this.updateDeviceInFo.setDevice_token(this.pstrDeviceId);
        this.updateDeviceInFo.setApp_version(str10);
        this.updateDeviceInFo.setPlatform(Constants.OS);
        this.updateDeviceInFo.setModel(str6);
        this.updateDeviceInFo.setFcm_id(data);
        this.updateDeviceInFo.setUser_id(this.datHandler.getData("user_id"));
        Log.d("updateDeviceInFo", new Gson().toJson(this.updateDeviceInFo));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).update_mobileinfo(this.updateDeviceInFo, new Callback<SucessResponse>() { // from class: com.dp.sgp.View.Activity.Profile.UpdateEmailProfileActivity.5
            @Override // retrofit.Callback
            public void success(SucessResponse sucessResponse, Response response) {
                if (sucessResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(sucessResponse));
                    UpdateEmailProfileActivity.this.message = sucessResponse.getMessage();
                    UpdateEmailProfileActivity.this.status = sucessResponse.getStatus();
                    if (UpdateEmailProfileActivity.this.status.equalsIgnoreCase("success")) {
                        UpdateEmailProfileActivity.this.startActivity(new Intent(UpdateEmailProfileActivity.this, (Class<?>) MainActivity.class));
                        UpdateEmailProfileActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                        UpdateEmailProfileActivity.this.finish();
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                UpdateEmailProfileActivity.this.startActivity(new Intent(UpdateEmailProfileActivity.this, (Class<?>) MainActivity.class));
                UpdateEmailProfileActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                UpdateEmailProfileActivity.this.finish();
            }
        });
    }

    public void saveHome(HomeResponse homeResponse, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString(str, new Gson().toJson(homeResponse));
        editorEdit.apply();
    }

    public void DindoriYoutube() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Progress_Loading);
        this.myProgressDialog.show();
        this.sendHomeBody.setDevice_token(this.pstrDeviceId);
        this.sendHomeBody.setUser_id(this.datHandler.getData("user_id"));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).dindoriyoutube(this.sendHomeBody, new Callback<YoutubeResponse>() { // from class: com.dp.sgp.View.Activity.Profile.UpdateEmailProfileActivity.6
            @Override // retrofit.Callback
            public void success(YoutubeResponse youtubeResponse, Response response) {
                if (youtubeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(youtubeResponse));
                    UpdateEmailProfileActivity.this.message = youtubeResponse.getMessage();
                    UpdateEmailProfileActivity.this.status = youtubeResponse.getStatus();
                    if (youtubeResponse.getData() != null) {
                        UpdateEmailProfileActivity.this.saveDindori(youtubeResponse, "dindoriyoutube");
                    }
                }
                UpdateEmailProfileActivity.this.myProgressDialog.dismiss();
                UpdateEmailProfileActivity.this.DeviceInfo();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                UpdateEmailProfileActivity.this.myProgressDialog.dismiss();
                UpdateEmailProfileActivity.this.DeviceInfo();
            }
        });
    }

    public void saveDindori(YoutubeResponse youtubeResponse, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString(str, new Gson().toJson(youtubeResponse));
        editorEdit.apply();
    }
}
