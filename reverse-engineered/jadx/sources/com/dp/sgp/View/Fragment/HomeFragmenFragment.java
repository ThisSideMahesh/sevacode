package com.dp.sgp.View.Fragment;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.Adapters.NewVibhagAdapter;
import com.dp.sgp.Adapters.SliderAdapterExample;
import com.dp.sgp.Adapters.YoutubeVideoAdapter;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.HomeResponse.Banner;
import com.dp.sgp.Model.HomeResponse.HomeData;
import com.dp.sgp.Model.HomeResponse.HomeResponse;
import com.dp.sgp.Model.HomeResponse.Panchang;
import com.dp.sgp.Model.HomeResponse.SendHomeBody;
import com.dp.sgp.Model.HomeResponse.Sevamarg;
import com.dp.sgp.Model.HomeResponse.Suvichar;
import com.dp.sgp.Model.HomeResponse.Vibhag;
import com.dp.sgp.Model.HomeResponse.Youtube;
import com.dp.sgp.Model.Profile;
import com.dp.sgp.Model.YoutubeResponse;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.dp.sgp.View.Activity.Youtube.YoutubeWebviewActivity;
import com.dp.sgp.View.Fragment.Details.ImageDetailsFragment;
import com.dp.sgp.View.Fragment.Details.VibaghDetailsViewFragment;
import com.dp.sgp.View.Fragment.NityaSevaDetails.AbhjaChandiFragment;
import com.dp.sgp.View.Fragment.Vibhag.VibaghFragment;
import com.dp.sgp.View.Fragment.Youtube.YoutubeGridFragment;
import com.dp.sgp.View.Fragment.YoutubeTab.DindoriYoutubeGridFragment;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.IndicatorAnimationType;
import com.dp.sgp.autoimageslider.IndicatorView.draw.controller.DrawController;
import com.dp.sgp.autoimageslider.SliderAnimations;
import com.dp.sgp.autoimageslider.SliderView;
import com.dp.sgp.database.DatabaseHelperClass;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class HomeFragmenFragment extends Fragment implements SliderAdapterExample.OnItemClickedListner {
    public static final String NAME = "HomeFragmenFragment";
    GridView androidGridView;
    HomeData data;
    DataHandler dataHandler;
    private RecyclerView dindori_youtube_horizontalrecyclerView;
    YoutubeResponse dindoriyoutubeResponse;
    TextView dinvishesh;
    private FragmentManager fragmentManager;
    HomeResponse homeResponse;
    String message;
    NewVibhagAdapter newVibhagAdapter;
    private RecyclerView recyclerView;
    private RecyclerView rv_popular_video_content;
    SendHomeBody sendHomeBody;
    private SliderAdapterExample sliderAdapterExample;
    SliderView sliderView;
    String status;
    FragmentTransaction transaction;
    TextView tv_added_on_sevamarg;
    TextView tv_ashle;
    TextView tv_bhadrapad;
    TextView tv_datetime;
    TextView tv_desc_suvichar;
    TextView tv_description_sevamarg;
    TextView tv_dindori_see_all;
    TextView tv_krishnakunj;
    TextView tv_nakshatra;
    TextView tv_panchangs_title;
    TextView tv_rahukal;
    TextView tv_see_all;
    TextView tv_shubharambh;
    TextView tv_tithi;
    TextView tv_title_sevamarg;
    TextView tv_title_suvichar;
    TextView tv_var;
    TextView tv_vibhag_see_all;
    TextView txt_Weather;
    TextView txt_maal_count;
    TextView txt_seva_nav;
    View v;
    YoutubeVideoAdapter youtubeVideoAdapter;
    String[] gridViewString = {"सर्वत लोकप्रिय", "संपूर्ण पहा", "पूजा साहित्य", "संपूर्ण पहा", "आयुर्वेद", "संपूर्ण पहा"};
    String[] VibhaggridViewString = {"प्रश्नोत्तर", "गर्भसंस्कार ", "बालसंस्कार", "युवा प्रबोधन", "आय टी", "पर्यावरण", "भारतीय संस्कृती", "विवाहसंस्कार", "वेद संशोधन", "प्रशिक्षण", "प्रशासकिय", "स्वयंरोजगार", "प्रचार प्रसार", "वास्तुशास्त्र", "कृषी व पशुगोवंश", "आयुर्वेदिक", "कायदेविषयक", "देशविदेश"};
    Fragment fragment = null;
    private List<Banner> productsbanners = null;
    int[] VibhaggridViewImageId = {R.drawable.ic_ic_prashna, R.drawable.ic_ic_garbhsanskar, R.drawable.ic_ic_balsanskar, R.drawable.ic_ic_yuva, R.drawable.ic_ic_it, R.drawable.ic_ic_paryavaran, R.drawable.ic_ic_sanskruti, R.drawable.ic_ic_vivah, R.drawable.ic_ic_ved, R.drawable.ic_ic_prashikshan, R.drawable.ic_ic_prashaskiy, R.drawable.ic_ic_rojgar, R.drawable.ic_ic_prachar, R.drawable.ic_ic_vastu, R.drawable.ic_ic_krushi, R.drawable.ic_ic_ayurvedik, R.drawable.ic_ic_kayda, R.drawable.ic_ic_deshvidesh};
    String device_token = "";
    String user_id = "";
    List<Panchang> panchangs = null;
    List<Sevamarg> sevamarg = null;
    List<Youtube> youtubelist = null;
    List<Youtube> dindoriyoutubelist = null;
    List<Banner> banners = null;
    List<Suvichar> suvichar = null;
    List<Vibhag> vibhag = null;
    List<Profile> profile = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.home_content_main, viewGroup, false);
        getActivity().setTitle("श्री गुरुपीठ त्र्यंबकेश्वर");
        this.homeResponse = new HomeResponse();
        this.dindoriyoutubeResponse = new YoutubeResponse();
        this.tv_desc_suvichar = (TextView) this.v.findViewById(R.id.tv_desc_suvichar);
        this.tv_title_suvichar = (TextView) this.v.findViewById(R.id.tv_title_suvichar);
        this.tv_see_all = (TextView) this.v.findViewById(R.id.tv_see_all);
        this.tv_vibhag_see_all = (TextView) this.v.findViewById(R.id.tv_vibhag_see_all);
        this.txt_Weather = (TextView) this.v.findViewById(R.id.txt_Weather);
        this.tv_added_on_sevamarg = (TextView) this.v.findViewById(R.id.tv_added_on_sevamarg);
        this.tv_description_sevamarg = (TextView) this.v.findViewById(R.id.tv_description_sevamarg);
        this.tv_title_sevamarg = (TextView) this.v.findViewById(R.id.tv_title_sevamarg);
        this.txt_maal_count = (TextView) this.v.findViewById(R.id.txt_maal_count);
        this.txt_seva_nav = (TextView) this.v.findViewById(R.id.txt_seva_nav);
        this.tv_tithi = (TextView) this.v.findViewById(R.id.tv_tithi);
        this.tv_var = (TextView) this.v.findViewById(R.id.tv_var);
        this.tv_nakshatra = (TextView) this.v.findViewById(R.id.tv_nakshatra);
        this.tv_rahukal = (TextView) this.v.findViewById(R.id.tv_rahukal);
        this.tv_bhadrapad = (TextView) this.v.findViewById(R.id.tv_bhadrapad);
        this.tv_krishnakunj = (TextView) this.v.findViewById(R.id.tv_krishnakunj);
        this.tv_shubharambh = (TextView) this.v.findViewById(R.id.tv_shubharambh);
        this.dinvishesh = (TextView) this.v.findViewById(R.id.tv_dinvishesh);
        this.tv_ashle = (TextView) this.v.findViewById(R.id.tv_ashle);
        this.tv_datetime = (TextView) this.v.findViewById(R.id.tv_datetime);
        this.tv_panchangs_title = (TextView) this.v.findViewById(R.id.tv_panchangs_title);
        this.tv_dindori_see_all = (TextView) this.v.findViewById(R.id.tv_dindori_see_all);
        this.productsbanners = new ArrayList();
        this.panchangs = new ArrayList();
        this.sevamarg = new ArrayList();
        this.youtubelist = new ArrayList();
        this.dindoriyoutubelist = new ArrayList();
        this.banners = new ArrayList();
        this.suvichar = new ArrayList();
        this.vibhag = new ArrayList();
        this.profile = new ArrayList();
        this.dataHandler = new DataHandler(getActivity());
        this.sendHomeBody = new SendHomeBody();
        this.data = new HomeData();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sendHomeBody.setDevice_token(this.device_token);
        this.sendHomeBody.setUser_id(this.user_id);
        this.sliderView = (SliderView) this.v.findViewById(R.id.imageSlider);
        this.sliderAdapterExample = new SliderAdapterExample(getActivity(), this);
        this.sliderView.setOnIndicatorClickListener(new DrawController.ClickListener() { // from class: com.dp.sgp.View.Fragment.HomeFragmenFragment.1
            @Override // com.dp.sgp.autoimageslider.IndicatorView.draw.controller.DrawController.ClickListener
            public void onIndicatorClicked(int i) {
                Log.i("GGG", "onIndicatorClicked: " + HomeFragmenFragment.this.sliderView.getCurrentPagePosition());
                String url = HomeFragmenFragment.this.banners.get(i).getUrl();
                if (url.equalsIgnoreCase("")) {
                    Toast.makeText(HomeFragmenFragment.this.getActivity(), "Link will be available shortly ", 0).show();
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, "श्री गुरुपीठ त्र्यंबकेश्वर");
                bundle2.putString("media_url", url);
                ImageDetailsFragment imageDetailsFragment = new ImageDetailsFragment();
                imageDetailsFragment.setArguments(bundle2);
                HomeFragmenFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, imageDetailsFragment).addToBackStack(null).commit();
            }
        });
        this.dindori_youtube_horizontalrecyclerView = (RecyclerView) this.v.findViewById(R.id.dindori_youtube_horizontalrecyclerView);
        this.dindori_youtube_horizontalrecyclerView.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.recyclerView = (RecyclerView) this.v.findViewById(R.id.horizontalrecyclerView);
        this.rv_popular_video_content = (RecyclerView) this.v.findViewById(R.id.youtube_horizontalrecyclerView);
        this.rv_popular_video_content.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.recyclerView.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.recyclerView, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.HomeFragmenFragment.2
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                Vibhag vibhag = HomeFragmenFragment.this.vibhag.get(i);
                int i2 = Integer.parseInt(vibhag.getId());
                Bundle bundle2 = new Bundle();
                bundle2.putString("pos", i2 + "");
                bundle2.putString(Key.MESSAGE, vibhag.getDescription());
                bundle2.putString("selected_image", vibhag.getImage());
                bundle2.putString(DatabaseHelperClass.TITLE, vibhag.getTitle());
                VibaghDetailsViewFragment vibaghDetailsViewFragment = new VibaghDetailsViewFragment();
                vibaghDetailsViewFragment.setArguments(bundle2);
                HomeFragmenFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, vibaghDetailsViewFragment).addToBackStack(null).commit();
            }
        }));
        this.homeResponse = getHome("home");
        YoutubeResponse dindori = getDindori("dindoriyoutube");
        this.dindoriyoutubeResponse = dindori;
        if (dindori != null && dindori.getData() != null) {
            List<Youtube> data = this.dindoriyoutubeResponse.getData();
            this.dindoriyoutubelist = data;
            if (data.size() > 0) {
                YoutubeVideoAdapter youtubeVideoAdapter = new YoutubeVideoAdapter(this.dindoriyoutubelist, getActivity());
                this.youtubeVideoAdapter = youtubeVideoAdapter;
                this.dindori_youtube_horizontalrecyclerView.setAdapter(youtubeVideoAdapter);
            }
        }
        if (this.homeResponse != null) {
            Log.d("appUpdateBody", new Gson().toJson(this.homeResponse));
            this.message = this.homeResponse.getMessage();
            this.status = this.homeResponse.getStatus();
            if (this.homeResponse.getData() != null) {
                HomeData data2 = this.homeResponse.getData();
                this.data = data2;
                if (data2.getPanchangs() != null) {
                    List<Panchang> panchangs = this.data.getPanchangs();
                    this.panchangs = panchangs;
                    if (panchangs.size() > 0) {
                        this.tv_panchangs_title.setText(this.panchangs.get(0).getTitle());
                        this.tv_tithi.setText(this.panchangs.get(0).getTithi());
                        this.tv_var.setText(this.panchangs.get(0).getVar());
                        this.tv_nakshatra.setText(this.panchangs.get(0).getNakshatra());
                        this.tv_rahukal.setText(this.panchangs.get(0).getRahukal());
                        this.tv_bhadrapad.setText(this.panchangs.get(0).getBhadrapad());
                        this.tv_krishnakunj.setText(this.panchangs.get(0).getKrushnapaksha());
                        this.tv_shubharambh.setText(this.panchangs.get(0).getShubhashubh());
                        this.dinvishesh.setText(this.panchangs.get(0).getDinvishesh());
                        this.tv_datetime.setText(this.panchangs.get(0).getAashle());
                        this.dinvishesh.setText(this.panchangs.get(0).getDinvishesh());
                    }
                }
                if (this.data.getProfile() != null) {
                    List<Profile> profile = this.data.getProfile();
                    this.profile = profile;
                    if (profile.size() > 0) {
                        this.dataHandler.addData("name", this.profile.get(0).getFull_name());
                    }
                }
                if (this.data.getSevamarg() != null) {
                    List<Sevamarg> sevamarg = this.data.getSevamarg();
                    this.sevamarg = sevamarg;
                    if (sevamarg.size() > 0) {
                        this.tv_added_on_sevamarg.setText(this.sevamarg.get(0).getAdded_on());
                        this.tv_description_sevamarg.setText(this.sevamarg.get(0).getAdded_on());
                        if (this.sevamarg.get(0).getList_type().equalsIgnoreCase("1")) {
                            this.txt_Weather.setText("माळ");
                        } else {
                            this.txt_Weather.setText("पारायण");
                        }
                        this.tv_title_sevamarg.setText(this.sevamarg.get(0).getList_name());
                        this.txt_maal_count.setText(this.sevamarg.get(0).getList_value());
                        this.tv_added_on_sevamarg.setText(this.sevamarg.get(0).getTypeName());
                    }
                }
                if (this.data.getYoutube() != null) {
                    List<Youtube> youtube = this.data.getYoutube();
                    this.youtubelist = youtube;
                    if (youtube.size() > 0) {
                        YoutubeVideoAdapter youtubeVideoAdapter2 = new YoutubeVideoAdapter(this.youtubelist, getActivity());
                        this.youtubeVideoAdapter = youtubeVideoAdapter2;
                        this.rv_popular_video_content.setAdapter(youtubeVideoAdapter2);
                    }
                }
                if (this.data.getBanners() != null) {
                    List<Banner> banners = this.data.getBanners();
                    this.banners = banners;
                    if (banners.size() > 0) {
                        saveBanner(this.banners, "banners");
                        this.sliderView.setSliderAdapter(this.sliderAdapterExample);
                        this.sliderView.setIndicatorAnimation(IndicatorAnimationType.WORM);
                        this.sliderView.setSliderTransformAnimation(SliderAnimations.SIMPLETRANSFORMATION);
                        this.sliderView.setAutoCycleDirection(2);
                        this.sliderView.setIndicatorSelectedColor(-16776961);
                        this.sliderView.setIndicatorUnselectedColor(-7829368);
                        this.sliderView.setScrollTimeInSec(3);
                        this.sliderView.setAutoCycle(true);
                        this.sliderView.startAutoCycle();
                        this.sliderAdapterExample.renewItems(this.banners);
                    }
                }
                if (this.data.getSuvichar() != null) {
                    List<Suvichar> suvichar = this.data.getSuvichar();
                    this.suvichar = suvichar;
                    if (suvichar.size() > 0) {
                        this.tv_desc_suvichar.setText(this.suvichar.get(0).getDescription());
                        this.tv_title_suvichar.setText(this.suvichar.get(0).getTitle());
                    }
                }
                if (this.data.getVibhag() != null) {
                    List<Vibhag> vibhag = this.data.getVibhag();
                    this.vibhag = vibhag;
                    if (vibhag.size() > 0) {
                        NewVibhagAdapter newVibhagAdapter = new NewVibhagAdapter(this.vibhag, getActivity());
                        this.newVibhagAdapter = newVibhagAdapter;
                        this.recyclerView.setAdapter(newVibhagAdapter);
                    }
                }
                if (this.data.getProductsBanner() != null) {
                    List<Banner> productsBanner = this.data.getProductsBanner();
                    this.productsbanners = productsBanner;
                    if (productsBanner.size() > 0) {
                        saveProductBanner(this.productsbanners, "productsbanners");
                    }
                }
            }
        }
        this.rv_popular_video_content.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_popular_video_content, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.HomeFragmenFragment.3
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                Youtube youtube2 = HomeFragmenFragment.this.youtubelist.get(i);
                Intent intent = new Intent(HomeFragmenFragment.this.getContext(), (Class<?>) YoutubeWebviewActivity.class);
                intent.putExtra("media_url", youtube2.getLinks());
                HomeFragmenFragment.this.startActivity(intent);
            }
        }));
        this.dindori_youtube_horizontalrecyclerView.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_popular_video_content, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.HomeFragmenFragment.4
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                Youtube youtube2 = HomeFragmenFragment.this.dindoriyoutubelist.get(i);
                Intent intent = new Intent(HomeFragmenFragment.this.getContext(), (Class<?>) YoutubeWebviewActivity.class);
                intent.putExtra("media_url", youtube2.getLinks());
                HomeFragmenFragment.this.startActivity(intent);
            }
        }));
        this.tv_see_all.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.HomeFragmenFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeFragmenFragment.this.fragment = new YoutubeGridFragment();
                HomeFragmenFragment homeFragmenFragment = HomeFragmenFragment.this;
                homeFragmenFragment.loadFragment(homeFragmenFragment.fragment);
            }
        });
        this.tv_dindori_see_all.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.HomeFragmenFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeFragmenFragment.this.fragment = new DindoriYoutubeGridFragment();
                HomeFragmenFragment homeFragmenFragment = HomeFragmenFragment.this;
                homeFragmenFragment.loadFragment(homeFragmenFragment.fragment);
            }
        });
        this.tv_vibhag_see_all.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.HomeFragmenFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeFragmenFragment.this.fragment = new VibaghFragment();
                HomeFragmenFragment homeFragmenFragment = HomeFragmenFragment.this;
                homeFragmenFragment.loadFragment(homeFragmenFragment.fragment);
            }
        });
        this.txt_seva_nav.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.HomeFragmenFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, "अब्जचंडी");
                AbhjaChandiFragment abhjaChandiFragment = new AbhjaChandiFragment();
                abhjaChandiFragment.setArguments(bundle2);
                HomeFragmenFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, abhjaChandiFragment).addToBackStack(null).commit();
            }
        });
        return this.v;
    }

    public void HomeScreen() {
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).HomeScreen(this.sendHomeBody, new Callback<HomeResponse>() { // from class: com.dp.sgp.View.Fragment.HomeFragmenFragment.9
            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
            }

            @Override // retrofit.Callback
            public void success(HomeResponse homeResponse, Response response) {
                if (homeResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(homeResponse));
                    HomeFragmenFragment.this.message = homeResponse.getMessage();
                    HomeFragmenFragment.this.status = homeResponse.getStatus();
                    if (homeResponse.getData() != null) {
                        HomeFragmenFragment.this.data = homeResponse.getData();
                        if (HomeFragmenFragment.this.data.getPanchangs() != null) {
                            HomeFragmenFragment homeFragmenFragment = HomeFragmenFragment.this;
                            homeFragmenFragment.panchangs = homeFragmenFragment.data.getPanchangs();
                            if (HomeFragmenFragment.this.panchangs.size() > 0) {
                                HomeFragmenFragment.this.tv_panchangs_title.setText(HomeFragmenFragment.this.panchangs.get(0).getTitle());
                                HomeFragmenFragment.this.tv_tithi.setText(HomeFragmenFragment.this.panchangs.get(0).getTithi());
                                HomeFragmenFragment.this.tv_var.setText(HomeFragmenFragment.this.panchangs.get(0).getVar());
                                HomeFragmenFragment.this.tv_nakshatra.setText(HomeFragmenFragment.this.panchangs.get(0).getNakshatra());
                                HomeFragmenFragment.this.tv_rahukal.setText(HomeFragmenFragment.this.panchangs.get(0).getRahukal());
                                HomeFragmenFragment.this.tv_bhadrapad.setText(HomeFragmenFragment.this.panchangs.get(0).getBhadrapad());
                                HomeFragmenFragment.this.tv_krishnakunj.setText(HomeFragmenFragment.this.panchangs.get(0).getKrushnapaksha());
                                HomeFragmenFragment.this.tv_shubharambh.setText(HomeFragmenFragment.this.panchangs.get(0).getShubhashubh());
                                HomeFragmenFragment.this.dinvishesh.setText(HomeFragmenFragment.this.panchangs.get(0).getDinvishesh());
                                HomeFragmenFragment.this.tv_datetime.setText(HomeFragmenFragment.this.panchangs.get(0).getAashle());
                                HomeFragmenFragment.this.dinvishesh.setText(HomeFragmenFragment.this.panchangs.get(0).getDinvishesh());
                            }
                        }
                        if (HomeFragmenFragment.this.data.getProfile() != null) {
                            HomeFragmenFragment homeFragmenFragment2 = HomeFragmenFragment.this;
                            homeFragmenFragment2.profile = homeFragmenFragment2.data.getProfile();
                            if (HomeFragmenFragment.this.profile.size() > 0) {
                                HomeFragmenFragment.this.dataHandler.addData("name", HomeFragmenFragment.this.profile.get(0).getFull_name());
                            }
                        }
                        if (HomeFragmenFragment.this.data.getSevamarg() != null) {
                            HomeFragmenFragment homeFragmenFragment3 = HomeFragmenFragment.this;
                            homeFragmenFragment3.sevamarg = homeFragmenFragment3.data.getSevamarg();
                            if (HomeFragmenFragment.this.sevamarg.size() > 0) {
                                HomeFragmenFragment.this.tv_added_on_sevamarg.setText(HomeFragmenFragment.this.sevamarg.get(0).getAdded_on());
                                HomeFragmenFragment.this.tv_description_sevamarg.setText(HomeFragmenFragment.this.sevamarg.get(0).getAdded_on());
                                if (HomeFragmenFragment.this.sevamarg.get(0).getList_type().equalsIgnoreCase("1")) {
                                    HomeFragmenFragment.this.txt_Weather.setText("माळ");
                                } else {
                                    HomeFragmenFragment.this.txt_Weather.setText("पारायण");
                                }
                                HomeFragmenFragment.this.tv_title_sevamarg.setText(HomeFragmenFragment.this.sevamarg.get(0).getList_name());
                                HomeFragmenFragment.this.txt_maal_count.setText(HomeFragmenFragment.this.sevamarg.get(0).getList_value());
                                HomeFragmenFragment.this.tv_added_on_sevamarg.setText(HomeFragmenFragment.this.sevamarg.get(0).getTypeName());
                            }
                        }
                        if (HomeFragmenFragment.this.data.getYoutube() != null) {
                            HomeFragmenFragment homeFragmenFragment4 = HomeFragmenFragment.this;
                            homeFragmenFragment4.youtubelist = homeFragmenFragment4.data.getYoutube();
                            if (HomeFragmenFragment.this.youtubelist.size() > 0) {
                                HomeFragmenFragment.this.youtubeVideoAdapter = new YoutubeVideoAdapter(HomeFragmenFragment.this.youtubelist, HomeFragmenFragment.this.getActivity());
                                HomeFragmenFragment.this.rv_popular_video_content.setAdapter(HomeFragmenFragment.this.youtubeVideoAdapter);
                            }
                        }
                        if (HomeFragmenFragment.this.data.getBanners() != null) {
                            HomeFragmenFragment homeFragmenFragment5 = HomeFragmenFragment.this;
                            homeFragmenFragment5.banners = homeFragmenFragment5.data.getBanners();
                            if (HomeFragmenFragment.this.banners.size() > 0) {
                                HomeFragmenFragment homeFragmenFragment6 = HomeFragmenFragment.this;
                                homeFragmenFragment6.saveBanner(homeFragmenFragment6.banners, "banners");
                                HomeFragmenFragment.this.sliderView.setSliderAdapter(HomeFragmenFragment.this.sliderAdapterExample);
                                HomeFragmenFragment.this.sliderView.setIndicatorAnimation(IndicatorAnimationType.WORM);
                                HomeFragmenFragment.this.sliderView.setSliderTransformAnimation(SliderAnimations.SIMPLETRANSFORMATION);
                                HomeFragmenFragment.this.sliderView.setAutoCycleDirection(2);
                                HomeFragmenFragment.this.sliderView.setIndicatorSelectedColor(-16776961);
                                HomeFragmenFragment.this.sliderView.setIndicatorUnselectedColor(-7829368);
                                HomeFragmenFragment.this.sliderView.setScrollTimeInSec(3);
                                HomeFragmenFragment.this.sliderView.setAutoCycle(true);
                                HomeFragmenFragment.this.sliderView.startAutoCycle();
                                HomeFragmenFragment.this.sliderAdapterExample.renewItems(HomeFragmenFragment.this.banners);
                            }
                        }
                        if (HomeFragmenFragment.this.data.getSuvichar() != null) {
                            HomeFragmenFragment homeFragmenFragment7 = HomeFragmenFragment.this;
                            homeFragmenFragment7.suvichar = homeFragmenFragment7.data.getSuvichar();
                            if (HomeFragmenFragment.this.suvichar.size() > 0) {
                                HomeFragmenFragment.this.tv_desc_suvichar.setText(HomeFragmenFragment.this.suvichar.get(0).getDescription());
                                HomeFragmenFragment.this.tv_title_suvichar.setText(HomeFragmenFragment.this.suvichar.get(0).getTitle());
                            }
                        }
                        if (HomeFragmenFragment.this.data.getVibhag() != null) {
                            HomeFragmenFragment homeFragmenFragment8 = HomeFragmenFragment.this;
                            homeFragmenFragment8.vibhag = homeFragmenFragment8.data.getVibhag();
                            if (HomeFragmenFragment.this.vibhag.size() > 0) {
                                HomeFragmenFragment.this.newVibhagAdapter = new NewVibhagAdapter(HomeFragmenFragment.this.vibhag, HomeFragmenFragment.this.getActivity());
                                HomeFragmenFragment.this.recyclerView.setAdapter(HomeFragmenFragment.this.newVibhagAdapter);
                            }
                        }
                        if (HomeFragmenFragment.this.data.getProductsBanner() != null) {
                            HomeFragmenFragment homeFragmenFragment9 = HomeFragmenFragment.this;
                            homeFragmenFragment9.productsbanners = homeFragmenFragment9.data.getProductsBanner();
                            if (HomeFragmenFragment.this.productsbanners.size() > 0) {
                                HomeFragmenFragment homeFragmenFragment10 = HomeFragmenFragment.this;
                                homeFragmenFragment10.saveProductBanner(homeFragmenFragment10.productsbanners, "productsbanners");
                            }
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadFragment(Fragment fragment) {
        FragmentTransaction fragmentTransactionBeginTransaction = getActivity().getSupportFragmentManager().beginTransaction();
        this.transaction = fragmentTransactionBeginTransaction;
        fragmentTransactionBeginTransaction.replace(R.id.frame_container, fragment);
        this.transaction.addToBackStack(null);
        this.transaction.commit();
    }

    public void saveBanner(List<Banner> list, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
        editorEdit.putString(str, new Gson().toJson(list));
        editorEdit.apply();
    }

    public void saveProductBanner(List<Banner> list, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
        editorEdit.putString(str, new Gson().toJson(list));
        editorEdit.apply();
    }

    public void saveHome(HomeResponse homeResponse, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
        editorEdit.putString(str, new Gson().toJson(homeResponse));
        editorEdit.apply();
    }

    public HomeResponse getHome(String str) {
        return (HomeResponse) new Gson().fromJson(PreferenceManager.getDefaultSharedPreferences(getActivity()).getString(str, null), new TypeToken<HomeResponse>() { // from class: com.dp.sgp.View.Fragment.HomeFragmenFragment.10
        }.getType());
    }

    @Override // com.dp.sgp.Adapters.SliderAdapterExample.OnItemClickedListner
    public void DetailedViewClicked(Banner banner) {
        Bundle bundle = new Bundle();
        bundle.putString(Key.MESSAGE, "श्री गुरुपीठ त्र्यंबकेश्वर");
        bundle.putString("media_url", banner.getUrl());
        ImageDetailsFragment imageDetailsFragment = new ImageDetailsFragment();
        imageDetailsFragment.setArguments(bundle);
        getFragmentManager().beginTransaction().replace(R.id.frame_container, imageDetailsFragment).addToBackStack(null).commit();
    }

    public YoutubeResponse getDindori(String str) {
        return (YoutubeResponse) new Gson().fromJson(PreferenceManager.getDefaultSharedPreferences(getActivity()).getString(str, null), new TypeToken<YoutubeResponse>() { // from class: com.dp.sgp.View.Fragment.HomeFragmenFragment.11
        }.getType());
    }
}
