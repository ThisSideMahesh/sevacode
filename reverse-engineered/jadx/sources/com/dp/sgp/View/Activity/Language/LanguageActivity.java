package com.dp.sgp.View.Activity.Language;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import com.dp.sgp.Adapters.LangagueAdapter;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.LanguageModel;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.dp.sgp.View.Activity.Login.CountryLoginActivity;
import com.dp.sgp.View.Activity.Login.NewLoginActivity;
import com.dp.sgp.util.AssestParser;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LanguageActivity extends AppCompatActivity {
    DataHandler dataHandler;
    String lStrCode = "";
    String lStrSelectedLang = "";
    private List<LanguageModel> languageModels;
    LangagueAdapter mAdapter;
    RecyclerView rvArticles;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_language);
        this.languageModels = new ArrayList();
        this.dataHandler = new DataHandler(getApplicationContext());
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.my_recycler_view);
        this.rvArticles = recyclerView;
        recyclerView.setHasFixedSize(true);
        String jsonFromAssets = null;
        try {
            jsonFromAssets = AssestParser.getJsonFromAssets(this, "languages.json");
            Log.i("data", jsonFromAssets);
        } catch (Exception e) {
            e.printStackTrace();
        }
        List<LanguageModel> list = (List) new Gson().fromJson(jsonFromAssets, new TypeToken<List<LanguageModel>>() { // from class: com.dp.sgp.View.Activity.Language.LanguageActivity.1
        }.getType());
        this.languageModels = list;
        if (list != null && list.size() > 0) {
            this.mAdapter = new LangagueAdapter(this, this.languageModels);
            this.rvArticles.setLayoutManager(new GridLayoutManager(this, 2));
            this.rvArticles.setItemAnimator(new DefaultItemAnimator());
            this.rvArticles.setAdapter(this.mAdapter);
        }
        this.rvArticles.addOnItemTouchListener(new RecyclerTouchListener(this, this.rvArticles, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Activity.Language.LanguageActivity.2
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                LanguageModel languageModel = (LanguageModel) LanguageActivity.this.languageModels.get(i);
                if (languageModel != null) {
                    LanguageActivity.this.lStrCode = languageModel.getCode();
                    LanguageActivity.this.lStrSelectedLang = languageModel.getName();
                    if (LanguageActivity.this.lStrCode.equalsIgnoreCase("अ")) {
                        Toast.makeText(LanguageActivity.this, "Language selected " + languageModel.getName(), 0).show();
                        LanguageActivity.this.dataHandler.addData("lang", LanguageActivity.this.lStrCode);
                        if (LanguageActivity.this.dataHandler.getData("DialingCode").equalsIgnoreCase("91")) {
                            LanguageActivity.this.startActivity(new Intent(LanguageActivity.this, (Class<?>) NewLoginActivity.class));
                            LanguageActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                            LanguageActivity.this.finish();
                            return;
                        }
                        LanguageActivity.this.startActivity(new Intent(LanguageActivity.this, (Class<?>) CountryLoginActivity.class));
                        LanguageActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                        LanguageActivity.this.finish();
                        return;
                    }
                    Toast.makeText(LanguageActivity.this, "Sorry Selected Language " + languageModel.getName() + " Will Come Soon", 0).show();
                }
            }
        }));
    }
}
