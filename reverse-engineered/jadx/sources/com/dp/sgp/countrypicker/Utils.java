package com.dp.sgp.countrypicker;

import android.content.Context;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Utils {
    public static int getMipmapResId(Context context, String str) {
        return context.getResources().getIdentifier(str.toLowerCase(Locale.ENGLISH), "drawable", context.getPackageName());
    }

    public static JSONObject getCountriesJSON(Context context) {
        int identifier = context.getResources().getIdentifier("countries_dialing_code", "raw", context.getApplicationContext().getPackageName());
        if (identifier == 0) {
            return null;
        }
        try {
            return new JSONObject(convertStreamToString(context.getResources().openRawResource(identifier)));
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static List<Country> parseCountries(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                arrayList.add(new Country(next, (String) jSONObject.get(next)));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    public static String convertStreamToString(InputStream inputStream) {
        Scanner scannerUseDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return scannerUseDelimiter.hasNext() ? scannerUseDelimiter.next() : "";
    }
}
