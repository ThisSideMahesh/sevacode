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
import android.util.Patterns;
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
import com.dp.sgp.Model.ErrorResponse;
import com.dp.sgp.Model.HomeResponse.HomeData;
import com.dp.sgp.Model.HomeResponse.HomeResponse;
import com.dp.sgp.Model.SendCountryLoginBody;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Country.CountryActivity;
import com.dp.sgp.View.Activity.Home.BaseActivity;
import com.dp.sgp.util.ErrorResponseDailogs;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class CountryLoginActivity extends BaseActivity {
    private static final String TAG = "CountryLoginActivity";
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
    SendCountryLoginBody sendLoginBody;
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
        setContentView(R.layout.activity_country_login);
        this.pstrDeviceId = Settings.Secure.getString(getApplicationContext().getContentResolver(), "android_id");
        this.data = new HomeData();
        initView();
        this.sendLoginBody = new SendCountryLoginBody();
        this.dataHandler = new DataHandler(getApplicationContext());
        this.connectionDetector = new ConnectionDetector(getApplicationContext());
        this.btnLogin.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.CountryLoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CountryLoginActivity countryLoginActivity = CountryLoginActivity.this;
                countryLoginActivity.lStrMspin = countryLoginActivity.mobileEditText.getText().toString().trim();
                if (CountryLoginActivity.this.mobileEditText.getText().toString().isEmpty()) {
                    CountryLoginActivity.this.mobileEditText.setError("Enter email address");
                    return;
                }
                if (Patterns.EMAIL_ADDRESS.matcher(CountryLoginActivity.this.lStrMspin).matches()) {
                    CountryLoginActivity countryLoginActivity2 = CountryLoginActivity.this;
                    countryLoginActivity2.lStrMspin = countryLoginActivity2.mobileEditText.getText().toString().trim();
                    CountryLoginActivity.this.dataHandler.addData(Constants.DEVICE_TOKEN, CountryLoginActivity.this.pstrDeviceId);
                    CountryLoginActivity.this.sendLoginBody.setDevice_token(CountryLoginActivity.this.pstrDeviceId);
                    CountryLoginActivity.this.sendLoginBody.setEmail(CountryLoginActivity.this.lStrMspin);
                    CountryLoginActivity.this.sendLoginBody.setFcm_id(CountryLoginActivity.this.dataHandler.getData("regId"));
                    if (CountryLoginActivity.this.connectionDetector.isConnectingToInternet()) {
                        CountryLoginActivity.this.Login();
                        return;
                    } else {
                        Toast.makeText(CountryLoginActivity.this.getApplicationContext(), CountryLoginActivity.this.getResources().getString(R.string.no_internet), 0).show();
                        return;
                    }
                }
                Toast.makeText(CountryLoginActivity.this.getApplicationContext(), "Enter valid Email address !", 0).show();
                CountryLoginActivity.this.mobileEditText.setError("Enter valid Email address !");
            }
        });
        this.tvPrivacyPolicy.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.CountryLoginActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CountryLoginActivity.this.startActivity(new Intent(CountryLoginActivity.this, (Class<?>) TermsConditionsActivity.class));
            }
        });
        this.textView_chnagecountry.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.CountryLoginActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CountryLoginActivity.this.startActivity(new Intent(CountryLoginActivity.this, (Class<?>) CountryActivity.class));
                CountryLoginActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                CountryLoginActivity.this.finish();
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
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).Email_Login(this.sendLoginBody, new Callback<HomeResponse>() { // from class: com.dp.sgp.View.Activity.Login.CountryLoginActivity.4
            @Override // retrofit.Callback
            public void success(HomeResponse homeResponse, Response response) {
                CountryLoginActivity.this.myProgressDialog.dismiss();
                if (homeResponse != null) {
                    CountryLoginActivity.this.message = homeResponse.getMessage();
                    CountryLoginActivity.this.status = homeResponse.getStatus();
                    if (CountryLoginActivity.this.status.equalsIgnoreCase("success")) {
                        Intent intent = new Intent(CountryLoginActivity.this, (Class<?>) CountryOtpVerificationActivity.class);
                        intent.setFlags(268468224);
                        intent.putExtra(AppConstant.Mobile_No, CountryLoginActivity.this.lStrMspin);
                        intent.putExtra(AppConstant.Mspin_StaffId, CountryLoginActivity.this.lStrMspin);
                        CountryLoginActivity.this.startActivity(intent);
                        CountryLoginActivity.this.finish();
                        CountryLoginActivity countryLoginActivity = CountryLoginActivity.this;
                        ErrorResponseDailogs.customToast(countryLoginActivity, countryLoginActivity.message);
                        return;
                    }
                    CountryLoginActivity countryLoginActivity2 = CountryLoginActivity.this;
                    ErrorResponseDailogs.errorcustomToast(countryLoginActivity2, countryLoginActivity2.message);
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                CountryLoginActivity.this.myProgressDialog.dismiss();
                ErrorResponse errorResponse = (ErrorResponse) retrofitError.getBodyAs(ErrorResponse.class);
                if (errorResponse == null || errorResponse.getMessage() == null) {
                    return;
                }
                Toast.makeText(CountryLoginActivity.this, errorResponse.getMessage(), 0).show();
            }
        });
    }
}
