package com.dp.sgp.View.Fragment.SwamiCharitra;

import android.app.ProgressDialog;
import android.os.Build;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class DetailCharitraFragment extends Fragment {
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
    View rootview;
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

    public static DetailCharitraFragment newInstance(Bundle bundle) {
        DetailCharitraFragment detailCharitraFragment = new DetailCharitraFragment();
        detailCharitraFragment.setArguments(bundle);
        return detailCharitraFragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.intValue = getArguments().getInt("position");
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_detail_charitra, viewGroup, false);
        this.rootview = viewInflate;
        this.textView2 = (TextView) viewInflate.findViewById(R.id.textView2);
        this.txtHeading = (TextView) this.rootview.findViewById(R.id.txtHeading);
        this.txt_completed = (TextView) this.rootview.findViewById(R.id.txt_completed);
        this.panelIconLeft = (LinearLayout) this.rootview.findViewById(R.id.panelIconLeftreverse);
        this.panelIconRight = (LinearLayout) this.rootview.findViewById(R.id.panelIconRightmain);
        this.panelIconLeftreverse = (LinearLayout) this.rootview.findViewById(R.id.panelIconLeftreversemain);
        this.content = (LinearLayout) this.rootview.findViewById(R.id.content);
        this.img_Overflow = (ImageView) this.rootview.findViewById(R.id.img_Overflow);
        this.webView = (WebView) this.rootview.findViewById(R.id.web_view);
        this.progressBar = this.rootview.findViewById(R.id.progress_bar);
        this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
        this.databaseHelperClass = new DatabaseHelperClass(getActivity());
        this.dataHandler = new DataHandler(getActivity());
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
        this.t1 = new TextToSpeech(getActivity(), new TextToSpeech.OnInitListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.DetailCharitraFragment.1
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public void onInit(int i) {
                if (i == -1 || Build.VERSION.SDK_INT < 21) {
                    return;
                }
                DetailCharitraFragment.this.t1.setLanguage(Locale.forLanguageTag("mr-IN"));
            }
        });
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
        this.panelIconRight.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.DetailCharitraFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = DetailCharitraFragment.this.counter;
                DetailCharitraFragment.this.counter++;
                if (DetailCharitraFragment.this.counter > 20) {
                    DetailCharitraFragment.this.counter = 0;
                }
                if (DetailCharitraFragment.this.counter >= 0) {
                    String status = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getStatus();
                    if (status.equalsIgnoreCase("1")) {
                        if (DetailCharitraFragment.this.data == null || DetailCharitraFragment.this.data.size() <= 0) {
                            return;
                        }
                        String title2 = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getTitle();
                        String description2 = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getDescription();
                        DetailCharitraFragment.this.txtHeading.setText(title2);
                        DetailCharitraFragment.this.textView2.setText(description2);
                        DetailCharitraFragment.this.webView.loadDataWithBaseURL("", description2, "text/html", Key.STRING_CHARSET_NAME, "");
                        if (((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getStatus().equalsIgnoreCase("1")) {
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                            return;
                        } else {
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                            return;
                        }
                    }
                    if (status.equalsIgnoreCase("2")) {
                        if (DetailCharitraFragment.this.data == null || DetailCharitraFragment.this.data.size() <= 0) {
                            return;
                        }
                        String title3 = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getTitle();
                        String description3 = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getDescription();
                        DetailCharitraFragment.this.txtHeading.setText(title3);
                        DetailCharitraFragment.this.textView2.setText(description3);
                        DetailCharitraFragment.this.webView.loadDataWithBaseURL("", description3, "text/html", Key.STRING_CHARSET_NAME, "");
                        if (((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getStatus().equalsIgnoreCase("1")) {
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                            return;
                        } else {
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                            return;
                        }
                    }
                    DetailCharitraFragment.this.counter = i;
                    Toast.makeText(DetailCharitraFragment.this.getActivity(), "अध्याय वाचन पुर्ण झाले नाही. वाचन पुर्ण करुन बुकमार्क वर क्लिक करा", 0).show();
                    return;
                }
                DetailCharitraFragment.this.counter = i;
                Toast.makeText(DetailCharitraFragment.this.getActivity(), "अध्याय वाचन पुर्ण झाले नाही. वाचन पुर्ण करुन बुकमार्क वर क्लिक करा", 0).show();
            }
        });
        this.panelIconLeftreverse.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.DetailCharitraFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = DetailCharitraFragment.this.counter;
                DetailCharitraFragment.this.counter--;
                if (DetailCharitraFragment.this.counter > 20) {
                    DetailCharitraFragment.this.counter = 0;
                }
                if (DetailCharitraFragment.this.counter > -1) {
                    String status = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getStatus();
                    if (status.equalsIgnoreCase("1")) {
                        if (DetailCharitraFragment.this.data == null || DetailCharitraFragment.this.data.size() <= 0) {
                            return;
                        }
                        String title2 = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getTitle();
                        String description2 = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getDescription();
                        DetailCharitraFragment.this.txtHeading.setText(title2);
                        DetailCharitraFragment.this.textView2.setText(description2);
                        DetailCharitraFragment.this.webView.loadDataWithBaseURL("", description2, "text/html", Key.STRING_CHARSET_NAME, "");
                        if (((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getStatus().equalsIgnoreCase("1")) {
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                            return;
                        } else {
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                            return;
                        }
                    }
                    if (status.equalsIgnoreCase("2")) {
                        if (DetailCharitraFragment.this.data == null || DetailCharitraFragment.this.data.size() <= 0) {
                            return;
                        }
                        String title3 = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getTitle();
                        String description3 = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getDescription();
                        DetailCharitraFragment.this.txtHeading.setText(title3);
                        DetailCharitraFragment.this.textView2.setText(description3);
                        DetailCharitraFragment.this.webView.loadDataWithBaseURL("", description3, "text/html", Key.STRING_CHARSET_NAME, "");
                        if (((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getStatus().equalsIgnoreCase("1")) {
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                            return;
                        } else {
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                            return;
                        }
                    }
                    DetailCharitraFragment.this.counter = i;
                    Toast.makeText(DetailCharitraFragment.this.getActivity(), "अध्याय वाचन पुर्ण झाले नाही. वाचन पुर्ण करुन बुकमार्क वर क्लिक करा", 0).show();
                    return;
                }
                DetailCharitraFragment.this.counter = i;
                Toast.makeText(DetailCharitraFragment.this.getActivity(), "अध्याय वाचन पुर्ण झाले नाही. वाचन पुर्ण करुन बुकमार्क वर क्लिक करा", 0).show();
            }
        });
        this.txt_completed.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.DetailCharitraFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DetailCharitraFragment.this.counter <= 20) {
                    DetailCharitraFragment.this.sendSubmitBody.setAdhyayid(((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getId());
                    DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                    List<DBSwamiDatum> employeeList2 = DetailCharitraFragment.this.databaseHelperClass.getEmployeeList();
                    if (DetailCharitraFragment.this.data.size() > 0) {
                        DetailCharitraFragment.this.data.clear();
                        DetailCharitraFragment.this.data = employeeList2;
                    }
                    if (DetailCharitraFragment.this.data.size() > 0) {
                        int i = DetailCharitraFragment.this.counter + 1;
                        String str = DateFormat.getDateTimeInstance().format(Calendar.getInstance().getTime());
                        DBSwamiDatum dBSwamiDatum = new DBSwamiDatum();
                        dBSwamiDatum.setIds(((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getIds());
                        dBSwamiDatum.setTitle(((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getTitle());
                        dBSwamiDatum.setDescription(((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getDescription());
                        dBSwamiDatum.setComplete_prayan("0");
                        dBSwamiDatum.setStatus("1");
                        dBSwamiDatum.setCurrent_adhyay(i + "");
                        dBSwamiDatum.setCompleted_on(str);
                        dBSwamiDatum.setImage(((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getImage());
                        DetailCharitraFragment.this.databaseHelperClass.updateEmployee(dBSwamiDatum);
                        if (i > 20) {
                            dBSwamiDatum.setIds(((DBSwamiDatum) DetailCharitraFragment.this.data.get(20)).getIds());
                            dBSwamiDatum.setTitle(((DBSwamiDatum) DetailCharitraFragment.this.data.get(20)).getTitle());
                            dBSwamiDatum.setDescription(((DBSwamiDatum) DetailCharitraFragment.this.data.get(20)).getDescription());
                            dBSwamiDatum.setComplete_prayan(((DBSwamiDatum) DetailCharitraFragment.this.data.get(20)).getComplete_prayan());
                            dBSwamiDatum.setStatus("2");
                            dBSwamiDatum.setCurrent_adhyay(i + "");
                            dBSwamiDatum.setCompleted_on("ऑफलाइन मोडमध्ये कार्य करेल");
                            dBSwamiDatum.setImage(((DBSwamiDatum) DetailCharitraFragment.this.data.get(20)).getImage());
                            DetailCharitraFragment.this.databaseHelperClass.updateEmployee(dBSwamiDatum);
                        } else {
                            dBSwamiDatum.setIds(((DBSwamiDatum) DetailCharitraFragment.this.data.get(i)).getIds());
                            dBSwamiDatum.setTitle(((DBSwamiDatum) DetailCharitraFragment.this.data.get(i)).getTitle());
                            dBSwamiDatum.setDescription(((DBSwamiDatum) DetailCharitraFragment.this.data.get(i)).getDescription());
                            dBSwamiDatum.setComplete_prayan(((DBSwamiDatum) DetailCharitraFragment.this.data.get(i)).getComplete_prayan());
                            dBSwamiDatum.setStatus("2");
                            dBSwamiDatum.setCurrent_adhyay(i + "");
                            dBSwamiDatum.setCompleted_on("ऑफलाइन मोडमध्ये कार्य करेल");
                            dBSwamiDatum.setImage(((DBSwamiDatum) DetailCharitraFragment.this.data.get(i)).getImage());
                            DetailCharitraFragment.this.databaseHelperClass.updateEmployee(dBSwamiDatum);
                        }
                    }
                    List<DBSwamiDatum> employeeList3 = DetailCharitraFragment.this.databaseHelperClass.getEmployeeList();
                    if (DetailCharitraFragment.this.data.size() > 0) {
                        DetailCharitraFragment.this.data.clear();
                        DetailCharitraFragment.this.data = employeeList3;
                    }
                    if (DetailCharitraFragment.this.data == null || DetailCharitraFragment.this.data.size() <= 0) {
                        return;
                    }
                    String title2 = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getTitle();
                    String description2 = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getDescription();
                    DetailCharitraFragment.this.txtHeading.setText(title2);
                    DetailCharitraFragment.this.textView2.setText(description2);
                    DetailCharitraFragment.this.webView.loadDataWithBaseURL(null, description2, "text/html", Key.STRING_CHARSET_NAME, null);
                    DetailCharitraFragment.this.counter++;
                    DetailCharitraFragment.this.dataHandler.addData("adhaycount", DetailCharitraFragment.this.counter + "");
                    return;
                }
                DetailCharitraFragment.this.counter = 0;
                String jsonFromAssets = null;
                try {
                    jsonFromAssets = AssestParser.getJsonFromAssets(DetailCharitraFragment.this.getActivity(), "newswamicharitra.json");
                    Log.i("data", jsonFromAssets);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                Gson gson = new Gson();
                SwamiExample swamiExample = (SwamiExample) gson.fromJson(jsonFromAssets, new TypeToken<SwamiExample>() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.DetailCharitraFragment.4.1
                }.getType());
                if (swamiExample != null) {
                    if (DetailCharitraFragment.this.freshdatalist != null && DetailCharitraFragment.this.freshdatalist.size() > 0) {
                        DetailCharitraFragment.this.freshdatalist.clear();
                    }
                    if (swamiExample.getData() != null) {
                        DetailCharitraFragment.this.freshdatalist = swamiExample.getData();
                        if (DetailCharitraFragment.this.freshdatalist != null && DetailCharitraFragment.this.freshdatalist.size() > 0) {
                            DatabaseHelperClass databaseHelperClass = new DatabaseHelperClass(DetailCharitraFragment.this.getActivity());
                            databaseHelperClass.deleteAll();
                            List<DBSwamiDatum> employeeList4 = databaseHelperClass.getEmployeeList();
                            if (employeeList4.size() > 0 && employeeList4 != null) {
                                employeeList4.size();
                            }
                            for (int i2 = 0; i2 < DetailCharitraFragment.this.freshdatalist.size(); i2++) {
                                DatabaseHelperClass databaseHelperClass2 = new DatabaseHelperClass(DetailCharitraFragment.this.getActivity());
                                DBSwamiDatum dBSwamiDatum2 = new DBSwamiDatum();
                                dBSwamiDatum2.setTitle(((SwamiDatum) DetailCharitraFragment.this.freshdatalist.get(i2)).getTitle());
                                dBSwamiDatum2.setDescription(((SwamiDatum) DetailCharitraFragment.this.freshdatalist.get(i2)).getDescription());
                                dBSwamiDatum2.setComplete_prayan("0");
                                if (i2 == 0) {
                                    dBSwamiDatum2.setStatus("2");
                                } else {
                                    dBSwamiDatum2.setStatus("3");
                                }
                                dBSwamiDatum2.setCurrent_adhyay("0");
                                dBSwamiDatum2.setCompleted_on("ऑफलाइन मोडमध्ये कार्य करेल");
                                dBSwamiDatum2.setImage(((SwamiDatum) DetailCharitraFragment.this.freshdatalist.get(i2)).getImage());
                                databaseHelperClass2.addEmployee(dBSwamiDatum2);
                            }
                            if (DetailCharitraFragment.this.data != null && DetailCharitraFragment.this.data.size() > 0) {
                                DetailCharitraFragment.this.data.clear();
                            }
                            DetailCharitraFragment.this.data = databaseHelperClass.getEmployeeList();
                            Log.d("newlist", gson.toJson(DetailCharitraFragment.this.data));
                            DetailCharitraFragment.this.parayancounter++;
                            DetailCharitraFragment.this.dataHandler.addData("parayancount", DetailCharitraFragment.this.parayancounter + "");
                        }
                    }
                }
                DetailCharitraFragment.this.sendSubmitBody.setAdhyayid(((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getId());
                DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                List<DBSwamiDatum> employeeList5 = DetailCharitraFragment.this.databaseHelperClass.getEmployeeList();
                if (DetailCharitraFragment.this.data.size() > 0) {
                    DetailCharitraFragment.this.data.clear();
                    DetailCharitraFragment.this.data = employeeList5;
                }
                if (DetailCharitraFragment.this.data.size() > 0) {
                    int i3 = DetailCharitraFragment.this.counter + 1;
                    String str2 = DateFormat.getDateTimeInstance().format(Calendar.getInstance().getTime());
                    DBSwamiDatum dBSwamiDatum3 = new DBSwamiDatum();
                    dBSwamiDatum3.setIds(((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getIds());
                    dBSwamiDatum3.setTitle(((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getTitle());
                    dBSwamiDatum3.setDescription(((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getDescription());
                    dBSwamiDatum3.setComplete_prayan("0");
                    dBSwamiDatum3.setStatus("1");
                    dBSwamiDatum3.setCurrent_adhyay(i3 + "");
                    dBSwamiDatum3.setCompleted_on(str2);
                    dBSwamiDatum3.setImage(((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getImage());
                    DetailCharitraFragment.this.databaseHelperClass.updateEmployee(dBSwamiDatum3);
                    if (i3 > 20) {
                        dBSwamiDatum3.setIds(((DBSwamiDatum) DetailCharitraFragment.this.data.get(20)).getIds());
                        dBSwamiDatum3.setTitle(((DBSwamiDatum) DetailCharitraFragment.this.data.get(20)).getTitle());
                        dBSwamiDatum3.setDescription(((DBSwamiDatum) DetailCharitraFragment.this.data.get(20)).getDescription());
                        dBSwamiDatum3.setComplete_prayan(((DBSwamiDatum) DetailCharitraFragment.this.data.get(20)).getComplete_prayan());
                        dBSwamiDatum3.setStatus("2");
                        dBSwamiDatum3.setCurrent_adhyay(i3 + "");
                        dBSwamiDatum3.setCompleted_on("ऑफलाइन मोडमध्ये कार्य करेल");
                        dBSwamiDatum3.setImage(((DBSwamiDatum) DetailCharitraFragment.this.data.get(20)).getImage());
                        DetailCharitraFragment.this.databaseHelperClass.updateEmployee(dBSwamiDatum3);
                    } else {
                        dBSwamiDatum3.setIds(((DBSwamiDatum) DetailCharitraFragment.this.data.get(i3)).getIds());
                        dBSwamiDatum3.setTitle(((DBSwamiDatum) DetailCharitraFragment.this.data.get(i3)).getTitle());
                        dBSwamiDatum3.setDescription(((DBSwamiDatum) DetailCharitraFragment.this.data.get(i3)).getDescription());
                        dBSwamiDatum3.setComplete_prayan(((DBSwamiDatum) DetailCharitraFragment.this.data.get(i3)).getComplete_prayan());
                        dBSwamiDatum3.setStatus("2");
                        dBSwamiDatum3.setCurrent_adhyay(i3 + "");
                        dBSwamiDatum3.setCompleted_on("ऑफलाइन मोडमध्ये कार्य करेल");
                        dBSwamiDatum3.setImage(((DBSwamiDatum) DetailCharitraFragment.this.data.get(i3)).getImage());
                        DetailCharitraFragment.this.databaseHelperClass.updateEmployee(dBSwamiDatum3);
                    }
                }
                List<DBSwamiDatum> employeeList6 = DetailCharitraFragment.this.databaseHelperClass.getEmployeeList();
                if (DetailCharitraFragment.this.data.size() > 0) {
                    DetailCharitraFragment.this.data.clear();
                    DetailCharitraFragment.this.data = employeeList6;
                }
                if (DetailCharitraFragment.this.data == null || DetailCharitraFragment.this.data.size() <= 0) {
                    return;
                }
                String title3 = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getTitle();
                String description3 = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getDescription();
                DetailCharitraFragment.this.txtHeading.setText(title3);
                DetailCharitraFragment.this.textView2.setText(description3);
                DetailCharitraFragment.this.webView.loadDataWithBaseURL(null, description3, "text/html", Key.STRING_CHARSET_NAME, null);
                DetailCharitraFragment.this.counter++;
                DetailCharitraFragment.this.dataHandler.addData("adhaycount", DetailCharitraFragment.this.counter + "");
            }
        });
        this.img_Overflow.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.DetailCharitraFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DetailCharitraFragment.this.t1.speak(((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.intValue)).getDescription(), 0, null);
            }
        });
        return this.rootview;
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        TextToSpeech textToSpeech = this.t1;
        if (textToSpeech != null) {
            textToSpeech.stop();
            this.t1.shutdown();
        }
        super.onPause();
    }

    public void saramrut() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).saramrut(this.sendCommonBody, new Callback<SwamiExample>() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.DetailCharitraFragment.6
            @Override // retrofit.Callback
            public void success(SwamiExample swamiExample, Response response) {
                if (swamiExample != null) {
                    Log.d("appUpdateBody", new Gson().toJson(swamiExample));
                    DetailCharitraFragment.this.message = swamiExample.getMessage();
                    DetailCharitraFragment.this.status = swamiExample.getStatus();
                    if (swamiExample.getData() != null && DetailCharitraFragment.this.data != null && DetailCharitraFragment.this.data.size() > 0) {
                        String title = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getTitle();
                        String description = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getDescription();
                        DetailCharitraFragment.this.txtHeading.setText(title);
                        DetailCharitraFragment.this.textView2.setText(description);
                        DetailCharitraFragment.this.webView.loadDataWithBaseURL(null, description, "text/html", Key.STRING_CHARSET_NAME, null);
                        if (((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getStatus().equalsIgnoreCase("1")) {
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                        } else {
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                        }
                    }
                }
                DetailCharitraFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                DetailCharitraFragment.this.progressDialog.dismiss();
            }
        });
    }

    public void Submitabjachandi() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        Log.d("sendSubmitBody", new Gson().toJson(this.sendSubmitBody));
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).submitSaramrut(this.sendSubmitBody, new Callback<NityaSevaDataResponse>() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.DetailCharitraFragment.7
            @Override // retrofit.Callback
            public void success(NityaSevaDataResponse nityaSevaDataResponse, Response response) {
                DetailCharitraFragment.this.progressDialog.dismiss();
                if (nityaSevaDataResponse != null) {
                    Log.d("sendSubmitBody", new Gson().toJson(nityaSevaDataResponse));
                    if (nityaSevaDataResponse.getStatus() != null) {
                        DetailCharitraFragment.this.message = nityaSevaDataResponse.getMessage();
                        DetailCharitraFragment.this.status = nityaSevaDataResponse.getStatus();
                        if (DetailCharitraFragment.this.status.equalsIgnoreCase("success")) {
                            Toast.makeText(DetailCharitraFragment.this.getActivity(), DetailCharitraFragment.this.message, 0).show();
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                            DetailCharitraFragment.this.Refreshsaramrut();
                        } else {
                            Toast.makeText(DetailCharitraFragment.this.getActivity(), DetailCharitraFragment.this.message, 0).show();
                        }
                    }
                }
                DetailCharitraFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                DetailCharitraFragment.this.progressDialog.dismiss();
            }
        });
    }

    public void Refreshsaramrut() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).saramrut(this.sendCommonBody, new Callback<SwamiExample>() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.DetailCharitraFragment.8
            @Override // retrofit.Callback
            public void success(SwamiExample swamiExample, Response response) {
                if (swamiExample != null) {
                    Log.d("appUpdateBody", new Gson().toJson(swamiExample));
                    DetailCharitraFragment.this.message = swamiExample.getMessage();
                    DetailCharitraFragment.this.status = swamiExample.getStatus();
                    if (swamiExample.getData() != null && DetailCharitraFragment.this.data.size() > 0) {
                        DetailCharitraFragment.this.counter++;
                        if (DetailCharitraFragment.this.counter > 20) {
                            DetailCharitraFragment.this.counter = 0;
                        }
                        String title = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getTitle();
                        String description = ((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getDescription();
                        DetailCharitraFragment.this.txtHeading.setText(title);
                        DetailCharitraFragment.this.textView2.setText(description);
                        DetailCharitraFragment.this.webView.loadDataWithBaseURL(null, description, "text/html", Key.STRING_CHARSET_NAME, null);
                        if (((DBSwamiDatum) DetailCharitraFragment.this.data.get(DetailCharitraFragment.this.counter)).getStatus().equalsIgnoreCase("1")) {
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_24, 0, 0, 0);
                        } else {
                            DetailCharitraFragment.this.txt_completed.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_baseline_bookmark_border_light_24, 0, 0, 0);
                        }
                    }
                }
                DetailCharitraFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                DetailCharitraFragment.this.progressDialog.dismiss();
            }
        });
    }
}
