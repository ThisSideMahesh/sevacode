package com.dp.sgp.View.Activity.Login;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.TextInputEditText;
import android.support.design.widget.TextInputLayout;
import android.support.v7.widget.Toolbar;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.Constants.AppConstant;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.HomeResponse.HomeData;
import com.dp.sgp.Model.HomeResponse.HomeResponse;
import com.dp.sgp.Model.SendLoginBody;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Country.CountryActivity;
import com.dp.sgp.View.Activity.Home.BaseActivity;
import com.dp.sgp.util.ErrorResponseDailogs;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class NewLoginActivity extends BaseActivity {
    private static final String TAG = "NewLoginActivity";
    private Button btnLogin;
    private Button btnRetry;
    private ConnectionDetector connectionDetector;
    private CoordinatorLayout coordinatorlayout;
    HomeData data;
    DataHandler dataHandler;
    private View errorMessageParentView;
    private LinearLayout layMain;
    private LinearLayout layoutNoInternet;
    String message;
    private TextInputEditText mobileEditText;
    private TextInputLayout mobileTextInput;
    ProgressDialog myProgressDialog;
    private ProgressBar progressbar;
    private RelativeLayout rootLayout;
    SendLoginBody sendLoginBody;
    String status;
    private TextView textView;
    private TextView textView_chnagecountry;
    private Toolbar toolbar;
    private TextView tvPrivacyPolicy;
    private TextView tvTitle;
    String lStrMspin = "";
    String pstrDeviceId = "";

    @Override // com.dp.sgp.View.Activity.Home.BaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.activity_new_login);
        this.pstrDeviceId = Settings.Secure.getString(getApplicationContext().getContentResolver(), "android_id");
        this.data = new HomeData();
        initView();
        this.sendLoginBody = new SendLoginBody();
        this.dataHandler = new DataHandler(getApplicationContext());
        this.connectionDetector = new ConnectionDetector(getApplicationContext());
        this.btnLogin.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.NewLoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!NewLoginActivity.this.isValid()) {
                    NewLoginActivity.this.mobileEditText.setError("Invalid Mobile No");
                    return;
                }
                NewLoginActivity newLoginActivity = NewLoginActivity.this;
                newLoginActivity.lStrMspin = newLoginActivity.mobileEditText.getText().toString().trim();
                NewLoginActivity.this.dataHandler.addData(Constants.DEVICE_TOKEN, NewLoginActivity.this.pstrDeviceId);
                NewLoginActivity.this.sendLoginBody.setDevice_token(NewLoginActivity.this.pstrDeviceId);
                NewLoginActivity.this.sendLoginBody.setMobile(NewLoginActivity.this.lStrMspin);
                NewLoginActivity.this.sendLoginBody.setFcm_id(NewLoginActivity.this.dataHandler.getData("regId"));
                if (NewLoginActivity.this.connectionDetector.isConnectingToInternet()) {
                    NewLoginActivity.this.Login();
                } else {
                    Toast.makeText(NewLoginActivity.this.getApplicationContext(), NewLoginActivity.this.getResources().getString(R.string.no_internet), 0).show();
                }
            }
        });
        this.tvPrivacyPolicy.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.NewLoginActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NewLoginActivity.this.startActivity(new Intent(NewLoginActivity.this, (Class<?>) TermsConditionsActivity.class));
            }
        });
        this.textView_chnagecountry.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.NewLoginActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NewLoginActivity.this.startActivity(new Intent(NewLoginActivity.this, (Class<?>) CountryActivity.class));
                NewLoginActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                NewLoginActivity.this.finish();
            }
        });
    }

    private void initView() {
        this.textView_chnagecountry = (TextView) findViewById(R.id.textView_chnagecountry);
        this.tvPrivacyPolicy = (TextView) findViewById(R.id.tvPrivacyPolicy);
        this.progressbar = (ProgressBar) findViewById(R.id.progressbar);
        this.tvPrivacyPolicy.setText(Html.fromHtml("<font color=\"#000000\">By proceeding you agree to our </font><font color=\"#122C91\"> <u>Privacy Policy </u> </font>"));
        this.coordinatorlayout = (CoordinatorLayout) findViewById(R.id.coordinatorlayout);
        this.rootLayout = (RelativeLayout) findViewById(R.id.root_layout);
        this.textView = (TextView) findViewById(R.id.textView);
        this.tvTitle = (TextView) findViewById(R.id.tvTitle);
        this.mobileTextInput = (TextInputLayout) findViewById(R.id.mobile_text_input);
        this.mobileEditText = (TextInputEditText) findViewById(R.id.mobile_edit_text);
        this.btnLogin = (Button) findViewById(R.id.btnLogin);
        this.layMain = (LinearLayout) findViewById(R.id.layMain);
    }

    public boolean isValid() {
        String strTrim = this.mobileEditText.getText().toString().trim();
        return !TextUtils.isEmpty(strTrim) && strTrim.length() > 0 && strTrim.length() <= 10;
    }

    public void Login() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.myProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.myProgressDialog.setCancelable(false);
        this.myProgressDialog.setMessage(Constants.Authenticating);
        this.myProgressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).Login(this.sendLoginBody, new Callback<HomeResponse>() { // from class: com.dp.sgp.View.Activity.Login.NewLoginActivity.4
            @Override // retrofit.Callback
            public void success(HomeResponse homeResponse, Response response) {
                NewLoginActivity.this.myProgressDialog.dismiss();
                if (homeResponse != null) {
                    NewLoginActivity.this.message = homeResponse.getMessage();
                    NewLoginActivity.this.status = homeResponse.getStatus();
                    if (NewLoginActivity.this.status.equalsIgnoreCase("success")) {
                        Intent intent = new Intent(NewLoginActivity.this, (Class<?>) OtpVerificationActivity.class);
                        intent.setFlags(268468224);
                        intent.putExtra(AppConstant.Mobile_No, NewLoginActivity.this.lStrMspin);
                        intent.putExtra(AppConstant.Mspin_StaffId, NewLoginActivity.this.lStrMspin);
                        NewLoginActivity.this.startActivity(intent);
                        NewLoginActivity.this.finish();
                        NewLoginActivity newLoginActivity = NewLoginActivity.this;
                        ErrorResponseDailogs.customToast(newLoginActivity, newLoginActivity.message);
                        return;
                    }
                    NewLoginActivity newLoginActivity2 = NewLoginActivity.this;
                    ErrorResponseDailogs.errorcustomToast(newLoginActivity2, newLoginActivity2.message);
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                NewLoginActivity.this.myProgressDialog.dismiss();
                Toast.makeText(NewLoginActivity.this, retrofitError.toString(), 0).show();
            }
        });
    }
}
