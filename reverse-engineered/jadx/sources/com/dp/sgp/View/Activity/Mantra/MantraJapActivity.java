package com.dp.sgp.View.Activity.Mantra;

import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.LinearLayout;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.R;
import com.dp.sgp.View.Fragment.NityaSevaDetails.ChantingInputsFragment;

/* JADX INFO: loaded from: classes.dex */
public class MantraJapActivity extends AppCompatActivity {
    LinearLayout panelIconLeftreverse;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_mantra_jap);
        this.panelIconLeftreverse = (LinearLayout) findViewById(R.id.panelIconLeftreverse);
        new Bundle().putString(Key.MESSAGE, "मंत्र जप");
        ChantingInputsFragment chantingInputsFragment = new ChantingInputsFragment();
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.replace(R.id.layout, chantingInputsFragment);
        fragmentTransactionBeginTransaction.commit();
        this.panelIconLeftreverse.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Mantra.MantraJapActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MantraJapActivity.this.finish();
            }
        });
    }
}
