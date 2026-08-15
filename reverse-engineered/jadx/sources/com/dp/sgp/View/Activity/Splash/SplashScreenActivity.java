package com.dp.sgp.View.Activity.Splash;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.Constants.AppConstant;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.CommonResponse;
import com.dp.sgp.Model.HomeResponse.HomeResponse;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.Model.HomeResponse.SendHomeBody;
import com.dp.sgp.Model.MainNityaseva.NityaSevaDataResponse;
import com.dp.sgp.Model.SucessResponse;
import com.dp.sgp.Model.UpdateDeviceInFo;
import com.dp.sgp.Model.YoutubeResponse;
import com.dp.sgp.Model.nityaseva.ProductCommonResponse;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Country.CountryActivity;
import com.dp.sgp.View.Activity.Home.MainActivity;
import com.dp.sgp.View.Activity.Login.CountryLoginActivity;
import com.dp.sgp.View.Activity.Login.NewLoginActivity;
import com.dp.sgp.View.Activity.Profile.UpdateEmailProfileActivity;
import com.dp.sgp.View.Activity.Profile.UpdateProfileActivity;
import com.dp.sgp.config.Config;
import com.dp.sgp.util.NotificationUtils;
import com.google.android.gms.common.Scopes;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.gson.Gson;
import java.text.SimpleDateFormat;
import java.util.Date;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class SplashScreenActivity extends AppCompatActivity {
    public static final String KEY_TODAY_DATE_ANDTIME = "TimeToday";
    private static int SPLASH_TIME_OUT = 500;
    private static final String TAG = "SplashScreenActivity";
    private ConnectionDetector connectionDetector;
    DataHandler dataHandler;
    private BroadcastReceiver mRegistrationBroadcastReceiver;
    String message;
    ProgressDialog progressDialog;
    SendCommonBody sendCommonBody;
    SendHomeBody sendHomeBody;
    String status;
    UpdateDeviceInFo updateDeviceInFo;
    String LstrToken = "";
    String user_id = "";
    String lStrFullname = "";
    String TodayDate_String = "";
    String lStrCode = "";
    String lStrprofile = "";
    String lStrotp = "";
    String mobileNumber = "";
    String device_token = "";
    String ValDate = "";

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.activity_splash_screen);
        this.connectionDetector = new ConnectionDetector(getApplicationContext());
        this.sendCommonBody = new SendCommonBody();
        this.updateDeviceInFo = new UpdateDeviceInFo();
        DataHandler dataHandler = new DataHandler(getApplicationContext());
        this.dataHandler = dataHandler;
        this.user_id = dataHandler.getData("user_id");
        this.LstrToken = this.dataHandler.getData(Key.TOKEN);
        this.lStrCode = this.dataHandler.getData("lang");
        this.mobileNumber = this.dataHandler.getData("Mobile");
        this.lStrotp = this.dataHandler.getData(Key.OTP);
        this.lStrprofile = this.dataHandler.getData(Scopes.PROFILE);
        this.sendHomeBody = new SendHomeBody();
        this.TodayDate_String = new SimpleDateFormat("dd-MM-yyyy").format(new Date());
        this.ValDate = this.dataHandler.getData(KEY_TODAY_DATE_ANDTIME);
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.sendCommonBody.setType("0");
        this.sendCommonBody.setId("0");
        this.sendHomeBody.setDevice_token(this.device_token);
        this.sendHomeBody.setUser_id(this.user_id);
        this.mRegistrationBroadcastReceiver = new BroadcastReceiver() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (intent.getAction().equals(Config.REGISTRATION_COMPLETE)) {
                    FirebaseMessaging.getInstance().subscribeToTopic(Config.TOPIC_GLOBAL);
                    SplashScreenActivity.this.displayFirebaseRegId();
                } else if (intent.getAction().equals(Config.PUSH_NOTIFICATION)) {
                    Toast.makeText(SplashScreenActivity.this.getApplicationContext(), "Push notification: " + intent.getStringExtra(Key.MESSAGE), 1).show();
                }
            }
        };
        displayFirebaseRegId();
        new Handler().postDelayed(new Runnable() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.2
            @Override // java.lang.Runnable
            public void run() {
                SplashScreenActivity.this.NextAcitvity();
            }
        }, SPLASH_TIME_OUT);
        new Handler().postDelayed(new Runnable() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.3
            @Override // java.lang.Runnable
            public void run() {
            }
        }, SPLASH_TIME_OUT);
    }

    public void NextAcitvity() {
        new Handler().postDelayed(new Runnable() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.4
            @Override // java.lang.Runnable
            public void run() {
                if (SplashScreenActivity.this.lStrCode.equalsIgnoreCase("")) {
                    SplashScreenActivity.this.startActivity(new Intent(SplashScreenActivity.this, (Class<?>) CountryActivity.class));
                    SplashScreenActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                    SplashScreenActivity.this.finish();
                    return;
                }
                if (SplashScreenActivity.this.lStrotp.equalsIgnoreCase("")) {
                    if (SplashScreenActivity.this.dataHandler.getData("DialingCode").equalsIgnoreCase("91")) {
                        SplashScreenActivity.this.startActivity(new Intent(SplashScreenActivity.this, (Class<?>) NewLoginActivity.class));
                        SplashScreenActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                        SplashScreenActivity.this.finish();
                        return;
                    }
                    SplashScreenActivity.this.startActivity(new Intent(SplashScreenActivity.this, (Class<?>) CountryLoginActivity.class));
                    SplashScreenActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                    SplashScreenActivity.this.finish();
                    return;
                }
                if (SplashScreenActivity.this.lStrprofile.equalsIgnoreCase("")) {
                    if (SplashScreenActivity.this.dataHandler.getData("DialingCode").equalsIgnoreCase("91")) {
                        Intent intent = new Intent(SplashScreenActivity.this, (Class<?>) UpdateProfileActivity.class);
                        intent.putExtra(AppConstant.Mobile_No, SplashScreenActivity.this.mobileNumber);
                        SplashScreenActivity.this.startActivity(intent);
                        SplashScreenActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                        SplashScreenActivity.this.finish();
                        return;
                    }
                    String data = SplashScreenActivity.this.dataHandler.getData("Email");
                    Intent intent2 = new Intent(SplashScreenActivity.this, (Class<?>) UpdateEmailProfileActivity.class);
                    intent2.putExtra(AppConstant.Mobile_No, data);
                    SplashScreenActivity.this.startActivity(intent2);
                    SplashScreenActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                    SplashScreenActivity.this.finish();
                    return;
                }
                Log.i("Stored Val", SplashScreenActivity.this.ValDate);
                Log.i("Today date", SplashScreenActivity.this.TodayDate_String);
                if (!SplashScreenActivity.this.ValDate.equals(SplashScreenActivity.this.TodayDate_String)) {
                    if (SplashScreenActivity.this.connectionDetector.isConnectingToInternet()) {
                        SplashScreenActivity.this.HomeScreen();
                        return;
                    } else {
                        Toast.makeText(SplashScreenActivity.this.getApplicationContext(), SplashScreenActivity.this.getResources().getString(R.string.no_internet), 0).show();
                        return;
                    }
                }
                Log.d("Comments", "Second TIme");
                SplashScreenActivity.this.startActivity(new Intent(SplashScreenActivity.this, (Class<?>) MainActivity.class));
                SplashScreenActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                SplashScreenActivity.this.finish();
            }
        }, SPLASH_TIME_OUT);
        new Handler().postDelayed(new Runnable() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.5
            @Override // java.lang.Runnable
            public void run() {
            }
        }, SPLASH_TIME_OUT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayFirebaseRegId() {
        String string = getApplicationContext().getSharedPreferences(Config.SHARED_PREF, 0).getString("regId", null);
        String str = TAG;
        Log.e(str, "Firebase reg id: " + string);
        this.dataHandler.addData("regId", string);
        if (!TextUtils.isEmpty(string)) {
            Log.d(str, "Firebase Reg Id: " + string);
            this.dataHandler.addData("regId", string);
        } else {
            Log.d("", "Firebase Reg Id is not received yet!");
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mRegistrationBroadcastReceiver, new IntentFilter(Config.REGISTRATION_COMPLETE));
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mRegistrationBroadcastReceiver, new IntentFilter(Config.PUSH_NOTIFICATION));
        NotificationUtils.clearNotifications(getApplicationContext());
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mRegistrationBroadcastReceiver);
        super.onPause();
    }

    public void HomeScreen() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).HomeScreen(this.sendHomeBody, new Callback<HomeResponse>() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.6
            @Override // retrofit.Callback
            public void success(HomeResponse homeResponse, Response response) {
                if (homeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(homeResponse));
                    SplashScreenActivity.this.message = homeResponse.getMessage();
                    SplashScreenActivity.this.status = homeResponse.getStatus();
                    if (homeResponse.getData() != null) {
                        SplashScreenActivity.this.saveHome(homeResponse, "home");
                    }
                }
                SplashScreenActivity.this.ProductsCommon();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SplashScreenActivity.this.ProductsCommon();
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
        String data = this.dataHandler.getData("regId");
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
                                String str12 = "DEVICETOKEN :- \nOS NAME :- " + Constants.OS + "\nUSER-ID :- " + this.user_id + "\nFCM-ID :- " + data + "\nBRAND :- " + str7 + "\nOS-SDK :- " + str9 + "\nAPP-CURRENT_VERSION :- " + str10 + "\nMAC-ID :- " + str + "\nMODEL NAME :- " + str6 + "\nMANUFACTURER :- " + str5 + "\n";
                                this.updateDeviceInFo.setManufacturer(str5);
                                this.updateDeviceInFo.setBrand(str7);
                                this.updateDeviceInFo.setNetwork_type("Not Mention");
                                this.updateDeviceInFo.setIp_address(str);
                                this.updateDeviceInFo.setOs_version(str8);
                                this.updateDeviceInFo.setDevice_token(this.device_token);
                                this.updateDeviceInFo.setApp_version(str10);
                                this.updateDeviceInFo.setPlatform(Constants.OS);
                                this.updateDeviceInFo.setModel(str6);
                                this.updateDeviceInFo.setFcm_id(data);
                                this.updateDeviceInFo.setUser_id(this.user_id);
                                Log.d("updateDeviceInFo", new Gson().toJson(this.updateDeviceInFo));
                                ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).update_mobileinfo(this.updateDeviceInFo, new Callback<SucessResponse>() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.7
                                    @Override // retrofit.Callback
                                    public void success(SucessResponse sucessResponse, Response response) {
                                        SplashScreenActivity.this.progressDialog.dismiss();
                                        if (sucessResponse != null) {
                                            Log.d("appUpdateBody", new Gson().toJson(sucessResponse));
                                            SplashScreenActivity.this.message = sucessResponse.getMessage();
                                            SplashScreenActivity.this.status = sucessResponse.getStatus();
                                            if (SplashScreenActivity.this.status.equalsIgnoreCase("success")) {
                                                Log.d("Comments", "First Time");
                                                SplashScreenActivity.this.dataHandler.addData(SplashScreenActivity.KEY_TODAY_DATE_ANDTIME, SplashScreenActivity.this.TodayDate_String);
                                                Log.d("InsertionDate", SplashScreenActivity.this.dataHandler.getData(SplashScreenActivity.KEY_TODAY_DATE_ANDTIME));
                                                SplashScreenActivity.this.startActivity(new Intent(SplashScreenActivity.this, (Class<?>) MainActivity.class));
                                                SplashScreenActivity.this.finish();
                                            }
                                        }
                                    }

                                    @Override // retrofit.Callback
                                    public void failure(RetrofitError retrofitError) {
                                        SplashScreenActivity.this.progressDialog.dismiss();
                                        SplashScreenActivity.this.startActivity(new Intent(SplashScreenActivity.this, (Class<?>) MainActivity.class));
                                        SplashScreenActivity.this.finish();
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
        String str13 = "DEVICETOKEN :- \nOS NAME :- " + Constants.OS + "\nUSER-ID :- " + this.user_id + "\nFCM-ID :- " + data + "\nBRAND :- " + str7 + "\nOS-SDK :- " + str9 + "\nAPP-CURRENT_VERSION :- " + str10 + "\nMAC-ID :- " + str + "\nMODEL NAME :- " + str6 + "\nMANUFACTURER :- " + str5 + "\n";
        this.updateDeviceInFo.setManufacturer(str5);
        this.updateDeviceInFo.setBrand(str7);
        this.updateDeviceInFo.setNetwork_type("Not Mention");
        this.updateDeviceInFo.setIp_address(str);
        this.updateDeviceInFo.setOs_version(str8);
        this.updateDeviceInFo.setDevice_token(this.device_token);
        this.updateDeviceInFo.setApp_version(str10);
        this.updateDeviceInFo.setPlatform(Constants.OS);
        this.updateDeviceInFo.setModel(str6);
        this.updateDeviceInFo.setFcm_id(data);
        this.updateDeviceInFo.setUser_id(this.user_id);
        Log.d("updateDeviceInFo", new Gson().toJson(this.updateDeviceInFo));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).update_mobileinfo(this.updateDeviceInFo, new Callback<SucessResponse>() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.7
            @Override // retrofit.Callback
            public void success(SucessResponse sucessResponse, Response response) {
                SplashScreenActivity.this.progressDialog.dismiss();
                if (sucessResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(sucessResponse));
                    SplashScreenActivity.this.message = sucessResponse.getMessage();
                    SplashScreenActivity.this.status = sucessResponse.getStatus();
                    if (SplashScreenActivity.this.status.equalsIgnoreCase("success")) {
                        Log.d("Comments", "First Time");
                        SplashScreenActivity.this.dataHandler.addData(SplashScreenActivity.KEY_TODAY_DATE_ANDTIME, SplashScreenActivity.this.TodayDate_String);
                        Log.d("InsertionDate", SplashScreenActivity.this.dataHandler.getData(SplashScreenActivity.KEY_TODAY_DATE_ANDTIME));
                        SplashScreenActivity.this.startActivity(new Intent(SplashScreenActivity.this, (Class<?>) MainActivity.class));
                        SplashScreenActivity.this.finish();
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SplashScreenActivity.this.progressDialog.dismiss();
                SplashScreenActivity.this.startActivity(new Intent(SplashScreenActivity.this, (Class<?>) MainActivity.class));
                SplashScreenActivity.this.finish();
            }
        });
    }

    public void ProductsCommon() {
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).ProductsCommon(this.sendCommonBody, new Callback<ProductCommonResponse>() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.8
            @Override // retrofit.Callback
            public void success(ProductCommonResponse productCommonResponse, Response response) {
                if (productCommonResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(productCommonResponse));
                    SplashScreenActivity.this.message = productCommonResponse.getMessage();
                    SplashScreenActivity.this.status = productCommonResponse.getStatus();
                    if (productCommonResponse.getData() != null) {
                        SplashScreenActivity.this.saveProductsCommon(productCommonResponse, "Products");
                    }
                }
                SplashScreenActivity.this.Nitya();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SplashScreenActivity.this.Nitya();
            }
        });
    }

    public void Nitya() {
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).nityaseva(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.9
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    SplashScreenActivity.this.message = nityaSevaDataResponse.getMessage();
                    SplashScreenActivity.this.status = nityaSevaDataResponse.getStatus();
                    if (nityaSevaDataResponse.getData() != null) {
                        SplashScreenActivity.this.saveNitya(nityaSevaDataResponse, "Nitya");
                    }
                }
                SplashScreenActivity.this.Aarti();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SplashScreenActivity.this.Aarti();
            }
        });
    }

    public void Aarti() {
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).nityaseva(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.10
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    SplashScreenActivity.this.message = nityaSevaDataResponse.getMessage();
                    SplashScreenActivity.this.status = nityaSevaDataResponse.getStatus();
                    if (nityaSevaDataResponse.getData() != null) {
                        SplashScreenActivity.this.saveAarti(nityaSevaDataResponse, "Aarti");
                    }
                }
                SplashScreenActivity.this.VibhagDetails();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SplashScreenActivity.this.VibhagDetails();
            }
        });
    }

    public void saveHome(HomeResponse homeResponse, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString(str, new Gson().toJson(homeResponse));
        editorEdit.apply();
    }

    public void saveProductsCommon(ProductCommonResponse productCommonResponse, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString(str, new Gson().toJson(productCommonResponse));
        editorEdit.apply();
    }

    public void saveNitya(NityaSevaDataResponse nityaSevaDataResponse, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString(str, new Gson().toJson(nityaSevaDataResponse));
        editorEdit.apply();
    }

    public void saveAarti(NityaSevaDataResponse nityaSevaDataResponse, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString(str, new Gson().toJson(nityaSevaDataResponse));
        editorEdit.apply();
    }

    public void saveVibhag(CommonResponse commonResponse, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString(str, new Gson().toJson(commonResponse));
        editorEdit.apply();
    }

    public void saveSanvar(NityaSevaDataResponse nityaSevaDataResponse, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString(str, new Gson().toJson(nityaSevaDataResponse));
        editorEdit.apply();
    }

    public void VibhagDetails() {
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).Vibhag(this.sendCommonBody, new Callback<CommonResponse>() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.11
            @Override // retrofit.Callback
            public void success(CommonResponse commonResponse, Response response) {
                if (commonResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(commonResponse));
                    SplashScreenActivity.this.message = commonResponse.getMessage();
                    SplashScreenActivity.this.status = commonResponse.getStatus();
                    if (commonResponse.getData() != null) {
                        SplashScreenActivity.this.saveVibhag(commonResponse, "Vibhag");
                    }
                    SplashScreenActivity.this.Sanvar();
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SplashScreenActivity.this.Sanvar();
            }
        });
    }

    public void Sanvar() {
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).nityaseva(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.12
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    SplashScreenActivity.this.message = nityaSevaDataResponse.getMessage();
                    SplashScreenActivity.this.status = nityaSevaDataResponse.getStatus();
                    if (nityaSevaDataResponse.getData() != null) {
                        SplashScreenActivity.this.saveSanvar(nityaSevaDataResponse, "sanvar");
                    }
                }
                SplashScreenActivity.this.DindoriYoutube();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SplashScreenActivity.this.DindoriYoutube();
            }
        });
    }

    public void DindoriYoutube() {
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).dindoriyoutube(this.sendHomeBody, new Callback<YoutubeResponse>() { // from class: com.dp.sgp.View.Activity.Splash.SplashScreenActivity.13
            @Override // retrofit.Callback
            public void success(YoutubeResponse youtubeResponse, Response response) {
                if (youtubeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(youtubeResponse));
                    SplashScreenActivity.this.message = youtubeResponse.getMessage();
                    SplashScreenActivity.this.status = youtubeResponse.getStatus();
                    if (youtubeResponse.getData() != null) {
                        SplashScreenActivity.this.saveDindori(youtubeResponse, "dindoriyoutube");
                    }
                }
                SplashScreenActivity.this.DeviceInfo();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SplashScreenActivity.this.DeviceInfo();
            }
        });
    }

    public void saveDindori(YoutubeResponse youtubeResponse, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString(str, new Gson().toJson(youtubeResponse));
        editorEdit.apply();
    }
}
