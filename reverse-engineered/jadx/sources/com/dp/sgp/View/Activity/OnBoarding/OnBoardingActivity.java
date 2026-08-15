package com.dp.sgp.View.Activity.OnBoarding;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import com.dp.sgp.Adapters.IntroViewPagerAdapter;
import com.dp.sgp.Model.ScreenItem;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Splash.SplashScreenActivity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class OnBoardingActivity extends AppCompatActivity {
    Animation btnAnim;
    Button btnGetStarted;
    Button btnSkip;
    IntroViewPagerAdapter introViewPagerAdapter;
    private ViewPager screenPager;
    TabLayout tabIndicator;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if (restorePrefData()) {
            startActivity(new Intent(getApplicationContext(), (Class<?>) SplashScreenActivity.class));
            finish();
        }
        setContentView(R.layout.activity_on_boarding);
        this.btnSkip = (Button) findViewById(R.id.btn_skip);
        this.btnGetStarted = (Button) findViewById(R.id.btn_get_started);
        this.tabIndicator = (TabLayout) findViewById(R.id.tab_indicator);
        this.btnAnim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.button_animation);
        final ArrayList arrayList = new ArrayList();
        arrayList.add(new ScreenItem("दिंडोरी प्रणीत श्री स्वामी समर्थ सेवा मार्ग\nगुरुप्रणाली", "धर्म संस्थापना कारणे । युगायुगी अवतार घेणे ।\nनानाविध वेष नटणें । जगत्पतींचे कर्तव्य ॥", R.drawable.im_one));
        arrayList.add(new ScreenItem("सेवा मार्गातील १८ समाजपयोगी विभाग", "मानवाच्या समृध्द जीवनासाठी सेवा मार्गाचे १८ ग्राम व नागरी विकास अभियानातून समस्याग्रस्त, आर्त पिडित व्यक्तींना मार्गदर्शन व सुसंस्कारीत, नितीमुल्यसंपन्न पिढीच्या निर्मिर्तीसाठी संस्कार चळवळ, विषमुक्त  अन्ननिर्मितीसाठी सेंद्रिय शेती, अध्यात्म आणि विज्ञानाची सांगड घालणारे  वास्तुशास्त्र, निरोगी स्वास्थासाठी आयुर्वेद अभियान यासारख्या १८ विविध  विभागातून समाजकल्याणाचे कार्य परमपूज्य गुरुमाऊलींच्या मार्गदर्शनाने  सुरु आहे.\n", R.drawable.im_two));
        arrayList.add(new ScreenItem("ऑनलाईन साहित्य", "सेवा मार्गातील ग्रंथ, मुद्रण, कृषीधन साहित्य \nतसेच आयुर्वेद साहित्य घरपोच मिळविण्यासाठी\nbesatvik.com या वेबसाईटला आवश्य भेट द्या.", R.drawable.im_three));
        arrayList.add(new ScreenItem("अखिल भारतीय श्री स्वामी समर्थ  गुरुपीठ,\n श्री क्षेत्र त्र्यंबकेश्वर, नाशिक", "दिंडोरी प्रणीत सेवा मार्ग, दिनदर्शिका, अब्जचंडी सेवा नोंद, विविध सामाजिक उपक्रम,  दत्तधाम, सणवार उत्सव अजून बरेच काही\n", R.drawable.im_four));
        this.screenPager = (ViewPager) findViewById(R.id.screen_viewpager);
        IntroViewPagerAdapter introViewPagerAdapter = new IntroViewPagerAdapter(this, arrayList);
        this.introViewPagerAdapter = introViewPagerAdapter;
        this.screenPager.setAdapter(introViewPagerAdapter);
        this.tabIndicator.setupWithViewPager(this.screenPager);
        this.btnSkip.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.OnBoarding.OnBoardingActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnBoardingActivity.this.screenPager.setCurrentItem(arrayList.size());
            }
        });
        this.tabIndicator.addOnTabSelectedListener(new TabLayout.BaseOnTabSelectedListener() { // from class: com.dp.sgp.View.Activity.OnBoarding.OnBoardingActivity.2
            @Override // android.support.design.widget.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }

            @Override // android.support.design.widget.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // android.support.design.widget.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                if (tab.getPosition() == arrayList.size() - 1) {
                    OnBoardingActivity.this.loadLastScreen();
                }
            }
        });
        this.btnGetStarted.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Activity.OnBoarding.OnBoardingActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnBoardingActivity.this.startActivity(new Intent(OnBoardingActivity.this.getApplicationContext(), (Class<?>) SplashScreenActivity.class));
                OnBoardingActivity.this.savePrefsData();
                OnBoardingActivity.this.finish();
            }
        });
    }

    private boolean restorePrefData() {
        return Boolean.valueOf(getApplicationContext().getSharedPreferences("myPrefs", 0).getBoolean("isIntroOpened", false)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void savePrefsData() {
        SharedPreferences.Editor editorEdit = getApplicationContext().getSharedPreferences("myPrefs", 0).edit();
        editorEdit.putBoolean("isIntroOpened", true);
        editorEdit.apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadLastScreen() {
        this.btnSkip.setVisibility(4);
        this.btnGetStarted.setVisibility(0);
        this.tabIndicator.setVisibility(4);
        this.btnGetStarted.setAnimation(this.btnAnim);
    }
}
