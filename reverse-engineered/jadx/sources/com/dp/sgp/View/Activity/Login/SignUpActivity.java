package com.dp.sgp.View.Activity.Login;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Registration.RegistrationActivity;

/* JADX INFO: loaded from: classes.dex */
public class SignUpActivity extends AppCompatActivity {
    private Button btnRegister;
    private Button btnSignIn;
    private ImageView introImg;

    private void assignViews() {
        this.btnSignIn = (Button) findViewById(R.id.btn_Sign_in);
        this.btnRegister = (Button) findViewById(R.id.btn_register);
        this.introImg = (ImageView) findViewById(R.id.intro_img);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_sign_up);
        assignViews();
        this.btnRegister.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.SignUpActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SignUpActivity.this.startActivity(new Intent(SignUpActivity.this.getApplicationContext(), (Class<?>) RegistrationActivity.class));
            }
        });
        this.btnSignIn.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.Login.SignUpActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SignUpActivity.this.startActivity(new Intent(SignUpActivity.this.getApplicationContext(), (Class<?>) NewLoginActivity.class));
            }
        });
    }
}
