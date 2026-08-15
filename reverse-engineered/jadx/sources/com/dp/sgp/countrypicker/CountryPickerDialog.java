package com.dp.sgp.countrypicker;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.AppCompatDialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.dp.sgp.R;
import java.text.Collator;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class CountryPickerDialog extends AppCompatDialog {
    private CountryPickerCallbacks callbacks;
    private List<Country> countries;
    private String headingCountryCode;
    private ListView listview;
    private boolean showDialingCode;

    public CountryPickerDialog(Context context, CountryPickerCallbacks countryPickerCallbacks) {
        this(context, countryPickerCallbacks, null, true);
    }

    public CountryPickerDialog(Context context, CountryPickerCallbacks countryPickerCallbacks, String str) {
        this(context, countryPickerCallbacks, str, true);
    }

    public CountryPickerDialog(Context context, CountryPickerCallbacks countryPickerCallbacks, String str, boolean z) {
        super(context);
        this.callbacks = countryPickerCallbacks;
        this.headingCountryCode = str;
        this.showDialingCode = z;
        List<Country> countries = Utils.parseCountries(Utils.getCountriesJSON(getContext()));
        this.countries = countries;
        Collections.sort(countries, new Comparator<Country>() { // from class: com.dp.sgp.countrypicker.CountryPickerDialog.1
            @Override // java.util.Comparator
            public int compare(Country country, Country country2) {
                Locale locale = CountryPickerDialog.this.getContext().getResources().getConfiguration().locale;
                Collator collator = Collator.getInstance(locale);
                collator.setStrength(0);
                return collator.compare(new Locale(locale.getLanguage(), country.getIsoCode()).getDisplayCountry(), new Locale(locale.getLanguage(), country2.getIsoCode()).getDisplayCountry());
            }
        });
    }

    @Override // android.support.v7.app.AppCompatDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.country_picker);
        ViewCompat.setElevation(getWindow().getDecorView(), 3.0f);
        this.listview = (ListView) findViewById(R.id.country_picker_listview);
        this.listview.setAdapter((ListAdapter) new CountryListAdapter(getContext(), this.countries, this.showDialingCode));
        this.listview.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.dp.sgp.countrypicker.CountryPickerDialog.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                CountryPickerDialog.this.hide();
                Country country = (Country) CountryPickerDialog.this.countries.get(i);
                CountryPickerDialog.this.callbacks.onCountrySelected(country, Utils.getMipmapResId(CountryPickerDialog.this.getContext(), country.getIsoCode().toLowerCase(Locale.ENGLISH) + "_flag"));
            }
        });
        scrollToHeadingCountry();
    }

    private void scrollToHeadingCountry() {
        if (this.headingCountryCode != null) {
            for (int i = 0; i < this.listview.getCount(); i++) {
                if (((Country) this.listview.getItemAtPosition(i)).getIsoCode().toLowerCase().equals(this.headingCountryCode.toLowerCase())) {
                    this.listview.setSelection(i);
                }
            }
        }
    }

    public Country getCountryFromIsoCode(String str) {
        for (int i = 0; i < this.countries.size(); i++) {
            if (this.countries.get(i).getIsoCode().equals(str.toUpperCase())) {
                return this.countries.get(i);
            }
        }
        return null;
    }
}
