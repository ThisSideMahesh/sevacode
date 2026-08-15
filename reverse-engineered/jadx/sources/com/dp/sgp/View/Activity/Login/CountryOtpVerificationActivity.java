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
import com.dp.sgp.Model.SendCountryLoginBody;
import com.dp.sgp.Model.SendCountryOtpBody;
import com.dp.sgp.Model.SucessResponse;
import com.dp.sgp.Model.UpdateDeviceInFo;
import com.dp.sgp.Model.YoutubeResponse;
import com.dp.sgp.Model.nityaseva.ProductCommonResponse;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Home.BaseActivity;
import com.dp.sgp.View.Activity.Home.MainActivity;
import com.dp.sgp.View.Activity.Profile.UpdateEmailProfileActivity;
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
public class CountryOtpVerificationActivity extends BaseActivity {
    private static CountDownTimer countDownTimer;
    private static TextView countdownTimerText;
    SendCountryLoginBody REsendLoginBody;
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
    SendCountryOtpBody sendLoginBody;
    SendCountryOtpBody sendOtpBody;
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
        setContentView(R.layout.activity_country_otp_verification);
        this.updateDeviceInFo = new UpdateDeviceInFo();
        this.pstrDeviceId = Settings.Secure.getString(getApplicationContext().getContentResolver(), "android_id");
        this.sendCommonBody = new SendCommonBody();
        this.sendHomeBody = new SendHomeBody();
        this.sendLoginBody = new SendCountryOtpBody();
        this.REsendLoginBody = new SendCountryLoginBody();
        this.dataHandler = new DataHandler(getApplicationContext());
        this.sendOtpBody = new SendCountryOtpBody();
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
        this.tvTSubitle.setText("Please enter the verification code shown below.");
        this.dataHandler.getData("currentopt");
        EditText editText = this.otpEditBox1;
        final EditText[] editTextArr = {editText, this.otpEditBox2, this.otpEditBox3, this.otpEditBox4};
        editText.addTextChangedListener(new GenericTextWatcher(this.otpEditBox1, editTextArr));
        this.otpEditBox2.addTextChangedListener(new GenericTextWatcher(this.otpEditBox2, editTextArr));
        this.otpEditBox3.addTextChangedListener(new GenericTextWatcher(this.otpEditBox3, editTextArr));
        this.otpEditBox4.addTextChangedListener(new GenericTextWatcher(this.otpEditBox4, editTextArr));
        this.otpEditBox1.addTextChangedListener(new TextWatcher() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 1) {
                    CountryOtpVerificationActivity.this.otpEditBox2.requestFocus();
                }
            }
        });
        this.otpEditBox2.addTextChangedListener(new TextWatcher() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 1) {
                    CountryOtpVerificationActivity.this.otpEditBox3.requestFocus();
                }
            }
        });
        this.otpEditBox3.addTextChangedListener(new TextWatcher() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 1) {
                    CountryOtpVerificationActivity.this.otpEditBox4.requestFocus();
                }
            }
        });
        this.btnVerify.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (editTextArr.length == 4) {
                    CountryOtpVerificationActivity.this.otp = CountryOtpVerificationActivity.this.otpEditBox1.getText().toString().trim() + CountryOtpVerificationActivity.this.otpEditBox2.getText().toString().trim() + CountryOtpVerificationActivity.this.otpEditBox3.getText().toString().trim() + CountryOtpVerificationActivity.this.otpEditBox4.getText().toString().trim();
                    String str = CountryOtpVerificationActivity.this.otp_text_box1.getText().toString().trim() + CountryOtpVerificationActivity.this.otp_text_box2.getText().toString().trim() + CountryOtpVerificationActivity.this.otp_text_box3.getText().toString().trim() + CountryOtpVerificationActivity.this.otp_text_box4.getText().toString().trim();
                    if (!CountryOtpVerificationActivity.this.otp.isEmpty()) {
                        if (!str.equalsIgnoreCase(CountryOtpVerificationActivity.this.otp)) {
                            ErrorResponseDailogs.errorcustomToast(CountryOtpVerificationActivity.this, "The verification code does not match.");
                            return;
                        }
                        if (CountryOtpVerificationActivity.this.otp.length() > 3) {
                            CountryOtpVerificationActivity countryOtpVerificationActivity = CountryOtpVerificationActivity.this;
                            countryOtpVerificationActivity.lStrSendOtp = countryOtpVerificationActivity.otp;
                            CountryOtpVerificationActivity.this.sendOtpBody.setDevice_token(CountryOtpVerificationActivity.this.pstrDeviceId);
                            CountryOtpVerificationActivity.this.sendOtpBody.setOtp("1234");
                            CountryOtpVerificationActivity.this.sendOtpBody.setEmail(CountryOtpVerificationActivity.this.mobileNumber);
                            if (CountryOtpVerificationActivity.this.connectionDetector.isConnectingToInternet()) {
                                CountryOtpVerificationActivity.this.SendCountryOtpBody();
                                return;
                            } else {
                                Toast.makeText(CountryOtpVerificationActivity.this.getApplicationContext(), CountryOtpVerificationActivity.this.getResources().getString(R.string.no_internet), 0).show();
                                return;
                            }
                        }
                        ErrorResponseDailogs.customToast(CountryOtpVerificationActivity.this, "Please Enter All Numbers In Boxes");
                        return;
                    }
                    ErrorResponseDailogs.customToast(CountryOtpVerificationActivity.this, "Please Enter OTP");
                    return;
                }
                ErrorResponseDailogs.errorcustomToast(CountryOtpVerificationActivity.this, "Please Enter Verification Code");
            }
        });
        this.tv_resend.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CountryOtpVerificationActivity.this.REsendLoginBody.setDevice_token(CountryOtpVerificationActivity.this.pstrDeviceId);
                CountryOtpVerificationActivity.this.REsendLoginBody.setEmail(CountryOtpVerificationActivity.this.mobileNumber);
                CountryOtpVerificationActivity.this.REsendLoginBody.setFcm_id(CountryOtpVerificationActivity.this.dataHandler.getData("regId"));
                if (CountryOtpVerificationActivity.this.connectionDetector.isConnectingToInternet()) {
                    int iGenerateRandomSingleDigit5 = CountryOtpVerificationActivity.generateRandomSingleDigit();
                    int iGenerateRandomSingleDigit6 = CountryOtpVerificationActivity.generateRandomSingleDigit();
                    int iGenerateRandomSingleDigit7 = CountryOtpVerificationActivity.generateRandomSingleDigit();
                    int iGenerateRandomSingleDigit8 = CountryOtpVerificationActivity.generateRandomSingleDigit();
                    CountryOtpVerificationActivity.this.otp_text_box1.setText(iGenerateRandomSingleDigit5 + "");
                    CountryOtpVerificationActivity.this.otp_text_box2.setText(iGenerateRandomSingleDigit6 + "");
                    CountryOtpVerificationActivity.this.otp_text_box3.setText(iGenerateRandomSingleDigit7 + "");
                    CountryOtpVerificationActivity.this.otp_text_box4.setText(iGenerateRandomSingleDigit8 + "");
                    CountryOtpVerificationActivity.this.otpEditBox1.setText("");
                    CountryOtpVerificationActivity.this.otpEditBox2.setText("");
                    CountryOtpVerificationActivity.this.otpEditBox3.setText("");
                    CountryOtpVerificationActivity.this.otpEditBox4.setText("");
                    return;
                }
                Toast.makeText(CountryOtpVerificationActivity.this.getApplicationContext(), CountryOtpVerificationActivity.this.getResources().getString(R.string.no_internet), 0).show();
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

    /* JADX WARN: Type inference failed for: r0v1, types: [com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity$6] */
    private void startTimer(int i) {
        this.tv_resend.setVisibility(8);
        countDownTimer = new CountDownTimer(i, 1000L) { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.6
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                CountryOtpVerificationActivity.countdownTimerText.setText(String.format("%02d:%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(j)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(j))), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j)))));
                CountryOtpVerificationActivity.this.tv_resend.setVisibility(8);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                CountryOtpVerificationActivity.this.tv_resend.setVisibility(0);
                CountryOtpVerificationActivity.countdownTimerText.setText("TIME'S UP !");
                CountDownTimer unused = CountryOtpVerificationActivity.countDownTimer = null;
            }
        }.start();
    }

    public void ResendTimer() {
        startTimer(Integer.parseInt("1") * 60 * 1000);
    }

    public void SendCountryOtpBody() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage("Verifying Otp...");
        this.myProgressDialog.show();
        Log.d("RequestBody", new Gson().toJson(this.sendOtpBody));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).validateEmailOtp(this.sendOtpBody, new Callback<HomeResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.7
            @Override // retrofit.Callback
            public void success(HomeResponse homeResponse, Response response) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (homeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(homeResponse));
                    CountryOtpVerificationActivity.this.message = homeResponse.getMessage();
                    CountryOtpVerificationActivity.this.status = homeResponse.getStatus();
                    if (CountryOtpVerificationActivity.this.status.equalsIgnoreCase("success")) {
                        CountryOtpVerificationActivity.this.dataHandler.addData("user_id", homeResponse.getUser_id());
                        CountryOtpVerificationActivity.this.dataHandler.addData(Constants.DEVICE_TOKEN, CountryOtpVerificationActivity.this.pstrDeviceId);
                        if (homeResponse.getFlag().intValue() == 0) {
                            CountryOtpVerificationActivity.this.dataHandler.addData(Key.OTP, "yes");
                            CountryOtpVerificationActivity countryOtpVerificationActivity = CountryOtpVerificationActivity.this;
                            ErrorResponseDailogs.customToast(countryOtpVerificationActivity, countryOtpVerificationActivity.message);
                            CountryOtpVerificationActivity.this.dataHandler.addData("Mobile", CountryOtpVerificationActivity.this.mobileNumber);
                            CountryOtpVerificationActivity.this.dataHandler.addData("Email", CountryOtpVerificationActivity.this.mobileNumber);
                            Intent intent = new Intent(CountryOtpVerificationActivity.this, (Class<?>) UpdateEmailProfileActivity.class);
                            intent.setFlags(268468224);
                            intent.putExtra(AppConstant.Mobile_No, CountryOtpVerificationActivity.this.mobileNumber);
                            intent.putExtra(AppConstant.Mspin_StaffId, CountryOtpVerificationActivity.this.lStrMspin);
                            CountryOtpVerificationActivity.this.startActivity(intent);
                            CountryOtpVerificationActivity.this.finish();
                            return;
                        }
                        CountryOtpVerificationActivity.this.dataHandler.addData(Scopes.PROFILE, "yes");
                        CountryOtpVerificationActivity.this.dataHandler.addData(Key.OTP, "yes");
                        CountryOtpVerificationActivity countryOtpVerificationActivity2 = CountryOtpVerificationActivity.this;
                        ErrorResponseDailogs.customToast(countryOtpVerificationActivity2, countryOtpVerificationActivity2.message);
                        CountryOtpVerificationActivity.this.dataHandler.addData("Mobile", CountryOtpVerificationActivity.this.mobileNumber);
                        CountryOtpVerificationActivity.this.dataHandler.addData("Email", CountryOtpVerificationActivity.this.mobileNumber);
                        CountryOtpVerificationActivity.this.HomeScreen();
                        return;
                    }
                    CountryOtpVerificationActivity countryOtpVerificationActivity3 = CountryOtpVerificationActivity.this;
                    ErrorResponseDailogs.errorcustomToast(countryOtpVerificationActivity3, countryOtpVerificationActivity3.message);
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (retrofitError.toString() != null) {
                    Toast.makeText(CountryOtpVerificationActivity.this, retrofitError.toString(), 0).show();
                }
                CountryOtpVerificationActivity.this.HomeScreen();
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
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).Email_Login(this.REsendLoginBody, new Callback<HomeResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.8
            @Override // retrofit.Callback
            public void success(HomeResponse homeResponse, Response response) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (homeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(homeResponse));
                    CountryOtpVerificationActivity.this.message = homeResponse.getMessage();
                    CountryOtpVerificationActivity.this.status = homeResponse.getStatus();
                    if (CountryOtpVerificationActivity.this.status.equalsIgnoreCase("success")) {
                        CountryOtpVerificationActivity countryOtpVerificationActivity = CountryOtpVerificationActivity.this;
                        ErrorResponseDailogs.customToast(countryOtpVerificationActivity, countryOtpVerificationActivity.message);
                    } else {
                        CountryOtpVerificationActivity countryOtpVerificationActivity2 = CountryOtpVerificationActivity.this;
                        ErrorResponseDailogs.errorcustomToast(countryOtpVerificationActivity2, countryOtpVerificationActivity2.message);
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
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
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).HomeScreen(this.sendHomeBody, new Callback<HomeResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.9
            @Override // retrofit.Callback
            public void success(HomeResponse homeResponse, Response response) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (homeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(homeResponse));
                    CountryOtpVerificationActivity.this.message = homeResponse.getMessage();
                    CountryOtpVerificationActivity.this.status = homeResponse.getStatus();
                    if (homeResponse.getData() != null) {
                        CountryOtpVerificationActivity.this.saveHome(homeResponse, "home");
                        CountryOtpVerificationActivity.this.ProductsCommon();
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (retrofitError.toString() != null) {
                    Toast.makeText(CountryOtpVerificationActivity.this, retrofitError.toString(), 0).show();
                }
                CountryOtpVerificationActivity.this.ProductsCommon();
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
        this.myProgressDialog.setMessage("Verifying Otp...");
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
                        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).update_mobileinfo(this.updateDeviceInFo, new Callback<SucessResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.10
                            @Override // retrofit.Callback
                            public void success(SucessResponse sucessResponse, Response response) {
                                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                                if (sucessResponse != null) {
                                    Log.d("appUpdateBody", new Gson().toJson(sucessResponse));
                                    CountryOtpVerificationActivity.this.message = sucessResponse.getMessage();
                                    CountryOtpVerificationActivity.this.status = sucessResponse.getStatus();
                                    if (CountryOtpVerificationActivity.this.status.equalsIgnoreCase("success")) {
                                        ErrorResponseDailogs.customToast(CountryOtpVerificationActivity.this, "WELCOME TO " + CountryOtpVerificationActivity.this.getString(R.string.app_name) + " APPLICATION");
                                        CountryOtpVerificationActivity.this.startActivity(new Intent(CountryOtpVerificationActivity.this, (Class<?>) MainActivity.class));
                                        CountryOtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                                        CountryOtpVerificationActivity.this.finish();
                                    }
                                }
                            }

                            @Override // retrofit.Callback
                            public void failure(RetrofitError retrofitError) {
                                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                                if (retrofitError.toString() != null) {
                                    Toast.makeText(CountryOtpVerificationActivity.this, retrofitError.toString(), 0).show();
                                }
                                CountryOtpVerificationActivity.this.startActivity(new Intent(CountryOtpVerificationActivity.this, (Class<?>) MainActivity.class));
                                CountryOtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                                CountryOtpVerificationActivity.this.finish();
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
                    ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).update_mobileinfo(this.updateDeviceInFo, new Callback<SucessResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.10
                        @Override // retrofit.Callback
                        public void success(SucessResponse sucessResponse, Response response) {
                            CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                            if (sucessResponse != null) {
                                Log.d("appUpdateBody", new Gson().toJson(sucessResponse));
                                CountryOtpVerificationActivity.this.message = sucessResponse.getMessage();
                                CountryOtpVerificationActivity.this.status = sucessResponse.getStatus();
                                if (CountryOtpVerificationActivity.this.status.equalsIgnoreCase("success")) {
                                    ErrorResponseDailogs.customToast(CountryOtpVerificationActivity.this, "WELCOME TO " + CountryOtpVerificationActivity.this.getString(R.string.app_name) + " APPLICATION");
                                    CountryOtpVerificationActivity.this.startActivity(new Intent(CountryOtpVerificationActivity.this, (Class<?>) MainActivity.class));
                                    CountryOtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                                    CountryOtpVerificationActivity.this.finish();
                                }
                            }
                        }

                        @Override // retrofit.Callback
                        public void failure(RetrofitError retrofitError) {
                            CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                            if (retrofitError.toString() != null) {
                                Toast.makeText(CountryOtpVerificationActivity.this, retrofitError.toString(), 0).show();
                            }
                            CountryOtpVerificationActivity.this.startActivity(new Intent(CountryOtpVerificationActivity.this, (Class<?>) MainActivity.class));
                            CountryOtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                            CountryOtpVerificationActivity.this.finish();
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
                ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).update_mobileinfo(this.updateDeviceInFo, new Callback<SucessResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.10
                    @Override // retrofit.Callback
                    public void success(SucessResponse sucessResponse, Response response) {
                        CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                        if (sucessResponse != null) {
                            Log.d("appUpdateBody", new Gson().toJson(sucessResponse));
                            CountryOtpVerificationActivity.this.message = sucessResponse.getMessage();
                            CountryOtpVerificationActivity.this.status = sucessResponse.getStatus();
                            if (CountryOtpVerificationActivity.this.status.equalsIgnoreCase("success")) {
                                ErrorResponseDailogs.customToast(CountryOtpVerificationActivity.this, "WELCOME TO " + CountryOtpVerificationActivity.this.getString(R.string.app_name) + " APPLICATION");
                                CountryOtpVerificationActivity.this.startActivity(new Intent(CountryOtpVerificationActivity.this, (Class<?>) MainActivity.class));
                                CountryOtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                                CountryOtpVerificationActivity.this.finish();
                            }
                        }
                    }

                    @Override // retrofit.Callback
                    public void failure(RetrofitError retrofitError) {
                        CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                        if (retrofitError.toString() != null) {
                            Toast.makeText(CountryOtpVerificationActivity.this, retrofitError.toString(), 0).show();
                        }
                        CountryOtpVerificationActivity.this.startActivity(new Intent(CountryOtpVerificationActivity.this, (Class<?>) MainActivity.class));
                        CountryOtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                        CountryOtpVerificationActivity.this.finish();
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
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).update_mobileinfo(this.updateDeviceInFo, new Callback<SucessResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.10
            @Override // retrofit.Callback
            public void success(SucessResponse sucessResponse, Response response) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (sucessResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(sucessResponse));
                    CountryOtpVerificationActivity.this.message = sucessResponse.getMessage();
                    CountryOtpVerificationActivity.this.status = sucessResponse.getStatus();
                    if (CountryOtpVerificationActivity.this.status.equalsIgnoreCase("success")) {
                        ErrorResponseDailogs.customToast(CountryOtpVerificationActivity.this, "WELCOME TO " + CountryOtpVerificationActivity.this.getString(R.string.app_name) + " APPLICATION");
                        CountryOtpVerificationActivity.this.startActivity(new Intent(CountryOtpVerificationActivity.this, (Class<?>) MainActivity.class));
                        CountryOtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                        CountryOtpVerificationActivity.this.finish();
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (retrofitError.toString() != null) {
                    Toast.makeText(CountryOtpVerificationActivity.this, retrofitError.toString(), 0).show();
                }
                CountryOtpVerificationActivity.this.startActivity(new Intent(CountryOtpVerificationActivity.this, (Class<?>) MainActivity.class));
                CountryOtpVerificationActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                CountryOtpVerificationActivity.this.finish();
            }
        });
    }

    public void ProductsCommon() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Progress_Loading);
        this.myProgressDialog.show();
        this.sendCommonBody.setDevice_token(this.pstrDeviceId);
        this.sendCommonBody.setUser_id(this.dataHandler.getData("user_id"));
        this.sendCommonBody.setType("0");
        this.sendCommonBody.setId("0");
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).ProductsCommon(this.sendCommonBody, new Callback<ProductCommonResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.11
            @Override // retrofit.Callback
            public void success(ProductCommonResponse productCommonResponse, Response response) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (productCommonResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(productCommonResponse));
                    CountryOtpVerificationActivity.this.message = productCommonResponse.getMessage();
                    CountryOtpVerificationActivity.this.status = productCommonResponse.getStatus();
                    if (productCommonResponse.getData() != null) {
                        CountryOtpVerificationActivity.this.saveProductsCommon(productCommonResponse, "Products");
                    }
                }
                CountryOtpVerificationActivity.this.Nitya();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (retrofitError.toString() != null) {
                    Toast.makeText(CountryOtpVerificationActivity.this, retrofitError.toString(), 0).show();
                }
                CountryOtpVerificationActivity.this.Nitya();
            }
        });
    }

    public void Nitya() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Progress_Loading);
        this.myProgressDialog.show();
        this.sendCommonBody.setDevice_token(this.pstrDeviceId);
        this.sendCommonBody.setUser_id(this.dataHandler.getData("user_id"));
        this.sendCommonBody.setType("0");
        this.sendCommonBody.setId("0");
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).nityaseva(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.12
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    CountryOtpVerificationActivity.this.message = nityaSevaDataResponse.getMessage();
                    CountryOtpVerificationActivity.this.status = nityaSevaDataResponse.getStatus();
                    if (nityaSevaDataResponse.getData() != null) {
                        CountryOtpVerificationActivity.this.saveNitya(nityaSevaDataResponse, "Nitya");
                    }
                }
                CountryOtpVerificationActivity.this.Aarti();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (retrofitError.toString() != null) {
                    Toast.makeText(CountryOtpVerificationActivity.this, retrofitError.toString(), 0).show();
                }
                CountryOtpVerificationActivity.this.Aarti();
            }
        });
    }

    public void Aarti() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Progress_Loading);
        this.myProgressDialog.show();
        this.sendCommonBody.setDevice_token(this.pstrDeviceId);
        this.sendCommonBody.setUser_id(this.dataHandler.getData("user_id"));
        this.sendCommonBody.setType("0");
        this.sendCommonBody.setId("0");
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).nityaseva(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.13
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    CountryOtpVerificationActivity.this.message = nityaSevaDataResponse.getMessage();
                    CountryOtpVerificationActivity.this.status = nityaSevaDataResponse.getStatus();
                    if (nityaSevaDataResponse.getData() != null) {
                        CountryOtpVerificationActivity.this.saveAarti(nityaSevaDataResponse, "Aarti");
                    }
                }
                CountryOtpVerificationActivity.this.VibhagDetails();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                if (retrofitError.toString() != null) {
                    Toast.makeText(CountryOtpVerificationActivity.this, retrofitError.toString(), 0).show();
                }
                CountryOtpVerificationActivity.this.VibhagDetails();
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
        this.myProgressDialog.setMessage(Constants.Progress_Loading);
        this.myProgressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).Vibhag(this.sendCommonBody, new Callback<CommonResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.14
            @Override // retrofit.Callback
            public void success(CommonResponse commonResponse, Response response) {
                if (commonResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(commonResponse));
                    CountryOtpVerificationActivity.this.message = commonResponse.getMessage();
                    CountryOtpVerificationActivity.this.status = commonResponse.getStatus();
                    if (commonResponse.getData() != null) {
                        CountryOtpVerificationActivity.this.saveVibhag(commonResponse, "Vibhag");
                    }
                    CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                    CountryOtpVerificationActivity.this.Sanvar();
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                CountryOtpVerificationActivity.this.Sanvar();
            }
        });
    }

    public void Sanvar() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Progress_Loading);
        this.myProgressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).nityaseva(this.sendCommonBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.15
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                if (nityaSevaDataResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(nityaSevaDataResponse));
                    CountryOtpVerificationActivity.this.message = nityaSevaDataResponse.getMessage();
                    CountryOtpVerificationActivity.this.status = nityaSevaDataResponse.getStatus();
                    if (nityaSevaDataResponse.getData() != null) {
                        CountryOtpVerificationActivity.this.saveSanvar(nityaSevaDataResponse, "sanvar");
                    }
                }
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                CountryOtpVerificationActivity.this.DindoriYoutube();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                CountryOtpVerificationActivity.this.DindoriYoutube();
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
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).dindoriyoutube(this.sendHomeBody, new Callback<YoutubeResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryOtpVerificationActivity.16
            @Override // retrofit.Callback
            public void success(YoutubeResponse youtubeResponse, Response response) {
                if (youtubeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(youtubeResponse));
                    CountryOtpVerificationActivity.this.message = youtubeResponse.getMessage();
                    CountryOtpVerificationActivity.this.status = youtubeResponse.getStatus();
                    if (youtubeResponse.getData() != null) {
                        CountryOtpVerificationActivity.this.saveDindori(youtubeResponse, "dindoriyoutube");
                    }
                }
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                CountryOtpVerificationActivity.this.DeviceInfo();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                CountryOtpVerificationActivity.this.myProgressDialog.dismiss();
                CountryOtpVerificationActivity.this.DeviceInfo();
            }
        });
    }

    public void saveDindori(YoutubeResponse youtubeResponse, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString(str, new Gson().toJson(youtubeResponse));
        editorEdit.apply();
    }
}
