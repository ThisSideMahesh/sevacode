package com.dp.sgp.View.Activity.Registration;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Home.MainActivity;
import com.dp.sgp.View.Activity.Login.LoginActivity;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class RegistrationActivity extends AppCompatActivity {
    private Button button;
    private ConnectionDetector connectionDetector;
    private DataHandler datHandler;
    private EditText editTextConfirmPassword;
    private EditText editTextCountry;
    private EditText editTextEmail;
    private EditText editTextName;
    private EditText editTextPassword;
    private Button facebookLoginButton;
    private Button googleLoginButton;
    private TextView imageView;
    private ImageView textView;
    private TextView textView2;
    private LinearLayout textView3;
    private TextView textView4;
    private LinearLayout txtNewreg;
    private TextView txtPaasword;
    TextView txt_Register;
    String lStrUserName = "";
    String lStrEmailID = "";
    String lStrCountry = "";
    String lStrPassword = "";
    String lStrConfirmPassword = "";

    private void assignViews() {
        this.textView = (ImageView) findViewById(R.id.textView);
        this.textView2 = (TextView) findViewById(R.id.textView2);
        this.imageView = (TextView) findViewById(R.id.imageView);
        this.editTextName = (EditText) findViewById(R.id.editText_name);
        this.editTextEmail = (EditText) findViewById(R.id.editText_email);
        this.editTextCountry = (EditText) findViewById(R.id.editText_Country);
        this.textView3 = (LinearLayout) findViewById(R.id.textView3);
        this.txtPaasword = (TextView) findViewById(R.id.txt__Paasword);
        this.editTextPassword = (EditText) findViewById(R.id.editText_password);
        this.editTextConfirmPassword = (EditText) findViewById(R.id.editText_confirm_password);
        this.button = (Button) findViewById(R.id.button);
        this.textView4 = (TextView) findViewById(R.id.textView4);
        this.txtNewreg = (LinearLayout) findViewById(R.id.txt_newreg);
        this.facebookLoginButton = (Button) findViewById(R.id.facebook_login_button);
        this.googleLoginButton = (Button) findViewById(R.id.google_login_button);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_registration);
        this.datHandler = new DataHandler(getApplicationContext());
        this.connectionDetector = new ConnectionDetector(getApplicationContext());
        this.txt_Register = (TextView) findViewById(R.id.txt_Register);
        assignViews();
        this.txt_Register.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Registration.RegistrationActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RegistrationActivity.this.startActivity(new Intent(RegistrationActivity.this, (Class<?>) LoginActivity.class));
            }
        });
        this.button.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Registration.RegistrationActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RegistrationActivity registrationActivity = RegistrationActivity.this;
                registrationActivity.lStrUserName = registrationActivity.editTextName.getText().toString();
                RegistrationActivity registrationActivity2 = RegistrationActivity.this;
                registrationActivity2.lStrEmailID = registrationActivity2.editTextEmail.getText().toString();
                RegistrationActivity registrationActivity3 = RegistrationActivity.this;
                registrationActivity3.lStrCountry = registrationActivity3.editTextCountry.getText().toString();
                RegistrationActivity registrationActivity4 = RegistrationActivity.this;
                registrationActivity4.lStrPassword = registrationActivity4.editTextPassword.getText().toString();
                RegistrationActivity registrationActivity5 = RegistrationActivity.this;
                registrationActivity5.lStrConfirmPassword = registrationActivity5.editTextConfirmPassword.getText().toString();
                if (RegistrationActivity.this.lStrUserName.equalsIgnoreCase("")) {
                    RegistrationActivity.this.editTextName.setError("Enter FullName");
                    return;
                }
                if (RegistrationActivity.this.lStrEmailID.equalsIgnoreCase("")) {
                    RegistrationActivity.this.editTextName.setError(null);
                    RegistrationActivity.this.editTextEmail.setError("Enter EmailId");
                    return;
                }
                RegistrationActivity registrationActivity6 = RegistrationActivity.this;
                if (!registrationActivity6.isValidEmailId(registrationActivity6.lStrEmailID)) {
                    RegistrationActivity.this.editTextEmail.setError("Enter valid Email address !");
                    return;
                }
                if (RegistrationActivity.this.lStrCountry.equalsIgnoreCase("")) {
                    RegistrationActivity.this.editTextEmail.setError(null);
                    RegistrationActivity.this.editTextCountry.setError("Enter State/City/Country");
                    return;
                }
                if (RegistrationActivity.this.lStrPassword.equalsIgnoreCase("")) {
                    RegistrationActivity.this.editTextCountry.setError(null);
                    RegistrationActivity.this.editTextPassword.setError("Enter Password");
                    return;
                }
                if (RegistrationActivity.this.lStrConfirmPassword.equalsIgnoreCase("")) {
                    RegistrationActivity.this.editTextPassword.setError(null);
                    RegistrationActivity.this.editTextConfirmPassword.setError("Enter Confirm Password");
                    return;
                }
                if (!RegistrationActivity.this.lStrConfirmPassword.equalsIgnoreCase(RegistrationActivity.this.lStrPassword)) {
                    RegistrationActivity.this.editTextPassword.setError(null);
                    RegistrationActivity.this.editTextPassword.setError("Password & Confirm Password Missmatch");
                    RegistrationActivity.this.editTextConfirmPassword.setError("Password & Confirm Password Missmatch");
                    Toast.makeText(RegistrationActivity.this.getApplicationContext(), "Password & Confirm Password Missmatch", 0).show();
                    return;
                }
                if (RegistrationActivity.this.connectionDetector.isConnectingToInternet()) {
                    RegistrationActivity.this.startActivity(new Intent(RegistrationActivity.this, (Class<?>) MainActivity.class));
                    RegistrationActivity.this.finish();
                    Toast.makeText(RegistrationActivity.this.getApplicationContext(), "WELCOME TO " + RegistrationActivity.this.getString(R.string.app_name).toUpperCase() + " APPLICATION", 0).show();
                    return;
                }
                Toast.makeText(RegistrationActivity.this.getApplicationContext(), RegistrationActivity.this.getResources().getString(R.string.no_internet), 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidEmailId(String str) {
        return Pattern.compile("^(([\\w-]+\\.)+[\\w-]+|([a-zA-Z]{1}|[\\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z]+[\\w-]+\\.)+[a-zA-Z]{2,4})$").matcher(str).matches();
    }
}
