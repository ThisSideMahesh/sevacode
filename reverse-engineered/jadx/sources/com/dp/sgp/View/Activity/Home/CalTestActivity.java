package com.dp.sgp.View.Activity.Home;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import com.dp.sgp.R;
import com.dp.sgp.View.Fragment.Calendar.CalendarParentFragment;
import com.dp.sgp.View.Fragment.HomeFragmenFragment;

/* JADX INFO: loaded from: classes.dex */
public class CalTestActivity extends AppCompatActivity {
    Fragment fragment = null;
    private FragmentManager fragmentManager;
    FragmentTransaction transaction;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_cal_test);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        this.fragmentManager = supportFragmentManager;
        this.transaction = supportFragmentManager.beginTransaction();
        CalendarParentFragment calendarParentFragment = new CalendarParentFragment();
        this.fragment = calendarParentFragment;
        this.transaction.replace(R.id.frame_container, calendarParentFragment).addToBackStack(HomeFragmenFragment.NAME).commit();
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
        invalidateOptionsMenu();
        if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
            if (getSupportFragmentManager().getBackStackEntryCount() == 1) {
                finish();
                return;
            } else {
                this.fragmentManager.popBackStackImmediate();
                return;
            }
        }
        super.onBackPressed();
    }
}
