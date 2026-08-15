package com.dp.sgp.View.Activity.Country;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SearchView;
import android.util.Log;
import android.view.View;
import com.dp.sgp.Adapters.DataAdapter;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.dp.sgp.View.Activity.Language.LanguageActivity;
import com.dp.sgp.application.GurupethApp;
import com.dp.sgp.countrypicker.Country;
import com.dp.sgp.countrypicker.NewCountry;
import com.dp.sgp.countrypicker.Utils;
import com.google.gson.Gson;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class CountryActivity extends AppCompatActivity {
    private List<NewCountry> FilterresponseList;
    private List<Country> countries;
    DataHandler dataHandler;
    String lStrCode = "";
    String lStrSelectedLang = "";
    DataAdapter mAdapter;
    private List<NewCountry> newCountryList;
    RecyclerView rvArticles;
    SearchView searchView;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_country);
        this.FilterresponseList = new ArrayList();
        this.newCountryList = new ArrayList();
        this.countries = new ArrayList();
        this.dataHandler = new DataHandler(getApplicationContext());
        this.searchView = (SearchView) findViewById(R.id.seachview);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.card_recycler_view);
        this.rvArticles = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.countries = Utils.parseCountries(Utils.getCountriesJSON(this));
        Log.d("appUpdateBody ", new Gson().toJson(this.countries));
        Collections.sort(this.countries, new Comparator<Country>() { // from class: com.dp.sgp.View.Activity.Country.CountryActivity.1
            @Override // java.util.Comparator
            public int compare(Country country, Country country2) {
                Locale locale = CountryActivity.this.getResources().getConfiguration().locale;
                Collator collator = Collator.getInstance(locale);
                collator.setStrength(0);
                return collator.compare(new Locale(locale.getLanguage(), country.getIsoCode()).getDisplayCountry(), new Locale(locale.getLanguage(), country2.getIsoCode()).getDisplayCountry());
            }
        });
        List<Country> list = this.countries;
        if (list != null && list.size() > 0) {
            for (int i = 0; i < this.countries.size(); i++) {
                String displayCountry = new Locale(GurupethApp.mContext.getResources().getConfiguration().locale.getLanguage(), this.countries.get(i).getIsoCode()).getDisplayCountry();
                System.out.println(displayCountry);
                NewCountry newCountry = new NewCountry();
                newCountry.setCcName(displayCountry);
                newCountry.setIsoCode(this.countries.get(i).getIsoCode());
                newCountry.setDialingCode(this.countries.get(i).getDialingCode());
                this.newCountryList.add(newCountry);
            }
            this.mAdapter = new DataAdapter(this, this.newCountryList);
            this.rvArticles.setHasFixedSize(true);
            this.rvArticles.setLayoutManager(new LinearLayoutManager(this));
            this.rvArticles.setAdapter(this.mAdapter);
        }
        this.searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.dp.sgp.View.Activity.Country.CountryActivity.2
            @Override // android.support.v7.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                return false;
            }

            @Override // android.support.v7.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                if (CountryActivity.this.mAdapter == null) {
                    return true;
                }
                CountryActivity.this.mAdapter.getFilter().filter(str);
                return true;
            }
        });
        this.rvArticles.addOnItemTouchListener(new RecyclerTouchListener(getApplicationContext(), this.rvArticles, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Activity.Country.CountryActivity.3
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i2) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i2) {
                CountryActivity countryActivity = CountryActivity.this;
                countryActivity.FilterresponseList = countryActivity.mAdapter.getitemmsQty();
                NewCountry newCountry2 = (NewCountry) CountryActivity.this.FilterresponseList.get(i2);
                CountryActivity.this.dataHandler.addData("country", newCountry2.getCcName());
                CountryActivity.this.dataHandler.addData("IsoCode", newCountry2.getIsoCode());
                CountryActivity.this.dataHandler.addData("DialingCode", newCountry2.getDialingCode());
                CountryActivity.this.startActivity(new Intent(CountryActivity.this, (Class<?>) LanguageActivity.class));
                CountryActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                CountryActivity.this.finish();
            }
        }));
    }
}
