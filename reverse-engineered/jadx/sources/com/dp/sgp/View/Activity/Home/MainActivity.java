package com.dp.sgp.View.Activity.Home;

import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.design.widget.BottomNavigationView;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.NavigationView;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.text.SpannableString;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.CustomTypefaceSpan.CustomTypefaceSpan;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Login.CountryLoginActivity;
import com.dp.sgp.View.Activity.Login.NewLoginActivity;
import com.dp.sgp.View.Activity.Mantra.MantraJapActivity;
import com.dp.sgp.View.Activity.Notification.NotificationActivity;
import com.dp.sgp.View.Fragment.BottomMenu.AboutusFragment;
import com.dp.sgp.View.Fragment.BottomMenu.NityasevaFragment;
import com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment;
import com.dp.sgp.View.Fragment.BottomMenu.UpkramFragment;
import com.dp.sgp.View.Fragment.ContactUs.ContactUsTabFragment;
import com.dp.sgp.View.Fragment.Details.AboutUsDeatilsFragment;
import com.dp.sgp.View.Fragment.HomeFragmenFragment;
import com.dp.sgp.View.Fragment.NityaSevaDetails.AartiSangrahaFragment;
import com.dp.sgp.View.Fragment.NityaSevaDetails.AbhjaChandiFragment;
import com.dp.sgp.View.Fragment.NityaSevaDetails.NityaMenuFragment;
import com.dp.sgp.View.Fragment.NityaSevaDetails.SanvarFragment;
import com.dp.sgp.View.Fragment.SwamiCharitra.NityaSevaMenuFragment;
import com.dp.sgp.View.Fragment.YoutubeTab.YoutubeTabssFragment;
import com.dp.sgp.iOSDialog.iOSDialog;
import com.dp.sgp.iOSDialog.iOSDialogBuilder;
import com.dp.sgp.iOSDialog.iOSDialogClickListener;
import com.dp.sgp.util.BottomNavigationBehavior;
import com.google.android.gms.common.Scopes;
import de.hdodenhof.circleimageview.CircleImageView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener {
    private static final int MODE_DARK = 0;
    private static final int MODE_LIGHT = 1;
    public static final int MULTIPLE_PERMISSIONS = 10;
    private BottomNavigationView bottomNavigationView;
    private DataHandler datHandler;
    ImageView floatingActionButton;
    private FragmentManager fragmentManager;
    ImageView img_logout;
    private ProgressDialog pdialog;
    CircleImageView profileCircleImageView;
    TextView textViewUser;
    FragmentTransaction transaction;
    String[] permissions = {"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.CAMERA", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};
    String Token = "";
    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: com.dp.sgp.View.Activity.Home.MainActivity.1
        @Override // android.support.design.widget.BottomNavigationView.OnNavigationItemSelectedListener
        public boolean onNavigationItemSelected(MenuItem menuItem) {
            switch (menuItem.getItemId()) {
                case R.id.navigationAboutUs /* 2131362090 */:
                    MainActivity.this.loadFragment(new AboutusFragment());
                    return true;
                case R.id.navigationMenu /* 2131362091 */:
                    MainActivity.this.loadFragment(new HomeFragmenFragment());
                    return true;
                case R.id.navigationNityaseva /* 2131362092 */:
                    MainActivity.this.loadFragment(new NityasevaFragment());
                    return true;
                case R.id.navigationProducts /* 2131362093 */:
                    MainActivity.this.loadFragment(new ProductsFragment());
                    return true;
                case R.id.navigationUpkram /* 2131362094 */:
                    MainActivity.this.loadFragment(new UpkramFragment());
                    return true;
                default:
                    return false;
            }
        }
    };
    Fragment fragment = null;
    private int hot_number = 0;
    private TextView ui_hot = null;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_main);
        this.datHandler = new DataHandler(getApplicationContext());
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        DrawerLayout drawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(this, drawerLayout, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawerLayout.addDrawerListener(actionBarDrawerToggle);
        actionBarDrawerToggle.syncState();
        NavigationView navigationView = (NavigationView) findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);
        View viewInflateHeaderView = navigationView.inflateHeaderView(R.layout.nav_header_main);
        BottomNavigationView bottomNavigationView = (BottomNavigationView) findViewById(R.id.navigation);
        this.bottomNavigationView = bottomNavigationView;
        bottomNavigationView.setOnNavigationItemSelectedListener(this.mOnNavigationItemSelectedListener);
        ((CoordinatorLayout.LayoutParams) this.bottomNavigationView.getLayoutParams()).setBehavior(new BottomNavigationBehavior());
        this.bottomNavigationView.setSelectedItemId(R.id.navigationMenu);
        Menu menu = this.bottomNavigationView.getMenu();
        for (int i = 0; i < menu.size(); i++) {
            MenuItem item = menu.getItem(i);
            SubMenu subMenu = item.getSubMenu();
            if (subMenu != null && subMenu.size() > 0) {
                for (int i2 = 0; i2 < subMenu.size(); i2++) {
                    applyFontToMenuItem(subMenu.getItem(i2));
                }
            }
            applyFontToMenuItem(item);
        }
        Menu menu2 = navigationView.getMenu();
        for (int i3 = 0; i3 < menu2.size(); i3++) {
            MenuItem item2 = menu2.getItem(i3);
            SubMenu subMenu2 = item2.getSubMenu();
            if (subMenu2 != null && subMenu2.size() > 0) {
                for (int i4 = 0; i4 < subMenu2.size(); i4++) {
                    applyFontToMenuItem(subMenu2.getItem(i4));
                }
            }
            applyFontToMenuItem(item2);
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        this.fragmentManager = supportFragmentManager;
        this.transaction = supportFragmentManager.beginTransaction();
        HomeFragmenFragment homeFragmenFragment = new HomeFragmenFragment();
        this.fragment = homeFragmenFragment;
        this.transaction.replace(R.id.frame_container, homeFragmenFragment).addToBackStack(HomeFragmenFragment.NAME).commit();
    }

    private void updateNavigationBarState(int i) {
        Menu menu = this.bottomNavigationView.getMenu();
        int size = menu.size();
        for (int i2 = 0; i2 < size; i2++) {
            menu.getItem(i2);
        }
    }

    @Override // android.support.design.widget.NavigationView.OnNavigationItemSelectedListener
    public boolean onNavigationItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.nav_home) {
            Bundle bundle = new Bundle();
            bundle.putString(Key.MESSAGE, "दिंडोरी प्रणित सेवा मार्ग");
            bundle.putString("subtitle", "दिंडोरी प्रणित सेवा मार्ग");
            bundle.putString("pos", "2");
            AboutUsDeatilsFragment aboutUsDeatilsFragment = new AboutUsDeatilsFragment();
            this.fragment = aboutUsDeatilsFragment;
            aboutUsDeatilsFragment.setArguments(bundle);
            loadFragment(this.fragment);
        } else if (itemId == R.id.nav_mainhome) {
            HomeFragmenFragment homeFragmenFragment = new HomeFragmenFragment();
            this.fragment = homeFragmenFragment;
            loadFragment(homeFragmenFragment);
        } else if (itemId == R.id.nav_My_Courses) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(Key.MESSAGE, "श्री गुरुपीठ");
            bundle2.putString("subtitle", "श्री गुरुपीठ");
            bundle2.putString("pos", "1");
            AboutUsDeatilsFragment aboutUsDeatilsFragment2 = new AboutUsDeatilsFragment();
            this.fragment = aboutUsDeatilsFragment2;
            aboutUsDeatilsFragment2.setArguments(bundle2);
            loadFragment(this.fragment);
        } else if (itemId == R.id.nav_My_Assesment) {
            Bundle bundle3 = new Bundle();
            bundle3.putString(Key.MESSAGE, "गुरुप्रणाली");
            bundle3.putString("subtitle", "गुरुप्रणाली");
            bundle3.putString("pos", "3");
            AboutUsDeatilsFragment aboutUsDeatilsFragment3 = new AboutUsDeatilsFragment();
            this.fragment = aboutUsDeatilsFragment3;
            aboutUsDeatilsFragment3.setArguments(bundle3);
            loadFragment(this.fragment);
        } else if (itemId != R.id.nav_Audio_Video && itemId != R.id.nav_Knowledge_Center) {
            if (itemId == R.id.nav_Expression) {
                startActivity(new Intent(this, (Class<?>) CalTestActivity.class));
            } else if (itemId == R.id.nav_sanvar) {
                Bundle bundle4 = new Bundle();
                bundle4.putString(Key.MESSAGE, "सणवार");
                SanvarFragment sanvarFragment = new SanvarFragment();
                this.fragment = sanvarFragment;
                sanvarFragment.setArguments(bundle4);
                loadFragment(this.fragment);
            } else if (itemId == R.id.nav_Open_House) {
                Bundle bundle5 = new Bundle();
                bundle5.putString(Key.MESSAGE, "अब्जचंडी");
                AbhjaChandiFragment abhjaChandiFragment = new AbhjaChandiFragment();
                this.fragment = abhjaChandiFragment;
                abhjaChandiFragment.setArguments(bundle5);
                loadFragment(this.fragment);
            } else if (itemId == R.id.nav_Cooming_Soon) {
                YoutubeTabssFragment youtubeTabssFragment = new YoutubeTabssFragment();
                this.fragment = youtubeTabssFragment;
                loadFragment(youtubeTabssFragment);
            } else if (itemId == R.id.nav_Survey) {
                Bundle bundle6 = new Bundle();
                bundle6.putString(Key.MESSAGE, "अब्जचंडी");
                AbhjaChandiFragment abhjaChandiFragment2 = new AbhjaChandiFragment();
                this.fragment = abhjaChandiFragment2;
                abhjaChandiFragment2.setArguments(bundle6);
                loadFragment(this.fragment);
            } else if (itemId == R.id.nav_Previous) {
                Bundle bundle7 = new Bundle();
                bundle7.putString(Key.MESSAGE, "आरती संग्रह");
                AartiSangrahaFragment aartiSangrahaFragment = new AartiSangrahaFragment();
                this.fragment = aartiSangrahaFragment;
                aartiSangrahaFragment.setArguments(bundle7);
                loadFragment(this.fragment);
            } else if (itemId == R.id.nav_Performance) {
                Bundle bundle8 = new Bundle();
                bundle8.putString(Key.MESSAGE, "नित्यसेवा");
                NityaMenuFragment nityaMenuFragment = new NityaMenuFragment();
                this.fragment = nityaMenuFragment;
                nityaMenuFragment.setArguments(bundle8);
                loadFragment(this.fragment);
            } else if (itemId == R.id.nav_Notification) {
                Bundle bundle9 = new Bundle();
                bundle9.putString(Key.MESSAGE, "श्री स्वामी चरित्र");
                NityaSevaMenuFragment nityaSevaMenuFragment = new NityaSevaMenuFragment();
                this.fragment = nityaSevaMenuFragment;
                nityaSevaMenuFragment.setArguments(bundle9);
                loadFragment(this.fragment);
            } else if (itemId == R.id.nav_Profile) {
                startActivity(new Intent(this, (Class<?>) MantraJapActivity.class));
            } else if (itemId == R.id.nav_contact) {
                ContactUsTabFragment contactUsTabFragment = new ContactUsTabFragment();
                this.fragment = contactUsTabFragment;
                loadFragment(contactUsTabFragment);
            } else if (itemId == R.id.nav_Logout) {
                Popup();
            }
        }
        ((DrawerLayout) findViewById(R.id.drawer_layout)).closeDrawer(GravityCompat.START);
        return true;
    }

    private void applyFontToMenuItem(MenuItem menuItem) {
        Typeface typefaceCreateFromAsset = Typeface.createFromAsset(getAssets(), "poppins_regular.otf");
        SpannableString spannableString = new SpannableString(menuItem.getTitle());
        spannableString.setSpan(new CustomTypefaceSpan("", typefaceCreateFromAsset), 0, spannableString.length(), 18);
        menuItem.setTitle(spannableString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadFragment(Fragment fragment) {
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        this.transaction = fragmentTransactionBeginTransaction;
        fragmentTransactionBeginTransaction.replace(R.id.frame_container, fragment);
        this.transaction.addToBackStack(null);
        this.transaction.commit();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_hotlist) {
            startActivity(new Intent(this, (Class<?>) NotificationActivity.class));
            finish();
            return true;
        }
        if (itemId == R.id.menu_logout) {
            Popup();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        invalidateOptionsMenu();
        DrawerLayout drawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        if (drawerLayout.isDrawerOpen(GravityCompat.START)) {
            drawerLayout.closeDrawer(GravityCompat.START);
            return;
        }
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

    private boolean checkPermissions() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.permissions) {
            if (ContextCompat.checkSelfPermission(getApplicationContext(), str) != 0) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[arrayList.size()]), 10);
        return false;
    }

    public void Popup() {
        new iOSDialogBuilder(this).setTitle("श्री गुरुपीठ त्र्यंबकेश्वर").setSubtitle("तुम्हाला खात्री आहे का तुम्ही एप्लीकेशनच्या बाहेर पडत आहात ?").setBoldPositiveLabel(true).setCancelable(false).setPositiveListener("होय", new iOSDialogClickListener() { // from class: com.dp.sgp.View.Activity.Home.MainActivity.3
            @Override // com.dp.sgp.iOSDialog.iOSDialogClickListener
            public void onClick(iOSDialog iosdialog) {
                MainActivity.this.datHandler.addData(Key.TOKEN, "");
                MainActivity.this.datHandler.addData("Mobile", "");
                MainActivity.this.datHandler.addData(Key.OTP, "");
                MainActivity.this.datHandler.addData(Scopes.PROFILE, "");
                MainActivity.this.datHandler.addData("lang", "");
                if (MainActivity.this.datHandler.getData("DialingCode").equalsIgnoreCase("91")) {
                    MainActivity.this.startActivity(new Intent(MainActivity.this, (Class<?>) NewLoginActivity.class));
                    MainActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                    MainActivity.this.finish();
                } else {
                    MainActivity.this.startActivity(new Intent(MainActivity.this, (Class<?>) CountryLoginActivity.class));
                    MainActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                    MainActivity.this.finish();
                }
                Toast.makeText(MainActivity.this, "Loggout Sucesfully", 0).show();
                iosdialog.dismiss();
            }
        }).setNegativeListener("नाही", new iOSDialogClickListener() { // from class: com.dp.sgp.View.Activity.Home.MainActivity.2
            @Override // com.dp.sgp.iOSDialog.iOSDialogClickListener
            public void onClick(iOSDialog iosdialog) {
                iosdialog.dismiss();
            }
        }).build().show();
    }
}
