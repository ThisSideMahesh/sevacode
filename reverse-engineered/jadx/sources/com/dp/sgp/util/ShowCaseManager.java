package com.dp.sgp.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import com.dp.sgp.Constants.PreferenceHelper;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class ShowCaseManager {
    public static final String HELP_ADD = "help_add";
    public static final String HELP_AMCYAVISHAYI = "help_amchyvishayi";
    public static final String HELP_BOOKMARK = "help_booking";
    public static final String HELP_BOOKMARK_CHANTING = "help_chanting_booking";
    public static final String HELP_BROADCAST = "help_broadcast";
    public static final String HELP_HISTORY = "help_history";
    public static final String HELP_NITYASEVA = "help_nityaseva";
    public static final String HELP_SANDESH = "help_sandes";
    public static final String HELP_SCROLL = "help_scroll";
    public static final String HELP_SETTINGS = "help_settings";
    public static final String HELP_UPAKRAM = "help_upkram";

    public interface ShowCaseManagerListener {
        void OnComplete();
    }

    public static void showHelp(final Activity activity, int i, String str, String str2, final String str3, ShowCaseManagerListener showCaseManagerListener) {
        if (PreferenceHelper.getBooleanPreferenceValue(activity, str3)) {
            return;
        }
        try {
            View viewFindViewById = activity.findViewById(R.id.backdrop);
            viewFindViewById.setVisibility(0);
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.util.ShowCaseManager.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    view.setVisibility(8);
                }
            });
            new Handler().postDelayed(new Runnable() { // from class: com.dp.sgp.util.ShowCaseManager.2
                @Override // java.lang.Runnable
                public void run() {
                    PreferenceHelper.setPreferenceValue((Context) activity, str3, true);
                }
            }, 400L);
        } catch (Exception unused) {
        }
    }

    public static void resetHelp(Activity activity) {
        PreferenceHelper.setPreferenceValue((Context) activity, HELP_ADD, false);
        PreferenceHelper.setPreferenceValue((Context) activity, HELP_AMCYAVISHAYI, false);
        PreferenceHelper.setPreferenceValue((Context) activity, HELP_BOOKMARK, false);
        PreferenceHelper.setPreferenceValue((Context) activity, HELP_BOOKMARK_CHANTING, false);
        PreferenceHelper.setPreferenceValue((Context) activity, HELP_HISTORY, false);
        PreferenceHelper.setPreferenceValue((Context) activity, HELP_NITYASEVA, false);
        PreferenceHelper.setPreferenceValue((Context) activity, HELP_SANDESH, false);
        PreferenceHelper.setPreferenceValue((Context) activity, HELP_UPAKRAM, false);
        PreferenceHelper.setPreferenceValue((Context) activity, HELP_SCROLL, false);
        PreferenceHelper.setPreferenceValue((Context) activity, HELP_SETTINGS, false);
        Intent intent = new Intent(PreferenceHelper.SWAMI_CHARITRA_BOOKMARK);
        intent.putExtra(HELP_BROADCAST, true);
        LocalBroadcastManager.getInstance(activity).sendBroadcast(intent);
    }
}
