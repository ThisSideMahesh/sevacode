package com.dp.sgp.View.Activity.ForgotPassword;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Home.BaseActivity;
import com.dp.sgp.View.Activity.OtpVerifcation.OtpVerificationActivity;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class ForgotPasswordActivity extends BaseActivity {
    private Button button;
    private ConnectionDetector connectionDetector;
    private DataHandler datHandler;
    EditText editText_email;
    String lStrUserName = "";
    String lStrEmailID = "";
    String lStrCountry = "";
    String lStrPassword = "";
    String lStrConfirmPassword = "";

    @Override // com.dp.sgp.View.Activity.Home.BaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_forgot_password);
        setHeader("Forgot Password ", true, true);
        this.datHandler = new DataHandler(getApplicationContext());
        this.connectionDetector = new ConnectionDetector(getApplicationContext());
        this.editText_email = (EditText) findViewById(R.id.editText_email);
        Button button = (Button) findViewById(R.id.btnVerify);
        this.button = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.ForgotPassword.ForgotPasswordActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForgotPasswordActivity forgotPasswordActivity = ForgotPasswordActivity.this;
                forgotPasswordActivity.lStrEmailID = forgotPasswordActivity.editText_email.getText().toString();
                if (ForgotPasswordActivity.this.lStrEmailID.equalsIgnoreCase("")) {
                    ForgotPasswordActivity.this.editText_email.setError("Enter EmailId");
                    return;
                }
                ForgotPasswordActivity forgotPasswordActivity2 = ForgotPasswordActivity.this;
                if (forgotPasswordActivity2.isValidEmailId(forgotPasswordActivity2.lStrEmailID)) {
                    ForgotPasswordActivity.this.datHandler.addData("email", ForgotPasswordActivity.this.lStrEmailID);
                    ForgotPasswordActivity.this.editText_email.setError(null);
                    if (ForgotPasswordActivity.this.connectionDetector.isConnectingToInternet()) {
                        ForgotPasswordActivity.this.startActivity(new Intent(ForgotPasswordActivity.this, (Class<?>) OtpVerificationActivity.class));
                        return;
                    } else {
                        Toast.makeText(ForgotPasswordActivity.this.getApplicationContext(), ForgotPasswordActivity.this.getResources().getString(R.string.no_internet), 0).show();
                        return;
                    }
                }
                ForgotPasswordActivity.this.editText_email.setError("Enter valid Email address !");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidEmailId(String str) {
        return Pattern.compile("^(([\\w-]+\\.)+[\\w-]+|([a-zA-Z]{1}|[\\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z]+[\\w-]+\\.)+[a-zA-Z]{2,4})$").matcher(str).matches();
    }
}
