package com.dp.sgp.View.Activity.Deatils;

import android.app.ProgressDialog;
import android.os.Build;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.bumptech.glide.load.Key;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.Model.MainNityaseva.NityaSevaDataResponse;
import com.dp.sgp.Model.SwamiDatum;
import com.dp.sgp.Model.SwamiExample;
import com.dp.sgp.Model.saramrut.SendSubmitBody;
import com.dp.sgp.R;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class SwamiCharitraDetailActivity extends AppCompatActivity {
    LinearLayout content;
    private List<SwamiDatum> data;
    DataHandler dataHandler;
    private FragmentManager fragmentManager;
    ImageView img_Overflow;
    LinearLayout lyt_main;
    private String message;
    LinearLayout panelIconLeft;
    LinearLayout panelIconLeftreverse;
    LinearLayout panelIconRight;
    private View progressBar;
    ProgressDialog progressDialog;
    SendCommonBody sendCommonBody;
    SendSubmitBody sendSubmitBody;
    String status;
    TextToSpeech t1;
    TextView textView2;
    FragmentTransaction transaction;
    TextView txtHeading;
    TextView txt_completed;
    private WebView webView;
    int intValue = 0;
    int counter = 0;
    String LstrID = "";
    String Title = "";
    String Description = "";
    String Status = "";
    String device_token = "";
    String user_id = "";
    Fragment fragment = null;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_swami_charitra_detail);
        this.dataHandler = new DataHandler(this);
        this.sendCommonBody = new SendCommonBody();
        this.sendSubmitBody = new SendSubmitBody();
        this.data = new ArrayList();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.sendSubmitBody.setDevice_token(this.device_token);
        this.sendSubmitBody.setUser_id(this.user_id);
        this.t1 = new TextToSpeech(getApplicationContext(), new TextToSpeech.OnInitListener() { // from class: com.dp.sgp.View.Activity.Deatils.SwamiCharitraDetailActivity.1
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public void onInit(int i) {
                if (i == -1 || Build.VERSION.SDK_INT < 21) {
                    return;
                }
                SwamiCharitraDetailActivity.this.t1.setLanguage(Locale.forLanguageTag("mr-IN"));
            }
        });
        int intExtra = getIntent().getIntExtra("position", 0);
        this.intValue = intExtra;
        this.counter = intExtra;
        this.content = (LinearLayout) findViewById(R.id.content);
        this.img_Overflow = (ImageView) findViewById(R.id.img_Overflow);
        this.webView = (WebView) findViewById(R.id.web_view);
        this.progressBar = findViewById(R.id.progress_bar);
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.clearCache(true);
        this.webView.clearHistory();
        this.webView.getSettings().setSupportZoom(true);
        this.webView.getSettings().setBuiltInZoomControls(true);
        this.webView.getSettings().setDisplayZoomControls(false);
        this.webView.setBackgroundColor(0);
        this.webView.setBackgroundResource(R.drawable.shriyantra);
        CookieManager.getInstance().removeAllCookie();
        this.webView.getSettings().setDomStorageEnabled(true);
        this.webView.getSettings().setAllowFileAccess(true);
        this.webView.getSettings().setLoadsImagesAutomatically(true);
        this.textView2 = (TextView) findViewById(R.id.textView2);
        this.txtHeading = (TextView) findViewById(R.id.txtHeading);
        this.txt_completed = (TextView) findViewById(R.id.txt_completed);
        this.panelIconLeft = (LinearLayout) findViewById(R.id.panelIconLeftreverse);
        this.panelIconRight = (LinearLayout) findViewById(R.id.panelIconRightmain);
        this.panelIconLeftreverse = (LinearLayout) findViewById(R.id.panelIconLeftreversemain);
        this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
        this.panelIconLeft.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Deatils.SwamiCharitraDetailActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SwamiCharitraDetailActivity.this.finish();
            }
        });
        this.panelIconRight.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Deatils.SwamiCharitraDetailActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = SwamiCharitraDetailActivity.this.counter;
                SwamiCharitraDetailActivity.this.counter++;
                if (SwamiCharitraDetailActivity.this.counter > 20) {
                    SwamiCharitraDetailActivity.this.counter = 0;
                }
                if (SwamiCharitraDetailActivity.this.counter >= 0) {
                    String status = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getStatus();
                    if (status.equalsIgnoreCase("1")) {
                        if (SwamiCharitraDetailActivity.this.data == null || SwamiCharitraDetailActivity.this.data.size() <= 0) {
                            return;
                        }
                        String title = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getTitle();
                        String description = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getDescription();
                        SwamiCharitraDetailActivity.this.txtHeading.setText(title);
                        SwamiCharitraDetailActivity.this.textView2.setText(description);
                        SwamiCharitraDetailActivity.this.webView.loadDataWithBaseURL("", description, "text/html", Key.STRING_CHARSET_NAME, "");
                        if (((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getStatus().equalsIgnoreCase("1")) {
                            SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                            return;
                        } else {
                            SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                            return;
                        }
                    }
                    if (status.equalsIgnoreCase("2")) {
                        if (SwamiCharitraDetailActivity.this.data == null || SwamiCharitraDetailActivity.this.data.size() <= 0) {
                            return;
                        }
                        String title2 = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getTitle();
                        String description2 = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getDescription();
                        SwamiCharitraDetailActivity.this.txtHeading.setText(title2);
                        SwamiCharitraDetailActivity.this.textView2.setText(description2);
                        SwamiCharitraDetailActivity.this.webView.loadDataWithBaseURL("", description2, "text/html", Key.STRING_CHARSET_NAME, "");
                        if (((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getStatus().equalsIgnoreCase("1")) {
                            SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                            return;
                        } else {
                            SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                            return;
                        }
                    }
                    SwamiCharitraDetailActivity.this.counter = i;
                    Toast.makeText(SwamiCharitraDetailActivity.this, "अध्याय वाचन पुर्ण झाले नाही. वाचन पुर्ण करुन बुकमार्क वर क्लिक करा", 0).show();
                    return;
                }
                SwamiCharitraDetailActivity.this.counter = i;
                Toast.makeText(SwamiCharitraDetailActivity.this, "अध्याय वाचन पुर्ण झाले नाही. वाचन पुर्ण करुन बुकमार्क वर क्लिक करा", 0).show();
            }
        });
        this.panelIconLeftreverse.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Deatils.SwamiCharitraDetailActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = SwamiCharitraDetailActivity.this.counter;
                SwamiCharitraDetailActivity.this.counter--;
                if (SwamiCharitraDetailActivity.this.counter > 20) {
                    SwamiCharitraDetailActivity.this.counter = 0;
                }
                if (SwamiCharitraDetailActivity.this.counter > -1) {
                    String status = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getStatus();
                    if (status.equalsIgnoreCase("1")) {
                        if (SwamiCharitraDetailActivity.this.data == null || SwamiCharitraDetailActivity.this.data.size() <= 0) {
                            return;
                        }
                        String title = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getTitle();
                        String description = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getDescription();
                        SwamiCharitraDetailActivity.this.txtHeading.setText(title);
                        SwamiCharitraDetailActivity.this.textView2.setText(description);
                        SwamiCharitraDetailActivity.this.webView.loadDataWithBaseURL("", description, "text/html", Key.STRING_CHARSET_NAME, "");
                        if (((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getStatus().equalsIgnoreCase("1")) {
                            SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                            return;
                        } else {
                            SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                            return;
                        }
                    }
                    if (status.equalsIgnoreCase("2")) {
                        if (SwamiCharitraDetailActivity.this.data == null || SwamiCharitraDetailActivity.this.data.size() <= 0) {
                            return;
                        }
                        String title2 = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getTitle();
                        String description2 = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getDescription();
                        SwamiCharitraDetailActivity.this.txtHeading.setText(title2);
                        SwamiCharitraDetailActivity.this.textView2.setText(description2);
                        SwamiCharitraDetailActivity.this.webView.loadDataWithBaseURL("", description2, "text/html", Key.STRING_CHARSET_NAME, "");
                        if (((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getStatus().equalsIgnoreCase("1")) {
                            SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                            return;
                        } else {
                            SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                            return;
                        }
                    }
                    SwamiCharitraDetailActivity.this.counter = i;
                    Toast.makeText(SwamiCharitraDetailActivity.this, "अध्याय वाचन पुर्ण झाले नाही. वाचन पुर्ण करुन बुकमार्क वर क्लिक करा", 0).show();
                    return;
                }
                SwamiCharitraDetailActivity.this.counter = i;
                Toast.makeText(SwamiCharitraDetailActivity.this, "अध्याय वाचन पुर्ण झाले नाही. वाचन पुर्ण करुन बुकमार्क वर क्लिक करा", 0).show();
            }
        });
        this.txt_completed.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Deatils.SwamiCharitraDetailActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getStatus().equalsIgnoreCase("1")) {
                    SwamiCharitraDetailActivity.this.sendSubmitBody.setAdhyayid(((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getId());
                    SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                    SwamiCharitraDetailActivity.this.Submitabjachandi();
                    return;
                }
                SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
            }
        });
        this.img_Overflow.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Deatils.SwamiCharitraDetailActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SwamiCharitraDetailActivity.this.t1.speak(((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.intValue)).getDescription(), 0, null);
            }
        });
        saramrut();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        TextToSpeech textToSpeech = this.t1;
        if (textToSpeech != null) {
            textToSpeech.stop();
            this.t1.shutdown();
        }
        super.onPause();
    }

    public void saramrut() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).saramrut(this.sendCommonBody, new Callback<SwamiExample>() { // from class: com.dp.sgp.View.Activity.Deatils.SwamiCharitraDetailActivity.7
            @Override // retrofit.Callback
            public void success(SwamiExample swamiExample, Response response) {
                if (swamiExample != null) {
                    Log.d("appUpdateBody", new Gson().toJson(swamiExample));
                    SwamiCharitraDetailActivity.this.message = swamiExample.getMessage();
                    SwamiCharitraDetailActivity.this.status = swamiExample.getStatus();
                    if (swamiExample.getData() != null) {
                        SwamiCharitraDetailActivity.this.data = swamiExample.getData();
                        if (SwamiCharitraDetailActivity.this.data != null && SwamiCharitraDetailActivity.this.data.size() > 0) {
                            String title = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getTitle();
                            String description = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getDescription();
                            SwamiCharitraDetailActivity.this.txtHeading.setText(title);
                            SwamiCharitraDetailActivity.this.textView2.setText(description);
                            SwamiCharitraDetailActivity.this.webView.loadDataWithBaseURL(null, description, "text/html", Key.STRING_CHARSET_NAME, null);
                            if (((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getStatus().equalsIgnoreCase("1")) {
                                SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                            } else {
                                SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                            }
                        }
                    }
                }
                SwamiCharitraDetailActivity.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SwamiCharitraDetailActivity.this.progressDialog.dismiss();
            }
        });
    }

    public void Submitabjachandi() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        Log.d("sendSubmitBody", new Gson().toJson(this.sendSubmitBody));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).submitSaramrut(this.sendSubmitBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Activity.Deatils.SwamiCharitraDetailActivity.8
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                SwamiCharitraDetailActivity.this.progressDialog.dismiss();
                if (nityaSevaDataResponse != null) {
                    Log.d("sendSubmitBody", new Gson().toJson(nityaSevaDataResponse));
                    if (nityaSevaDataResponse.getStatus() != null) {
                        SwamiCharitraDetailActivity.this.message = nityaSevaDataResponse.getMessage();
                        SwamiCharitraDetailActivity.this.status = nityaSevaDataResponse.getStatus();
                        if (SwamiCharitraDetailActivity.this.status.equalsIgnoreCase("success")) {
                            SwamiCharitraDetailActivity swamiCharitraDetailActivity = SwamiCharitraDetailActivity.this;
                            Toast.makeText(swamiCharitraDetailActivity, swamiCharitraDetailActivity.message, 0).show();
                            SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                            SwamiCharitraDetailActivity.this.Refreshsaramrut();
                        } else {
                            SwamiCharitraDetailActivity swamiCharitraDetailActivity2 = SwamiCharitraDetailActivity.this;
                            Toast.makeText(swamiCharitraDetailActivity2, swamiCharitraDetailActivity2.message, 0).show();
                        }
                    }
                }
                SwamiCharitraDetailActivity.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SwamiCharitraDetailActivity.this.progressDialog.dismiss();
            }
        });
    }

    public void Refreshsaramrut() {
        ProgressDialog progressDialog = new ProgressDialog(this, R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).saramrut(this.sendCommonBody, new Callback<SwamiExample>() { // from class: com.dp.sgp.View.Activity.Deatils.SwamiCharitraDetailActivity.9
            @Override // retrofit.Callback
            public void success(SwamiExample swamiExample, Response response) {
                if (swamiExample != null) {
                    Log.d("appUpdateBody", new Gson().toJson(swamiExample));
                    SwamiCharitraDetailActivity.this.message = swamiExample.getMessage();
                    SwamiCharitraDetailActivity.this.status = swamiExample.getStatus();
                    if (swamiExample.getData() != null) {
                        SwamiCharitraDetailActivity.this.data = swamiExample.getData();
                        if (SwamiCharitraDetailActivity.this.data.size() > 0) {
                            SwamiCharitraDetailActivity.this.counter++;
                            if (SwamiCharitraDetailActivity.this.counter > 20) {
                                SwamiCharitraDetailActivity.this.counter = 0;
                            }
                            String title = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getTitle();
                            String description = ((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getDescription();
                            SwamiCharitraDetailActivity.this.txtHeading.setText(title);
                            SwamiCharitraDetailActivity.this.textView2.setText(description);
                            SwamiCharitraDetailActivity.this.webView.loadDataWithBaseURL(null, description, "text/html", Key.STRING_CHARSET_NAME, null);
                            if (((SwamiDatum) SwamiCharitraDetailActivity.this.data.get(SwamiCharitraDetailActivity.this.counter)).getStatus().equalsIgnoreCase("1")) {
                                SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                            } else {
                                SwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                            }
                        }
                    }
                }
                SwamiCharitraDetailActivity.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                SwamiCharitraDetailActivity.this.progressDialog.dismiss();
            }
        });
    }

    private void loadFragment(Fragment fragment) {
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        this.transaction = fragmentTransactionBeginTransaction;
        fragmentTransactionBeginTransaction.replace(R.id.frame_container, fragment);
        this.transaction.addToBackStack(null);
        this.transaction.commit();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
    }
}
