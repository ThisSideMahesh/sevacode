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
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.Model.SwamiDatum;
import com.dp.sgp.Model.SwamiExample;
import com.dp.sgp.Model.saramrut.DBSwamiDatum;
import com.dp.sgp.Model.saramrut.SendSubmitBody;
import com.dp.sgp.R;
import com.dp.sgp.database.DatabaseHelperClass;
import com.dp.sgp.util.AssestParser;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class OfflineSwamiCharitraDetailActivity extends AppCompatActivity {
    LinearLayout content;
    private List<DBSwamiDatum> data;
    DataHandler dataHandler;
    DatabaseHelperClass databaseHelperClass;
    private FragmentManager fragmentManager;
    private List<SwamiDatum> freshdatalist;
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
    int parayancounter = 0;
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
        setContentView(R.layout.activity_offline_swami_charitra_detail);
        this.textView2 = (TextView) findViewById(R.id.textView2);
        this.txtHeading = (TextView) findViewById(R.id.txtHeading);
        this.txt_completed = (TextView) findViewById(R.id.txt_completed);
        this.panelIconLeft = (LinearLayout) findViewById(R.id.panelIconLeftreverse);
        this.panelIconRight = (LinearLayout) findViewById(R.id.panelIconRightmain);
        this.panelIconLeftreverse = (LinearLayout) findViewById(R.id.panelIconLeftreversemain);
        this.content = (LinearLayout) findViewById(R.id.content);
        this.img_Overflow = (ImageView) findViewById(R.id.img_Overflow);
        this.webView = (WebView) findViewById(R.id.web_view);
        this.progressBar = findViewById(R.id.progress_bar);
        this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
        this.databaseHelperClass = new DatabaseHelperClass(this);
        this.dataHandler = new DataHandler(this);
        this.sendCommonBody = new SendCommonBody();
        this.sendSubmitBody = new SendSubmitBody();
        String data = this.dataHandler.getData("parayancount");
        if (data.equalsIgnoreCase("")) {
            this.parayancounter = 0;
        } else {
            this.parayancounter = Integer.parseInt(data);
        }
        this.freshdatalist = new ArrayList();
        this.data = new ArrayList();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.sendSubmitBody.setDevice_token(this.device_token);
        this.sendSubmitBody.setUser_id(this.user_id);
        this.t1 = new TextToSpeech(getApplicationContext(), new TextToSpeech.OnInitListener() { // from class: com.dp.sgp.View.Activity.Deatils.OfflineSwamiCharitraDetailActivity.1
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public void onInit(int i) {
                if (i == -1 || Build.VERSION.SDK_INT < 21) {
                    return;
                }
                OfflineSwamiCharitraDetailActivity.this.t1.setLanguage(Locale.forLanguageTag("mr-IN"));
            }
        });
        this.intValue = getIntent().getIntExtra("position", 0);
        List<DBSwamiDatum> employeeList = this.databaseHelperClass.getEmployeeList();
        this.counter = this.intValue;
        if (employeeList.size() > 0 && employeeList != null && employeeList.size() > 0) {
            this.data = employeeList;
            if (employeeList != null && employeeList.size() > 0) {
                String title = this.data.get(this.counter).getTitle();
                String description = this.data.get(this.counter).getDescription();
                this.txtHeading.setText(title);
                this.textView2.setText(description);
                this.webView.loadDataWithBaseURL(null, description, "text/html", Key.STRING_CHARSET_NAME, null);
                if (this.data.get(this.counter).getStatus().equalsIgnoreCase("1")) {
                    this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                } else {
                    this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                }
            }
        }
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
        this.panelIconLeft.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Deatils.OfflineSwamiCharitraDetailActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OfflineSwamiCharitraDetailActivity.this.finish();
            }
        });
        this.panelIconRight.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Deatils.OfflineSwamiCharitraDetailActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OfflineSwamiCharitraDetailActivity.this.RefereshData();
                int i = OfflineSwamiCharitraDetailActivity.this.counter;
                OfflineSwamiCharitraDetailActivity.this.counter++;
                if (OfflineSwamiCharitraDetailActivity.this.counter > 20) {
                    OfflineSwamiCharitraDetailActivity.this.counter = 0;
                }
                if (OfflineSwamiCharitraDetailActivity.this.counter >= 0) {
                    String status = ((DBSwamiDatum) OfflineSwamiCharitraDetailActivity.this.data.get(OfflineSwamiCharitraDetailActivity.this.counter)).getStatus();
                    if (status.equalsIgnoreCase("1")) {
                        if (OfflineSwamiCharitraDetailActivity.this.data == null || OfflineSwamiCharitraDetailActivity.this.data.size() <= 0) {
                            return;
                        }
                        OfflineSwamiCharitraDetailActivity offlineSwamiCharitraDetailActivity = OfflineSwamiCharitraDetailActivity.this;
                        offlineSwamiCharitraDetailActivity.BookmarkFilldata(offlineSwamiCharitraDetailActivity.counter);
                        return;
                    }
                    if (status.equalsIgnoreCase("2")) {
                        if (OfflineSwamiCharitraDetailActivity.this.data == null || OfflineSwamiCharitraDetailActivity.this.data.size() <= 0) {
                            return;
                        }
                        OfflineSwamiCharitraDetailActivity offlineSwamiCharitraDetailActivity2 = OfflineSwamiCharitraDetailActivity.this;
                        offlineSwamiCharitraDetailActivity2.BookmarkFilldata(offlineSwamiCharitraDetailActivity2.counter);
                        return;
                    }
                    OfflineSwamiCharitraDetailActivity.this.counter = i;
                    Toast.makeText(OfflineSwamiCharitraDetailActivity.this, "अध्याय वाचन पुर्ण झाले नाही. वाचन पुर्ण करुन बुकमार्क वर क्लिक करा", 0).show();
                    return;
                }
                OfflineSwamiCharitraDetailActivity.this.counter = i;
                Toast.makeText(OfflineSwamiCharitraDetailActivity.this, "अध्याय वाचन पुर्ण झाले नाही. वाचन पुर्ण करुन बुकमार्क वर क्लिक करा", 0).show();
            }
        });
        this.panelIconLeftreverse.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Deatils.OfflineSwamiCharitraDetailActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OfflineSwamiCharitraDetailActivity.this.RefereshData();
                int i = OfflineSwamiCharitraDetailActivity.this.counter;
                OfflineSwamiCharitraDetailActivity.this.counter--;
                if (OfflineSwamiCharitraDetailActivity.this.counter > 20) {
                    OfflineSwamiCharitraDetailActivity.this.counter = 0;
                }
                if (OfflineSwamiCharitraDetailActivity.this.counter > -1) {
                    String status = ((DBSwamiDatum) OfflineSwamiCharitraDetailActivity.this.data.get(OfflineSwamiCharitraDetailActivity.this.counter)).getStatus();
                    if (status.equalsIgnoreCase("1")) {
                        if (OfflineSwamiCharitraDetailActivity.this.data == null || OfflineSwamiCharitraDetailActivity.this.data.size() <= 0) {
                            return;
                        }
                        OfflineSwamiCharitraDetailActivity offlineSwamiCharitraDetailActivity = OfflineSwamiCharitraDetailActivity.this;
                        offlineSwamiCharitraDetailActivity.BookmarkFilldata(offlineSwamiCharitraDetailActivity.counter);
                        return;
                    }
                    if (status.equalsIgnoreCase("2")) {
                        if (OfflineSwamiCharitraDetailActivity.this.data == null || OfflineSwamiCharitraDetailActivity.this.data.size() <= 0) {
                            return;
                        }
                        OfflineSwamiCharitraDetailActivity offlineSwamiCharitraDetailActivity2 = OfflineSwamiCharitraDetailActivity.this;
                        offlineSwamiCharitraDetailActivity2.BookmarkFilldata(offlineSwamiCharitraDetailActivity2.counter);
                        return;
                    }
                    OfflineSwamiCharitraDetailActivity.this.counter = i;
                    Toast.makeText(OfflineSwamiCharitraDetailActivity.this, "अध्याय वाचन पुर्ण झाले नाही. वाचन पुर्ण करुन बुकमार्क वर क्लिक करा", 0).show();
                    return;
                }
                OfflineSwamiCharitraDetailActivity.this.counter = i;
                Toast.makeText(OfflineSwamiCharitraDetailActivity.this, "अध्याय वाचन पुर्ण झाले नाही. वाचन पुर्ण करुन बुकमार्क वर क्लिक करा", 0).show();
            }
        });
        this.txt_completed.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Deatils.OfflineSwamiCharitraDetailActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (OfflineSwamiCharitraDetailActivity.this.counter < OfflineSwamiCharitraDetailActivity.this.data.size() - 1) {
                    OfflineSwamiCharitraDetailActivity.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                    int i = OfflineSwamiCharitraDetailActivity.this.counter + 1;
                    OfflineSwamiCharitraDetailActivity offlineSwamiCharitraDetailActivity = OfflineSwamiCharitraDetailActivity.this;
                    offlineSwamiCharitraDetailActivity.UpdateOffflineData(offlineSwamiCharitraDetailActivity.counter, i);
                    OfflineSwamiCharitraDetailActivity.this.counter++;
                    OfflineSwamiCharitraDetailActivity.this.dataHandler.addData("adhaycount", OfflineSwamiCharitraDetailActivity.this.counter + "");
                    OfflineSwamiCharitraDetailActivity offlineSwamiCharitraDetailActivity2 = OfflineSwamiCharitraDetailActivity.this;
                    offlineSwamiCharitraDetailActivity2.UpdateIncrementalData(offlineSwamiCharitraDetailActivity2.counter, OfflineSwamiCharitraDetailActivity.this.counter);
                    OfflineSwamiCharitraDetailActivity offlineSwamiCharitraDetailActivity3 = OfflineSwamiCharitraDetailActivity.this;
                    offlineSwamiCharitraDetailActivity3.Filldata(offlineSwamiCharitraDetailActivity3.counter);
                    return;
                }
                OfflineSwamiCharitraDetailActivity offlineSwamiCharitraDetailActivity4 = OfflineSwamiCharitraDetailActivity.this;
                offlineSwamiCharitraDetailActivity4.UpdateOffflineData(offlineSwamiCharitraDetailActivity4.counter, 1);
                OfflineSwamiCharitraDetailActivity.this.Filldata(0);
                OfflineSwamiCharitraDetailActivity.this.counter = 0;
                OfflineSwamiCharitraDetailActivity.this.FillRawData();
            }
        });
        this.img_Overflow.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Deatils.OfflineSwamiCharitraDetailActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OfflineSwamiCharitraDetailActivity.this.t1.speak(((DBSwamiDatum) OfflineSwamiCharitraDetailActivity.this.data.get(OfflineSwamiCharitraDetailActivity.this.intValue)).getDescription(), 0, null);
            }
        });
    }

    public void Filldata(int i) {
        this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
        String title = this.data.get(i).getTitle();
        String description = this.data.get(i).getDescription();
        this.txtHeading.setText(title);
        this.textView2.setText(description);
        this.webView.loadDataWithBaseURL(null, description, "text/html", Key.STRING_CHARSET_NAME, null);
    }

    public void BookmarkFilldata(int i) {
        String title = this.data.get(i).getTitle();
        String description = this.data.get(i).getDescription();
        this.txtHeading.setText(title);
        this.textView2.setText(description);
        this.webView.loadDataWithBaseURL("", description, "text/html", Key.STRING_CHARSET_NAME, "");
        if (this.data.get(i).getStatus().equalsIgnoreCase("1")) {
            this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
        } else {
            this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
        }
    }

    public void UpdateOffflineData(int i, int i2) {
        String str = DateFormat.getDateTimeInstance().format(Calendar.getInstance().getTime());
        DBSwamiDatum dBSwamiDatum = new DBSwamiDatum();
        dBSwamiDatum.setIds(this.data.get(i).getIds());
        dBSwamiDatum.setTitle(this.data.get(i).getTitle());
        dBSwamiDatum.setDescription(this.data.get(i).getDescription());
        dBSwamiDatum.setComplete_prayan("0");
        dBSwamiDatum.setStatus("1");
        dBSwamiDatum.setCurrent_adhyay(i2 + "");
        dBSwamiDatum.setCompleted_on(str);
        dBSwamiDatum.setImage(this.data.get(i).getImage());
        this.databaseHelperClass.updateEmployee(dBSwamiDatum);
    }

    public void UpdateIncrementalData(int i, int i2) {
        DBSwamiDatum dBSwamiDatum = new DBSwamiDatum();
        dBSwamiDatum.setIds(this.data.get(i).getIds());
        dBSwamiDatum.setTitle(this.data.get(i).getTitle());
        dBSwamiDatum.setDescription(this.data.get(i).getDescription());
        dBSwamiDatum.setComplete_prayan(this.data.get(i).getComplete_prayan());
        dBSwamiDatum.setStatus("2");
        dBSwamiDatum.setCurrent_adhyay(i2 + "");
        dBSwamiDatum.setCompleted_on("ऑफलाइन मोडमध्ये कार्य करेल");
        dBSwamiDatum.setImage(this.data.get(i).getImage());
        this.databaseHelperClass.updateEmployee(dBSwamiDatum);
        this.dataHandler.addData("adhaycount", i + "");
    }

    public void RefereshData() {
        List<DBSwamiDatum> employeeList = this.databaseHelperClass.getEmployeeList();
        if (this.data.size() > 0) {
            this.data.clear();
            this.data = employeeList;
        }
    }

    public void FillRawData() {
        String jsonFromAssets = null;
        try {
            jsonFromAssets = AssestParser.getJsonFromAssets(this, "newswamicharitra.json");
            Log.i("data", jsonFromAssets);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Gson gson = new Gson();
        SwamiExample swamiExample = (SwamiExample) gson.fromJson(jsonFromAssets, new TypeToken<SwamiExample>() { // from class: com.dp.sgp.View.Activity.Deatils.OfflineSwamiCharitraDetailActivity.7
        }.getType());
        if (swamiExample != null) {
            List<SwamiDatum> list = this.freshdatalist;
            if (list != null && list.size() > 0) {
                this.freshdatalist.clear();
            }
            if (swamiExample.getData() != null) {
                List<SwamiDatum> data = swamiExample.getData();
                this.freshdatalist = data;
                if (data == null || data.size() <= 0) {
                    return;
                }
                DatabaseHelperClass databaseHelperClass = new DatabaseHelperClass(this);
                databaseHelperClass.deleteAll();
                List<DBSwamiDatum> employeeList = databaseHelperClass.getEmployeeList();
                if (employeeList.size() > 0 && employeeList != null) {
                    employeeList.size();
                }
                for (int i = 0; i < this.freshdatalist.size(); i++) {
                    DatabaseHelperClass databaseHelperClass2 = new DatabaseHelperClass(this);
                    DBSwamiDatum dBSwamiDatum = new DBSwamiDatum();
                    dBSwamiDatum.setTitle(this.freshdatalist.get(i).getTitle());
                    dBSwamiDatum.setDescription(this.freshdatalist.get(i).getDescription());
                    dBSwamiDatum.setComplete_prayan("0");
                    if (i == 0) {
                        dBSwamiDatum.setStatus("2");
                    } else {
                        dBSwamiDatum.setStatus("3");
                    }
                    dBSwamiDatum.setCurrent_adhyay("0");
                    dBSwamiDatum.setCompleted_on("ऑफलाइन मोडमध्ये कार्य करेल");
                    dBSwamiDatum.setImage(this.freshdatalist.get(i).getImage());
                    databaseHelperClass2.addEmployee(dBSwamiDatum);
                }
                List<DBSwamiDatum> list2 = this.data;
                if (list2 != null && list2.size() > 0) {
                    this.data.clear();
                }
                List<DBSwamiDatum> employeeList2 = databaseHelperClass.getEmployeeList();
                this.data = employeeList2;
                Log.d("newlist", gson.toJson(employeeList2));
                this.parayancounter++;
                this.dataHandler.addData("parayancount", this.parayancounter + "");
                this.dataHandler.addData("adhaycount", "1");
            }
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
    }
}
