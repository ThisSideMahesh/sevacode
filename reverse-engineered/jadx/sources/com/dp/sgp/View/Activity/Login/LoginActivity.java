package com.dp.sgp.View.Activity.Login;

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
import com.dp.sgp.View.Activity.ForgotPassword.ForgotPasswordActivity;
import com.dp.sgp.View.Activity.Home.MainActivity;
import com.dp.sgp.View.Activity.Registration.RegistrationActivity;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class LoginActivity extends AppCompatActivity {
    private Button button;
    private ConnectionDetector connectionDetector;
    private DataHandler datHandler;
    private EditText edit_Email;
    private EditText edit_Password;
    private Button facebookLoginButton;
    private Button googleLoginButton;
    private ImageView imageView;
    private ImageView textView;
    private TextView textView2;
    private TextView textView3;
    private TextView textView4;
    private LinearLayout txtNewreg;
    TextView txt_Register;
    String lStrUserName = "";
    String lStrEmailID = "";
    String lStrCountry = "";
    String lStrPassword = "";
    String lStrConfirmPassword = "";

    private void assignViews() {
        this.textView = (ImageView) findViewById(R.id.textView);
        this.textView2 = (TextView) findViewById(R.id.textView2);
        this.imageView = (ImageView) findViewById(R.id.imageView);
        this.edit_Email = (EditText) findViewById(R.id.editText_name);
        this.edit_Password = (EditText) findViewById(R.id.editText_email);
        this.textView3 = (TextView) findViewById(R.id.textView3);
        this.button = (Button) findViewById(R.id.button);
        this.textView4 = (TextView) findViewById(R.id.textView4);
        this.txtNewreg = (LinearLayout) findViewById(R.id.txt_newreg);
        this.facebookLoginButton = (Button) findViewById(R.id.facebook_login_button);
        this.googleLoginButton = (Button) findViewById(R.id.google_login_button);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_login);
        this.datHandler = new DataHandler(getApplicationContext());
        this.connectionDetector = new ConnectionDetector(getApplicationContext());
        this.txt_Register = (TextView) findViewById(R.id.txt_Register);
        assignViews();
        this.textView3.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.LoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LoginActivity.this.startActivity(new Intent(LoginActivity.this, (Class<?>) ForgotPasswordActivity.class));
            }
        });
        this.txt_Register.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.LoginActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LoginActivity.this.startActivity(new Intent(LoginActivity.this, (Class<?>) RegistrationActivity.class));
            }
        });
        this.button.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.LoginActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LoginActivity loginActivity = LoginActivity.this;
                loginActivity.lStrEmailID = loginActivity.edit_Email.getText().toString();
                LoginActivity loginActivity2 = LoginActivity.this;
                loginActivity2.lStrPassword = loginActivity2.edit_Password.getText().toString();
                if (LoginActivity.this.lStrEmailID.equalsIgnoreCase("")) {
                    LoginActivity.this.edit_Email.setError("Enter EmailId");
                    return;
                }
                LoginActivity loginActivity3 = LoginActivity.this;
                if (!loginActivity3.isValidEmailId(loginActivity3.lStrEmailID)) {
                    LoginActivity.this.edit_Email.setError("Enter valid Email address !");
                    return;
                }
                if (LoginActivity.this.lStrPassword.equalsIgnoreCase("")) {
                    LoginActivity.this.edit_Email.setError(null);
                    LoginActivity.this.edit_Password.setError("Enter Password");
                    return;
                }
                LoginActivity.this.edit_Email.setError(null);
                LoginActivity.this.edit_Password.setError(null);
                if (LoginActivity.this.connectionDetector.isConnectingToInternet()) {
                    LoginActivity.this.startActivity(new Intent(LoginActivity.this, (Class<?>) MainActivity.class));
                    LoginActivity.this.finish();
                    Toast.makeText(LoginActivity.this.getApplicationContext(), "WELCOME TO " + LoginActivity.this.getString(R.string.app_name).toUpperCase() + " APPLICATION", 0).show();
                    return;
                }
                Toast.makeText(LoginActivity.this.getApplicationContext(), LoginActivity.this.getResources().getString(R.string.no_internet), 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidEmailId(String str) {
        return Pattern.compile("^(([\\w-]+\\.)+[\\w-]+|([a-zA-Z]{1}|[\\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z]+[\\w-]+\\.)+[a-zA-Z]{2,4})$").matcher(str).matches();
    }
}
