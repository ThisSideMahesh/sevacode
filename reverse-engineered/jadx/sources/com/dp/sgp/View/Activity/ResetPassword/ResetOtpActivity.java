package com.dp.sgp.View.Activity.ResetPassword;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class ResetOtpActivity extends AppCompatActivity {
    private Button button;
    private ConnectionDetector connectionDetector;
    private DataHandler datHandler;
    private EditText editTextConfirmPassword;
    private EditText editTextPassword;
    String lStrUserName = "";
    String lStrEmailID = "";
    String lStrCountry = "";
    String lStrPassword = "";
    String lStrConfirmPassword = "";

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_reset_otp);
        this.editTextPassword = (EditText) findViewById(R.id.editText_name);
        this.editTextConfirmPassword = (EditText) findViewById(R.id.editText_email);
        this.button = (Button) findViewById(R.id.btnVerify);
        this.datHandler = new DataHandler(getApplicationContext());
        this.connectionDetector = new ConnectionDetector(getApplicationContext());
        this.button.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.ResetPassword.ResetOtpActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ResetOtpActivity resetOtpActivity = ResetOtpActivity.this;
                resetOtpActivity.lStrPassword = resetOtpActivity.editTextPassword.getText().toString();
                ResetOtpActivity resetOtpActivity2 = ResetOtpActivity.this;
                resetOtpActivity2.lStrConfirmPassword = resetOtpActivity2.editTextConfirmPassword.getText().toString();
                if (ResetOtpActivity.this.lStrPassword.equalsIgnoreCase("")) {
                    ResetOtpActivity.this.editTextPassword.setError("Enter Password");
                    return;
                }
                if (ResetOtpActivity.this.lStrConfirmPassword.equalsIgnoreCase("")) {
                    ResetOtpActivity.this.editTextPassword.setError(null);
                    ResetOtpActivity.this.editTextConfirmPassword.setError("Enter Confirm Password");
                    return;
                }
                if (!ResetOtpActivity.this.lStrConfirmPassword.equalsIgnoreCase(ResetOtpActivity.this.lStrPassword)) {
                    ResetOtpActivity.this.editTextPassword.setError(null);
                    ResetOtpActivity.this.editTextPassword.setError("Password & Confirm Password Missmatch");
                    ResetOtpActivity.this.editTextConfirmPassword.setError("Password & Confirm Password Missmatch");
                    Toast.makeText(ResetOtpActivity.this.getApplicationContext(), "Password & Confirm Password Missmatch", 0).show();
                    return;
                }
                if (ResetOtpActivity.this.connectionDetector.isConnectingToInternet()) {
                    ResetOtpActivity.this.startActivity(new Intent(ResetOtpActivity.this, (Class<?>) PasswordChangedActivity.class));
                    ResetOtpActivity.this.finish();
                    return;
                }
                Toast.makeText(ResetOtpActivity.this.getApplicationContext(), ResetOtpActivity.this.getResources().getString(R.string.no_internet), 0).show();
            }
        });
    }
}
