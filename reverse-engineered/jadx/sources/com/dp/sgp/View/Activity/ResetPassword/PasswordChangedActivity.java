package com.dp.sgp.View.Activity.ResetPassword;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Home.BaseActivity;
import com.dp.sgp.View.Activity.Login.LoginActivity;

/* JADX INFO: loaded from: classes.dex */
public class PasswordChangedActivity extends BaseActivity {
    Button btn_reset;
    private ConnectionDetector connectionDetector;
    private DataHandler datHandler;

    @Override // com.dp.sgp.View.Activity.Home.BaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_password_changed);
        setHeader("Verify Code", true, true);
        this.datHandler = new DataHandler(getApplicationContext());
        this.connectionDetector = new ConnectionDetector(getApplicationContext());
        Button button = (Button) findViewById(R.id.btn_reset);
        this.btn_reset = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.ResetPassword.PasswordChangedActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PasswordChangedActivity.this.connectionDetector.isConnectingToInternet()) {
                    PasswordChangedActivity.this.startActivity(new Intent(PasswordChangedActivity.this, (Class<?>) LoginActivity.class));
                } else {
                    Toast.makeText(PasswordChangedActivity.this.getApplicationContext(), PasswordChangedActivity.this.getResources().getString(R.string.no_internet), 0).show();
                }
            }
        });
    }
}
