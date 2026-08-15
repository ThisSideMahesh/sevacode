package com.dp.sgp.View.Activity.Login;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.Constants.AppConstant;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.CommonResponse;
import com.dp.sgp.Model.HomeResponse.HomeData;
import com.dp.sgp.Model.HomeResponse.HomeResponse;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.Model.HomeResponse.SendHomeBody;
import com.dp.sgp.Model.MainNityaseva.NityaSevaDataResponse;
import com.dp.sgp.Model.SendLoginBody;
import com.dp.sgp.Model.SendOtpBody;
import com.dp.sgp.Model.SucessResponse;
import com.dp.sgp.Model.UpdateDeviceInFo;
import com.dp.sgp.Model.YoutubeResponse;
import com.dp.sgp.Model.nityaseva.ProductCommonResponse;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Home.BaseActivity;
import com.dp.sgp.View.Activity.Home.MainActivity;
import com.dp.sgp.View.Activity.Profile.UpdateProfileActivity;
import com.dp.sgp.util.ErrorResponseDailogs;
import com.dp.sgp.util.GenericTextWatcher;
import com.google.android.gms.common.Scopes;
import com.google.gson.Gson;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class OtpVerificationActivity extends BaseActivity {
    private static CountDownTimer countDownTimer;
    private static TextView countdownTimerText;
    SendLoginBody REsendLoginBody;
    private Button btnRetry;
    private Button btnVerify;
    private ConnectionDetector connectionDetector;
    HomeData data;
    DataHandler dataHandler;
    private LinearLayout layMain;
    private LinearLayout layoutNoInternet;
    String message;
    ProgressDialog myProgressDialog;
    private EditText otpEditBox1;
    private EditText otpEditBox2;
    private EditText otpEditBox3;
    private EditText otpEditBox4;
    TextView otp_text_box1;
    TextView otp_text_box2;
    TextView otp_text_box3;
    TextView otp_text_box4;
    private LinearLayout rootOtpLayout;
    SendCommonBody sendCommonBody;
    SendHomeBody sendHomeBody;
    SendOtpBody sendLoginBody;
    SendOtpBody sendOtpBody;
    String status;
    private TextView tvTSubitle;
    private TextView tvTitle;
    private TextView tv_resend;
    UpdateDeviceInFo updateDeviceInFo;
    private String mobileNumber = "";
    private String lStrMspin = "";
    private String pstrDeviceId = "";
    private String otp = "";
    private String lStrSendOtp = "";
    private String lStrToken = "";
    int QustionStatus = 0;

    @Override // com.dp.sgp.View.Activity.Home.BaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.activity_otp_verification2);
        this.updateDeviceInFo = new UpdateDeviceInFo();
        this.pstrDeviceId = Settings.Secure.getString(getApplicationContext().getContentResolver(), "android_id");
        this.sendCommonBody = new SendCommonBody();
        this.sendHomeBody = new SendHomeBody();
        this.sendLoginBody = new SendOtpBody();
        this.REsendLoginBody = new SendLoginBody();
        this.dataHandler = new DataHandler(getApplicationContext());
        this.sendOtpBody = new SendOtpBody();
        this.connectionDetector = new ConnectionDetector(getApplicationContext());
        if (getIntent() != null) {
            this.mobileNumber = getIntent().getStringExtra(AppConstant.Mobile_No);
            this.lStrMspin = getIntent().getStringExtra(AppConstant.Mspin_StaffId);
        }
        countdownTimerText = (TextView) findViewById(R.id.tv_timer);
        this.tv_resend = (TextView) findViewById(R.id.tv_resend);
        this.otp_text_box1 = (TextView) findViewById(R.id.otp_text_box1);
        this.otp_text_box2 = (TextView) findViewById(R.id.otp_text_box2);
        this.otp_text_box3 = (TextView) findViewById(R.id.otp_text_box3);
        this.otp_text_box4 = (TextView) findViewById(R.id.otp_text_box4);
        int iGenerateRandomSingleDigit = generateRandomSingleDigit();
        int iGenerateRandomSingleDigit2 = generateRandomSingleDigit();
        int iGenerateRandomSingleDigit3 = generateRandomSingleDigit();
        int iGenerateRandomSingleDigit4 = generateRandomSingleDigit();
        this.otp_text_box1.setText(iGenerateRandomSingleDigit + "");
        this.otp_text_box2.setText(iGenerateRandomSingleDigit2 + "");
        this.otp_text_box3.setText(iGenerateRandomSingleDigit3 + "");
        this.otp_text_box4.setText(iGenerateRandomSingleDigit4 + "");
        initView();
        if (countDownTimer == null) {
            startTimer(Integer.parseInt("1") * 60 * 1000);
        } else {
            stopCountdown();
        }
        this.mobileNumber.substring(0, 2);
        String str = this.mobileNumber;
        str.substring(str.length() - 2);
        this.tvTSubitle.setText("Please enter the verification code shown below.");
        this.dataHandler.getData("currentopt");
        EditText editText = this.otpEditBox1;
        final EditText[] editTextArr = {editText, this.otpEditBox2, this.otpEditBox3, this.otpEditBox4};
        editText.addTextChangedListener(new GenericTextWatcher(this.otpEditBox1, editTextArr));
        this.otpEditBox2.addTextChangedListener(new GenericTextWatcher(this.otpEditBox2, editTextArr));
        this.otpEditBox3.addTextChangedListener(new GenericTextWatcher(this.otpEditBox3, editTextArr));
        this.otpEditBox4.addTextChangedListener(new GenericTextWatcher(this.otpEditBox4, editTextArr));
        this.otpEditBox1.addTextChangedListener(new TextWatcher() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 1) {
                    OtpVerificationActivity.this.otpEditBox2.requestFocus();
                }
            }
        });
        this.otpEditBox2.addTextChangedListener(new TextWatcher() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 1) {
                    OtpVerificationActivity.this.otpEditBox3.requestFocus();
                }
            }
        });
        this.otpEditBox3.addTextChangedListener(new TextWatcher() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 1) {
                    OtpVerificationActivity.this.otpEditBox4.requestFocus();
                }
            }
        });
        this.btnVerify.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (editTextArr.length == 4) {
                    OtpVerificationActivity.this.otp = OtpVerificationActivity.this.otpEditBox1.getText().toString().trim() + OtpVerificationActivity.this.otpEditBox2.getText().toString().trim() + OtpVerificationActivity.this.otpEditBox3.getText().toString().trim() + OtpVerificationActivity.this.otpEditBox4.getText().toString().trim();
                    String str2 = OtpVerificationActivity.this.otp_text_box1.getText().toString().trim() + OtpVerificationActivity.this.otp_text_box2.getText().toString().trim() + OtpVerificationActivity.this.otp_text_box3.getText().toString().trim() + OtpVerificationActivity.this.otp_text_box4.getText().toString().trim();
                    if (!OtpVerificationActivity.this.otp.isEmpty()) {
                        if (!str2.equalsIgnoreCase(OtpVerificationActivity.this.otp)) {
                            ErrorResponseDailogs.errorcustomToast(OtpVerificationActivity.this, "The verification code does not match.");
                            return;
                        }
                        if (OtpVerificationActivity.this.otp.length() > 3) {
                            OtpVerificationActivity otpVerificationActivity = OtpVerificationActivity.this;
                            otpVerificationActivity.lStrSendOtp = otpVerificationActivity.otp;
                            OtpVerificationActivity.this.sendOtpBody.setDevice_token(OtpVerificationActivity.this.pstrDeviceId);
                            OtpVerificationActivity.this.sendOtpBody.setOtp("1234");
                            OtpVerificationActivity.this.sendOtpBody.setMobile(OtpVerificationActivity.this.mobileNumber);
                            if (OtpVerificationActivity.this.connectionDetector.isConnectingToInternet()) {
                                OtpVerificationActivity.this.SendOtpBody();
                                return;
                            } else {
                                Toast.makeText(OtpVerificationActivity.this.getApplicationContext(), OtpVerificationActivity.this.getResources().getString(R.string.no_internet), 0).show();
                                return;
                            }
                        }
                        ErrorResponseDailogs.customToast(OtpVerificationActivity.this, "Please Enter All Numbers In Boxes");
                        return;
                    }
                    ErrorResponseDailogs.customToast(OtpVerificationActivity.this, "Please Enter OTP");
                    return;
                }
                ErrorResponseDailogs.errorcustomToast(OtpVerificationActivity.this, "Please Enter Verification Code");
            }
        });
        this.tv_resend.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OtpVerificationActivity.this.REsendLoginBody.setDevice_token(OtpVerificationActivity.this.pstrDeviceId);
                OtpVerificationActivity.this.REsendLoginBody.setMobile(OtpVerificationActivity.this.mobileNumber);
                OtpVerificationActivity.this.REsendLoginBody.setFcm_id(OtpVerificationActivity.this.dataHandler.getData("regId"));
                if (OtpVerificationActivity.this.connectionDetector.isConnectingToInternet()) {
                    int iGenerateRandomSingleDigit5 = OtpVerificationActivity.generateRandomSingleDigit();
                    int iGenerateRandomSingleDigit6 = OtpVerificationActivity.generateRandomSingleDigit();
                    int iGenerateRandomSingleDigit7 = OtpVerificationActivity.generateRandomSingleDigit();
                    int iGenerateRandomSingleDigit8 = OtpVerificationActivity.generateRandomSingleDigit();
                    OtpVerificationActivity.this.otp_text_box1.setText(iGenerateRandomSingleDigit5 + "");
                    OtpVerificationActivity.this.otp_text_box2.setText(iGenerateRandomSingleDigit6 + "");
                    OtpVerificationActivity.this.otp_text_box3.setText(iGenerateRandomSingleDigit7 + "");
                    OtpVerificationActivity.this.otp_text_box4.setText(iGenerateRandomSingleDigit8 + "");
                    OtpVerificationActivity.this.otpEditBox1.setText("");
                    OtpVerificationActivity.this.otpEditBox2.setText("");
                    OtpVerificationActivity.this.otpEditBox3.setText("");
                    OtpVerificationActivity.this.otpEditBox4.setText("");
                    return;
                }
                Toast.makeText(OtpVerificationActivity.this.getApplicationContext(), OtpVerificationActivity.this.getResources().getString(R.string.no_internet), 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int generateRandomSingleDigit() {
        return new Random().nextInt(9) + 1;
    }

    private void initView() {
        this.tvTitle = (TextView) findViewById(R.id.tvTitle);
        this.tvTSubitle = (TextView) findViewById(R.id.tvTSubitle);
        this.rootOtpLayout = (LinearLayout) findViewById(R.id.root_otp_layout);
        this.otpEditBox1 = (EditText) findViewById(R.id.otp_edit_box1);
        this.otpEditBox2 = (EditText) findViewById(R.id.otp_edit_box2);
        this.otpEditBox3 = (EditText) findViewById(R.id.otp_edit_box3);
        this.otpEditBox4 = (EditText) findViewById(R.id.otp_edit_box4);
        this.btnVerify = (Button) findViewById(R.id.btnVerify);
        this.layMain = (LinearLayout) findViewById(R.id.layMain);
    }

    private void stopCountdown() {
        CountDownTimer countDownTimer2 = countDownTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
            countDownTimer = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.dp.sgp.View.Activity.Login.OtpVerificationActivity$6] */
    private void startTimer(int i) {
        this.tv_resend.setVisibility(8);
        countDownTimer = new CountDownTimer(i, 1000L) { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.6
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                OtpVerificationActivity.countdownTimerText.setText(String.format("%02d:%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(j)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(j))), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j)))));
                OtpVerificationActivity.this.tv_resend.setVisibility(8);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                OtpVerificationActivity.this.tv_resend.setVisibility(0);
                OtpVerificationActivity.countdownTimerText.setText("TIME'S UP !");
                CountDownTimer unused = OtpVerificationActivity.countDownTimer = null;
            }
        }.start();
    }

    public void ResendTimer() {
        startTimer(Integer.parseInt("1") * 60 * 1000);
    }

    public void SendOtpBody() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage("Verifying Otp...");
        this.myProgressDialog.show();
        Log.d("RequestBody", new Gson().toJson(this.sendOtpBody));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).SendOtpBody(this.sendOtpBody, new Callback<HomeResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.7
            @Override // retrofit.Callback
            public void success(HomeResponse homeResponse, Response response) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (homeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(homeResponse));
                    OtpVerificationActivity.this.message = homeResponse.getMessage();
                    OtpVerificationActivity.this.status = homeResponse.getStatus();
                    if (OtpVerificationActivity.this.status.equalsIgnoreCase("success")) {
                        OtpVerificationActivity.this.dataHandler.addData("user_id", homeResponse.getUser_id());
                        OtpVerificationActivity.this.dataHandler.addData(Constants.DEVICE_TOKEN, OtpVerificationActivity.this.pstrDeviceId);
                        if (homeResponse.getFlag().intValue() == 0) {
                            OtpVerificationActivity.this.dataHandler.addData(Key.OTP, "yes");
                            OtpVerificationActivity otpVerificationActivity = OtpVerificationActivity.this;
                            ErrorResponseDailogs.customToast(otpVerificationActivity, otpVerificationActivity.message);
                            OtpVerificationActivity.this.dataHandler.addData("Mobile", OtpVerificationActivity.this.mobileNumber);
                            Intent intent = new Intent(OtpVerificationActivity.this, (Class<?>) UpdateProfileActivity.class);
                            intent.setFlags(268468224);
                            intent.putExtra(AppConstant.Mobile_No, OtpVerificationActivity.this.mobileNumber);
                            intent.putExtra(AppConstant.Mspin_StaffId, OtpVerificationActivity.this.lStrMspin);
                            OtpVerificationActivity.this.startActivity(intent);
                            OtpVerificationActivity.this.finish();
                            return;
                        }
                        OtpVerificationActivity.this.dataHandler.addData(Scopes.PROFILE, "yes");
                        OtpVerificationActivity.this.dataHandler.addData(Key.OTP, "yes");
                        OtpVerificationActivity otpVerificationActivity2 = OtpVerificationActivity.this;
                        ErrorResponseDailogs.customToast(otpVerificationActivity2, otpVerificationActivity2.message);
                        OtpVerificationActivity.this.dataHandler.addData("Mobile", OtpVerificationActivity.this.mobileNumber);
                        OtpVerificationActivity.this.HomeScreen();
                        return;
                    }
                    OtpVerificationActivity otpVerificationActivity3 = OtpVerificationActivity.this;
                    ErrorResponseDailogs.errorcustomToast(otpVerificationActivity3, otpVerificationActivity3.message);
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (retrofitError.toString() != null) {
                    Toast.makeText(OtpVerificationActivity.this, retrofitError.toString(), 0).show();
                }
                OtpVerificationActivity.this.HomeScreen();
            }
        });
    }

    public void Login() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Authenticating);
        this.myProgressDialog.show();
        Log.d("RequestBody", new Gson().toJson(this.sendLoginBody));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).Login(this.REsendLoginBody, new Callback<HomeResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.8
            @Override // retrofit.Callback
            public void success(HomeResponse homeResponse, Response response) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (homeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(homeResponse));
                    OtpVerificationActivity.this.message = homeResponse.getMessage();
                    OtpVerificationActivity.this.status = homeResponse.getStatus();
                    if (OtpVerificationActivity.this.status.equalsIgnoreCase("success")) {
                        OtpVerificationActivity otpVerificationActivity = OtpVerificationActivity.this;
                        ErrorResponseDailogs.customToast(otpVerificationActivity, otpVerificationActivity.message);
                    } else {
                        OtpVerificationActivity otpVerificationActivity2 = OtpVerificationActivity.this;
                        ErrorResponseDailogs.errorcustomToast(otpVerificationActivity2, otpVerificationActivity2.message);
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
            }
        });
    }

    public void HomeScreen() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage("Verifying Otp...");
        this.myProgressDialog.show();
        this.sendHomeBody.setDevice_token(this.pstrDeviceId);
        this.sendHomeBody.setUser_id(this.dataHandler.getData("user_id"));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).HomeScreen(this.sendHomeBody, new Callback<HomeResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.9
            @Override // retrofit.Callback
            public void success(HomeResponse homeResponse, Response response) {
                Log.d("HomeScreenBody", new Gson().toJson(homeResponse));
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (homeResponse != null) {
                    OtpVerificationActivity.this.message = homeResponse.getMessage();
                    OtpVerificationActivity.this.status = homeResponse.getStatus();
                    if (homeResponse.getData() != null) {
                        OtpVerificationActivity.this.saveHome(homeResponse, "home");
                        OtpVerificationActivity.this.ProductsCommon();
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (retrofitError.toString() != null) {
                    Toast.makeText(OtpVerificationActivity.this, retrofitError.toString(), 0).show();
                }
                OtpVerificationActivity.this.ProductsCommon();
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
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Loading);
        this.myProgressDialog.show();
        String data = this.dataHandler.getData("regId");
        if (data.equalsIgnoreCase("")) {
            data = "FCM ID NOT FOUND FOR THIS DEVICE";
        }
        try {
            if (Build.VERSION.RELEASE != null) {
                String str8 = Build.VERSION.RELEASE;
            }
            str = Build.SERIAL != null ? Build.SERIAL : "";
            try {
                str2 = Build.BRAND != null ? Build.BRAND : "";
                try {
                    str3 = Build.VERSION.RELEASE != null ? Build.VERSION.RELEASE : "";
                    try {
                        int i = Build.VERSION.SDK_INT > 0 ? Build.VERSION.SDK_INT : 0;
                        str5 = Build.MANUFACTURER != null ? Build.MANUFACTURER : "";
                        try {
                            str6 = Build.MODEL != null ? Build.MODEL : "";
                            try {
                                str4 = "android : " + str3 + " sdk=" + i;
                                try {
                                    str7 = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
                                } catch (Exception e) {
                                    e = e;
                                    e.printStackTrace();
                                    str7 = "";
                                }
                            } catch (Exception e2) {
                                e = e2;
                                str4 = "";
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
                        e.printStackTrace();
                        str7 = "";
                        String str9 = "DEVICETOKEN :- \nOS NAME :- " + Constants.OS + "\nUSER-ID :- " + this.dataHandler.getData("user_id") + "\nFCM-ID :- " + data + "\nBRAND :- " + str2 + "\nOS-SDK :- " + str4 + "\nAPP-CURRENT_VERSION :- " + str7 + "\nMAC-ID :- " + str + "\nMODEL NAME :- " + str6 + "\nMANUFACTURER :- " + str5 + "\n";
                        this.updateDeviceInFo.setManufacturer(str5);
                        this.updateDeviceInFo.setBrand(str2);
                        this.updateDeviceInFo.setNetwork_type("Not Mention");
                        this.updateDeviceInFo.setIp_address(str);
                        this.updateDeviceInFo.setOs_version(str3);
                        this.updateDeviceInFo.setDevice_token(this.pstrDeviceId);
                        this.updateDeviceInFo.setApp_version(str7);
                        this.updateDeviceInFo.setPlatform(Constants.OS);
                        this.updateDeviceInFo.setModel(str6);
                        this.updateDeviceInFo.setFcm_id(data);
                        this.updateDeviceInFo.setUser_id(this.dataHandler.getData("user_id"));
                        Log.d("updateDeviceInFo", new Gson().toJson(this.updateDeviceInFo));
                        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).update_mobileinfo(this.updateDeviceInFo, new Callback<SucessResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.10
                            @Override // retrofit.Callback
                            public void success(SucessResponse sucessResponse, Response response) {
                                OtpVerificationActivity.this.myProgressDialog.dismiss();
                                if (sucessResponse != null) {
                                    Log.d("appUpdateBody", new Gson().toJson(sucessResponse));
                                    OtpVerificationActivity.this.message = sucessResponse.getMessage();
                                    OtpVerificationActivity.this.status = sucessResponse.getStatus();
                                    if (OtpVerificationActivity.this.status.equalsIgnoreCase("success")) {
                                        ErrorResponseDailogs.customToast(OtpVerificationActivity.this, "WELCOME TO " + OtpVerificationActivity.this.getString(R.string.app_name) + " APPLICATION");
                                        OtpVerificationActivity.this.startActivity(new Intent(OtpVerificationActivity.this, (Class<?>) MainActivity.class));
                                        OtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                                        OtpVerificationActivity.this.finish();
                                    }
                                }
                            }

                            @Override // retrofit.Callback
                            public void failure(RetrofitError retrofitError) {
                                OtpVerificationActivity.this.myProgressDialog.dismiss();
                                if (retrofitError.toString() != null) {
                                    Toast.makeText(OtpVerificationActivity.this, retrofitError.toString(), 0).show();
                                }
                                OtpVerificationActivity.this.startActivity(new Intent(OtpVerificationActivity.this, (Class<?>) MainActivity.class));
                                OtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                                OtpVerificationActivity.this.finish();
                            }
                        });
                    }
                } catch (Exception e5) {
                    e = e5;
                    str3 = "";
                    str4 = str3;
                    str5 = str4;
                    str6 = str5;
                    e.printStackTrace();
                    str7 = "";
                    String str10 = "DEVICETOKEN :- \nOS NAME :- " + Constants.OS + "\nUSER-ID :- " + this.dataHandler.getData("user_id") + "\nFCM-ID :- " + data + "\nBRAND :- " + str2 + "\nOS-SDK :- " + str4 + "\nAPP-CURRENT_VERSION :- " + str7 + "\nMAC-ID :- " + str + "\nMODEL NAME :- " + str6 + "\nMANUFACTURER :- " + str5 + "\n";
                    this.updateDeviceInFo.setManufacturer(str5);
                    this.updateDeviceInFo.setBrand(str2);
                    this.updateDeviceInFo.setNetwork_type("Not Mention");
                    this.updateDeviceInFo.setIp_address(str);
                    this.updateDeviceInFo.setOs_version(str3);
                    this.updateDeviceInFo.setDevice_token(this.pstrDeviceId);
                    this.updateDeviceInFo.setApp_version(str7);
                    this.updateDeviceInFo.setPlatform(Constants.OS);
                    this.updateDeviceInFo.setModel(str6);
                    this.updateDeviceInFo.setFcm_id(data);
                    this.updateDeviceInFo.setUser_id(this.dataHandler.getData("user_id"));
                    Log.d("updateDeviceInFo", new Gson().toJson(this.updateDeviceInFo));
                    ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).update_mobileinfo(this.updateDeviceInFo, new Callback<SucessResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.10
                        @Override // retrofit.Callback
                        public void success(SucessResponse sucessResponse, Response response) {
                            OtpVerificationActivity.this.myProgressDialog.dismiss();
                            if (sucessResponse != null) {
                                Log.d("appUpdateBody", new Gson().toJson(sucessResponse));
                                OtpVerificationActivity.this.message = sucessResponse.getMessage();
                                OtpVerificationActivity.this.status = sucessResponse.getStatus();
                                if (OtpVerificationActivity.this.status.equalsIgnoreCase("success")) {
                                    ErrorResponseDailogs.customToast(OtpVerificationActivity.this, "WELCOME TO " + OtpVerificationActivity.this.getString(R.string.app_name) + " APPLICATION");
                                    OtpVerificationActivity.this.startActivity(new Intent(OtpVerificationActivity.this, (Class<?>) MainActivity.class));
                                    OtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                                    OtpVerificationActivity.this.finish();
                                }
                            }
                        }

                        @Override // retrofit.Callback
                        public void failure(RetrofitError retrofitError) {
                            OtpVerificationActivity.this.myProgressDialog.dismiss();
                            if (retrofitError.toString() != null) {
                                Toast.makeText(OtpVerificationActivity.this, retrofitError.toString(), 0).show();
                            }
                            OtpVerificationActivity.this.startActivity(new Intent(OtpVerificationActivity.this, (Class<?>) MainActivity.class));
                            OtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                            OtpVerificationActivity.this.finish();
                        }
                    });
                }
            } catch (Exception e6) {
                e = e6;
                str2 = "";
                str3 = str2;
                str4 = str3;
                str5 = str4;
                str6 = str5;
                e.printStackTrace();
                str7 = "";
                String str11 = "DEVICETOKEN :- \nOS NAME :- " + Constants.OS + "\nUSER-ID :- " + this.dataHandler.getData("user_id") + "\nFCM-ID :- " + data + "\nBRAND :- " + str2 + "\nOS-SDK :- " + str4 + "\nAPP-CURRENT_VERSION :- " + str7 + "\nMAC-ID :- " + str + "\nMODEL NAME :- " + str6 + "\nMANUFACTURER :- " + str5 + "\n";
                this.updateDeviceInFo.setManufacturer(str5);
                this.updateDeviceInFo.setBrand(str2);
                this.updateDeviceInFo.setNetwork_type("Not Mention");
                this.updateDeviceInFo.setIp_address(str);
                this.updateDeviceInFo.setOs_version(str3);
                this.updateDeviceInFo.setDevice_token(this.pstrDeviceId);
                this.updateDeviceInFo.setApp_version(str7);
                this.updateDeviceInFo.setPlatform(Constants.OS);
                this.updateDeviceInFo.setModel(str6);
                this.updateDeviceInFo.setFcm_id(data);
                this.updateDeviceInFo.setUser_id(this.dataHandler.getData("user_id"));
                Log.d("updateDeviceInFo", new Gson().toJson(this.updateDeviceInFo));
                ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).update_mobileinfo(this.updateDeviceInFo, new Callback<SucessResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.10
                    @Override // retrofit.Callback
                    public void success(SucessResponse sucessResponse, Response response) {
                        OtpVerificationActivity.this.myProgressDialog.dismiss();
                        if (sucessResponse != null) {
                            Log.d("appUpdateBody", new Gson().toJson(sucessResponse));
                            OtpVerificationActivity.this.message = sucessResponse.getMessage();
                            OtpVerificationActivity.this.status = sucessResponse.getStatus();
                            if (OtpVerificationActivity.this.status.equalsIgnoreCase("success")) {
                                ErrorResponseDailogs.customToast(OtpVerificationActivity.this, "WELCOME TO " + OtpVerificationActivity.this.getString(R.string.app_name) + " APPLICATION");
                                OtpVerificationActivity.this.startActivity(new Intent(OtpVerificationActivity.this, (Class<?>) MainActivity.class));
                                OtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                                OtpVerificationActivity.this.finish();
                            }
                        }
                    }

                    @Override // retrofit.Callback
                    public void failure(RetrofitError retrofitError) {
                        OtpVerificationActivity.this.myProgressDialog.dismiss();
                        if (retrofitError.toString() != null) {
                            Toast.makeText(OtpVerificationActivity.this, retrofitError.toString(), 0).show();
                        }
                        OtpVerificationActivity.this.startActivity(new Intent(OtpVerificationActivity.this, (Class<?>) MainActivity.class));
                        OtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                        OtpVerificationActivity.this.finish();
                    }
                });
            }
        } catch (Exception e7) {
            e = e7;
            str = "";
            str2 = str;
        }
        String str12 = "DEVICETOKEN :- \nOS NAME :- " + Constants.OS + "\nUSER-ID :- " + this.dataHandler.getData("user_id") + "\nFCM-ID :- " + data + "\nBRAND :- " + str2 + "\nOS-SDK :- " + str4 + "\nAPP-CURRENT_VERSION :- " + str7 + "\nMAC-ID :- " + str + "\nMODEL NAME :- " + str6 + "\nMANUFACTURER :- " + str5 + "\n";
        this.updateDeviceInFo.setManufacturer(str5);
        this.updateDeviceInFo.setBrand(str2);
        this.updateDeviceInFo.setNetwork_type("Not Mention");
        this.updateDeviceInFo.setIp_address(str);
        this.updateDeviceInFo.setOs_version(str3);
        this.updateDeviceInFo.setDevice_token(this.pstrDeviceId);
        this.updateDeviceInFo.setApp_version(str7);
        this.updateDeviceInFo.setPlatform(Constants.OS);
        this.updateDeviceInFo.setModel(str6);
        this.updateDeviceInFo.setFcm_id(data);
        this.updateDeviceInFo.setUser_id(this.dataHandler.getData("user_id"));
        Log.d("updateDeviceInFo", new Gson().toJson(this.updateDeviceInFo));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).update_mobileinfo(this.updateDeviceInFo, new Callback<SucessResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.10
            @Override // retrofit.Callback
            public void success(SucessResponse sucessResponse, Response response) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (sucessResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(sucessResponse));
                    OtpVerificationActivity.this.message = sucessResponse.getMessage();
                    OtpVerificationActivity.this.status = sucessResponse.getStatus();
                    if (OtpVerificationActivity.this.status.equalsIgnoreCase("success")) {
                        ErrorResponseDailogs.customToast(OtpVerificationActivity.this, "WELCOME TO " + OtpVerificationActivity.this.getString(R.string.app_name) + " APPLICATION");
                        OtpVerificationActivity.this.startActivity(new Intent(OtpVerificationActivity.this, (Class<?>) MainActivity.class));
                        OtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                        OtpVerificationActivity.this.finish();
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (retrofitError.toString() != null) {
                    Toast.makeText(OtpVerificationActivity.this, retrofitError.toString(), 0).show();
                }
                OtpVerificationActivity.this.startActivity(new Intent(OtpVerificationActivity.this, (Class<?>) MainActivity.class));
                OtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                OtpVerificationActivity.this.finish();
            }
        });
    }

    public void ProductsCommon() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Loading);
        this.myProgressDialog.show();
        this.sendCommonBody.setDevice_token(this.pstrDeviceId);
        this.sendCommonBody.setUser_id(this.dataHandler.getData("user_id"));
        this.sendCommonBody.setType("0");
        this.sendCommonBody.setId("0");
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).ProductsCommon(this.sendCommonBody, new Callback<ProductCommonResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.11
            @Override // retrofit.Callback
            public void success(ProductCommonResponse productCommonResponse, Response response) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (productCommonResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(productCommonResponse));
                    OtpVerificationActivity.this.message = productCommonResponse.getMessage();
                    OtpVerificationActivity.this.status = productCommonResponse.getStatus();
                    if (productCommonResponse.getData() != null) {
                        OtpVerificationActivity.this.saveProductsCommon(productCommonResponse, "Products");
                    }
                }
                OtpVerificationActivity.this.Nitya();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (retrofitError.toString() != null) {
                    Toast.makeText(OtpVerificationActivity.this, retrofitError.toString(), 0).show();
                }
                OtpVerificationActivity.this.Nitya();
            }
        });
    }

    public void Nitya() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Loading);
        this.myProgressDialog.show();
        this.sendCommonBody.setDevice_token(this.pstrDeviceId);
        this.sendCommonBody.setUser_id(this.dataHandler.getData("user_id"));
        this.sendCommonBody.setType("0");
        this.sendCommonBody.setId("0");
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).nityaseva(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.12
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    OtpVerificationActivity.this.message = nityaSevaDataResponse.getMessage();
                    OtpVerificationActivity.this.status = nityaSevaDataResponse.getStatus();
                    if (nityaSevaDataResponse.getData() != null) {
                        OtpVerificationActivity.this.saveNitya(nityaSevaDataResponse, "Nitya");
                    }
                }
                OtpVerificationActivity.this.Aarti();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (retrofitError.toString() != null) {
                    Toast.makeText(OtpVerificationActivity.this, retrofitError.toString(), 0).show();
                }
                OtpVerificationActivity.this.Aarti();
            }
        });
    }

    public void Aarti() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Loading);
        this.myProgressDialog.show();
        this.sendCommonBody.setDevice_token(this.pstrDeviceId);
        this.sendCommonBody.setUser_id(this.dataHandler.getData("user_id"));
        this.sendCommonBody.setType("0");
        this.sendCommonBody.setId("0");
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).nityaseva(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.13
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    OtpVerificationActivity.this.message = nityaSevaDataResponse.getMessage();
                    OtpVerificationActivity.this.status = nityaSevaDataResponse.getStatus();
                    if (nityaSevaDataResponse.getData() != null) {
                        OtpVerificationActivity.this.saveAarti(nityaSevaDataResponse, "Aarti");
                    }
                }
                OtpVerificationActivity.this.VibhagDetails();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                if (retrofitError.toString() != null) {
                    Toast.makeText(OtpVerificationActivity.this, retrofitError.toString(), 0).show();
                }
                OtpVerificationActivity.this.VibhagDetails();
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
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Loading);
        this.myProgressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).Vibhag(this.sendCommonBody, new Callback<CommonResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.14
            @Override // retrofit.Callback
            public void success(CommonResponse commonResponse, Response response) {
                if (commonResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(commonResponse));
                    OtpVerificationActivity.this.message = commonResponse.getMessage();
                    OtpVerificationActivity.this.status = commonResponse.getStatus();
                    if (commonResponse.getData() != null) {
                        OtpVerificationActivity.this.saveVibhag(commonResponse, "Vibhag");
                    }
                    OtpVerificationActivity.this.Sanvar();
                }
                OtpVerificationActivity.this.myProgressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                OtpVerificationActivity.this.Sanvar();
            }
        });
    }

    public void Sanvar() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Loading);
        this.myProgressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).nityaseva(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.15
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    OtpVerificationActivity.this.message = nityaSevaDataResponse.getMessage();
                    OtpVerificationActivity.this.status = nityaSevaDataResponse.getStatus();
                    if (nityaSevaDataResponse.getData() != null) {
                        OtpVerificationActivity.this.saveSanvar(nityaSevaDataResponse, "sanvar");
                    }
                }
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                OtpVerificationActivity.this.DindoriYoutube();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                OtpVerificationActivity.this.DindoriYoutube();
            }
        });
    }

    public void DindoriYoutube() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Progress_Loading);
        this.myProgressDialog.show();
        this.sendHomeBody.setDevice_token(this.pstrDeviceId);
        this.sendHomeBody.setUser_id(this.dataHandler.getData("user_id"));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).dindoriyoutube(this.sendHomeBody, new Callback<YoutubeResponse>() { // from class: com.dp.sgp.View.Activity.Login.OtpVerificationActivity.16
            @Override // retrofit.Callback
            public void success(YoutubeResponse youtubeResponse, Response response) {
                if (youtubeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(youtubeResponse));
                    OtpVerificationActivity.this.message = youtubeResponse.getMessage();
                    OtpVerificationActivity.this.status = youtubeResponse.getStatus();
                    if (youtubeResponse.getData() != null) {
                        OtpVerificationActivity.this.saveDindori(youtubeResponse, "dindoriyoutube");
                    }
                }
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                OtpVerificationActivity.this.DeviceInfo();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                OtpVerificationActivity.this.myProgressDialog.dismiss();
                OtpVerificationActivity.this.DeviceInfo();
            }
        });
    }

    public void saveDindori(YoutubeResponse youtubeResponse, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString(str, new Gson().toJson(youtubeResponse));
        editorEdit.apply();
    }
}
