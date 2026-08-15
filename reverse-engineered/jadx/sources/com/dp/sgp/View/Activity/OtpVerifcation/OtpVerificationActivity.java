package com.dp.sgp.View.Activity.OtpVerifcation;

import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Home.BaseActivity;
import com.dp.sgp.View.Activity.ResetPassword.ResetSucessActivity;
import com.dp.sgp.util.GenericTextWatcher;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class OtpVerificationActivity extends BaseActivity {
    private static CountDownTimer countDownTimer;
    private static TextView countdownTimerText;
    Button btnVerify;
    private ConnectionDetector connectionDetector;
    private DataHandler datHandler;
    private EditText otpEditBox1;
    private EditText otpEditBox2;
    private EditText otpEditBox3;
    private EditText otpEditBox4;
    TextView tvTSubitle;
    String lStrUserName = "";
    String lStrEmailID = "";
    String lStrCountry = "";
    String lStrPassword = "";
    String lStrConfirmPassword = "";
    private String otp = "";
    private String lStrSendOtp = "";
    private String lStrToken = "";

    @Override // com.dp.sgp.View.Activity.Home.BaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_otp_verification);
        setHeader("Verify Code ", true, true);
        this.datHandler = new DataHandler(getApplicationContext());
        this.connectionDetector = new ConnectionDetector(getApplicationContext());
        this.otpEditBox1 = (EditText) findViewById(R.id.otp_edit_box1);
        this.otpEditBox2 = (EditText) findViewById(R.id.otp_edit_box2);
        this.otpEditBox3 = (EditText) findViewById(R.id.otp_edit_box3);
        this.otpEditBox4 = (EditText) findViewById(R.id.otp_edit_box4);
        countdownTimerText = (TextView) findViewById(R.id.tv_timer);
        this.tvTSubitle = (TextView) findViewById(R.id.tvTSubitle);
        this.lStrEmailID = this.datHandler.getData("email");
        this.tvTSubitle.setText("Please type the verification code \n sent to registerd email id " + this.lStrEmailID);
        this.btnVerify = (Button) findViewById(R.id.btnVerify);
        if (countDownTimer == null) {
            startTimer(Integer.parseInt("1") * 60 * 1000);
        } else {
            stopCountdown();
        }
        EditText editText = this.otpEditBox1;
        final EditText[] editTextArr = {editText, this.otpEditBox2, this.otpEditBox3, this.otpEditBox4};
        editText.addTextChangedListener(new GenericTextWatcher(this.otpEditBox1, editTextArr));
        this.otpEditBox2.addTextChangedListener(new GenericTextWatcher(this.otpEditBox2, editTextArr));
        this.otpEditBox3.addTextChangedListener(new GenericTextWatcher(this.otpEditBox3, editTextArr));
        this.otpEditBox4.addTextChangedListener(new GenericTextWatcher(this.otpEditBox4, editTextArr));
        this.otpEditBox1.addTextChangedListener(new TextWatcher() { // from class: com.dp.sgp.View.Activity.OtpVerifcation.OtpVerificationActivity.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 1) {
                    OtpVerificationActivity.this.otpEditBox2.requestFocus();
                }
            }
        });
        this.otpEditBox2.addTextChangedListener(new TextWatcher() { // from class: com.dp.sgp.View.Activity.OtpVerifcation.OtpVerificationActivity.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 1) {
                    OtpVerificationActivity.this.otpEditBox3.requestFocus();
                }
            }
        });
        this.otpEditBox3.addTextChangedListener(new TextWatcher() { // from class: com.dp.sgp.View.Activity.OtpVerifcation.OtpVerificationActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 1) {
                    OtpVerificationActivity.this.otpEditBox4.requestFocus();
                }
            }
        });
        this.btnVerify.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.OtpVerifcation.OtpVerificationActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (editTextArr.length == 4) {
                    OtpVerificationActivity.this.otp = OtpVerificationActivity.this.otpEditBox1.getText().toString().trim() + OtpVerificationActivity.this.otpEditBox2.getText().toString().trim() + OtpVerificationActivity.this.otpEditBox3.getText().toString().trim() + OtpVerificationActivity.this.otpEditBox4.getText().toString().trim();
                    if (OtpVerificationActivity.this.otp.isEmpty()) {
                        Toast.makeText(OtpVerificationActivity.this.getApplicationContext(), "Please Enter OTP", 0).show();
                        return;
                    }
                    if (OtpVerificationActivity.this.otp.length() > 3) {
                        OtpVerificationActivity otpVerificationActivity = OtpVerificationActivity.this;
                        otpVerificationActivity.lStrSendOtp = otpVerificationActivity.otp;
                        OtpVerificationActivity.this.startActivity(new Intent(OtpVerificationActivity.this, (Class<?>) ResetSucessActivity.class));
                        Toast.makeText(OtpVerificationActivity.this.getApplicationContext(), "OTP Verified Sucessfully", 0).show();
                        return;
                    }
                    Toast.makeText(OtpVerificationActivity.this.getApplicationContext(), "Please Enter All Numbers In Boxes", 0).show();
                }
            }
        });
    }

    private void stopCountdown() {
        CountDownTimer countDownTimer2 = countDownTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
            countDownTimer = null;
        }
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [com.dp.sgp.View.Activity.OtpVerifcation.OtpVerificationActivity$5] */
    private void startTimer(int i) {
        countDownTimer = new CountDownTimer(i, 1000L) { // from class: com.dp.sgp.View.Activity.OtpVerifcation.OtpVerificationActivity.5
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                OtpVerificationActivity.countdownTimerText.setText(String.format("%02d:%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(j)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(j))), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j)))));
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                OtpVerificationActivity.countdownTimerText.setText("TIME'S UP!!");
                CountDownTimer unused = OtpVerificationActivity.countDownTimer = null;
            }
        }.start();
    }
}
