package com.dp.sgp.View.Fragment.BottomMenu;

import android.app.ProgressDialog;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.Adapters.MyAdapter;
import com.dp.sgp.Adapters.ProductVideoAdapter;
import com.dp.sgp.Adapters.SliderAdapterExample;
import com.dp.sgp.ApiService.ApiService;
import com.dp.sgp.ConnectionDetector.ConnectionDetector;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.Model.HomeResponse.Banner;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.Model.nityaseva.ProductCommonResponse;
import com.dp.sgp.Model.nityaseva.ProductData;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.dp.sgp.View.Fragment.CommonWebViewFragment;
import com.dp.sgp.View.Fragment.Details.ImageDetailsFragment;
import com.dp.sgp.View.Fragment.Details.ProductDetailsFragment;
import com.dp.sgp.View.Fragment.Youtube.PriductSeeAllGridFragment;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.IndicatorAnimationType;
import com.dp.sgp.autoimageslider.IndicatorView.draw.controller.DrawController;
import com.dp.sgp.autoimageslider.SliderAnimations;
import com.dp.sgp.autoimageslider.SliderView;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class ProductsFragment extends Fragment implements SliderAdapterExample.OnItemClickedListner {
    GridView androidGridView;
    ProductVideoAdapter ayurvedaAdapter;
    ConnectionDetector connectionDetector;
    DataHandler dataHandler;
    ProductVideoAdapter granthasahityaAdapter;
    ProductVideoAdapter krushidhanAdapter;
    ProductVideoAdapter lokpriyaAdapter;
    String message;
    private MyAdapter myAdapter;
    ProductVideoAdapter poojasahityaAdapter;
    ProductCommonResponse productCommonResponse;
    ProgressDialog progressDialog;
    RecyclerView rv_aaruvedh_utpadan;
    RecyclerView rv_grantha_sahitya;
    RecyclerView rv_krishi_dhan;
    RecyclerView rv_lokpriya;
    RecyclerView rv_pooja_sahitya;
    SendCommonBody sendCommonBody;
    private SliderAdapterExample sliderAdapterExample;
    SliderView sliderView;
    String status;
    TextView title;
    TextView title1;
    TextView title2;
    TextView title3;
    TextView title4;
    TextView title5;
    TextView title6;
    TextView title8;
    ImageView title_lag;
    ImageView title_lag1;
    ImageView title_lag2;
    ImageView title_lag3;
    ImageView title_lag4;
    ImageView title_lag5;
    ImageView title_lag6;
    ImageView title_lag8;
    TextView txt_aurvedh_view;
    TextView txt_grantha_view;
    TextView txt_krishi_view;
    TextView txt_lokpriya_view;
    TextView txt_pooja_view;
    View v;
    String[] gridViewString = {"सर्वात लोकप्रिय", "संपुर्ण पहा", "पूजा साहित्य", "संपुर्ण पहा", "आयुर्वेदिक उत्पादने", "संपुर्ण पहा"};
    List<Banner> banners = null;
    String device_token = "";
    String user_id = "";
    private ProductData dataList = null;
    private List<CommonData> lokpriya = null;
    private List<CommonData> poojasahitya = null;
    private List<CommonData> ayurveda = null;
    private List<CommonData> granthasahitya = null;
    private List<CommonData> krushidhan = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_products, viewGroup, false);
        getActivity().setTitle("सेवा मार्गाचे साहित्य");
        this.sliderView = (SliderView) this.v.findViewById(R.id.imageSlider);
        this.productCommonResponse = new ProductCommonResponse();
        this.rv_krishi_dhan = (RecyclerView) this.v.findViewById(R.id.rv_krishi_dhan);
        this.rv_aaruvedh_utpadan = (RecyclerView) this.v.findViewById(R.id.rv_aaruvedh_utpadan);
        this.rv_pooja_sahitya = (RecyclerView) this.v.findViewById(R.id.rv_pooja_sahitya);
        this.rv_lokpriya = (RecyclerView) this.v.findViewById(R.id.rv_lokpriya);
        this.rv_grantha_sahitya = (RecyclerView) this.v.findViewById(R.id.rv_grantha_sahitya);
        this.rv_krishi_dhan.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.rv_aaruvedh_utpadan.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.rv_pooja_sahitya.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.rv_lokpriya.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.rv_grantha_sahitya.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.title1 = (TextView) this.v.findViewById(R.id.title1);
        this.title = (TextView) this.v.findViewById(R.id.title);
        this.title2 = (TextView) this.v.findViewById(R.id.title2);
        this.title3 = (TextView) this.v.findViewById(R.id.title3);
        this.title4 = (TextView) this.v.findViewById(R.id.title4);
        this.title8 = (TextView) this.v.findViewById(R.id.title8);
        this.title5 = (TextView) this.v.findViewById(R.id.title5);
        this.title6 = (TextView) this.v.findViewById(R.id.title6);
        this.txt_lokpriya_view = (TextView) this.v.findViewById(R.id.txt_lokpriya_view);
        this.txt_pooja_view = (TextView) this.v.findViewById(R.id.txt_pooja_view);
        this.txt_grantha_view = (TextView) this.v.findViewById(R.id.txt_grantha_view);
        this.txt_aurvedh_view = (TextView) this.v.findViewById(R.id.txt_aurvedh_view);
        this.txt_krishi_view = (TextView) this.v.findViewById(R.id.txt_krishi_view);
        this.title_lag1 = (ImageView) this.v.findViewById(R.id.title_lag1);
        this.title_lag = (ImageView) this.v.findViewById(R.id.title_lag);
        this.title_lag2 = (ImageView) this.v.findViewById(R.id.title_lag2);
        this.title_lag3 = (ImageView) this.v.findViewById(R.id.title_lag3);
        this.title_lag4 = (ImageView) this.v.findViewById(R.id.title_lag4);
        this.title_lag8 = (ImageView) this.v.findViewById(R.id.title_lag8);
        this.title_lag5 = (ImageView) this.v.findViewById(R.id.title_lag5);
        this.title_lag6 = (ImageView) this.v.findViewById(R.id.title_lag6);
        this.lokpriya = new ArrayList();
        this.poojasahitya = new ArrayList();
        this.ayurveda = new ArrayList();
        this.granthasahitya = new ArrayList();
        this.krushidhan = new ArrayList();
        this.banners = new ArrayList();
        this.androidGridView = (GridView) this.v.findViewById(R.id.grid_view_image_text);
        this.dataHandler = new DataHandler(getActivity());
        this.sendCommonBody = new SendCommonBody();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.dataList = new ProductData();
        this.sendCommonBody.setDevice_token(this.device_token);
        this.sendCommonBody.setUser_id(this.user_id);
        this.sendCommonBody.setType("0");
        this.sendCommonBody.setId("0");
        this.sliderAdapterExample = new SliderAdapterExample(getActivity(), this);
        this.sliderView.setOnIndicatorClickListener(new DrawController.ClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.1
            @Override // com.dp.sgp.autoimageslider.IndicatorView.draw.controller.DrawController.ClickListener
            public void onIndicatorClicked(int i) {
                Log.i("GGG", "onIndicatorClicked: " + ProductsFragment.this.sliderView.getCurrentPagePosition());
                String url = ProductsFragment.this.banners.get(i).getUrl();
                if (url.equalsIgnoreCase("")) {
                    Toast.makeText(ProductsFragment.this.getActivity(), "Link will be available shortly ", 0).show();
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, "शसेवा मार्गाचे साहित्य");
                bundle2.putString("media_url", url);
                CommonWebViewFragment commonWebViewFragment = new CommonWebViewFragment();
                commonWebViewFragment.setArguments(bundle2);
                ProductsFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, commonWebViewFragment).addToBackStack(null).commit();
            }
        });
        this.txt_lokpriya_view.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProductsFragment productsFragment = ProductsFragment.this;
                productsFragment.saveProductBanner(productsFragment.lokpriya, "products");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, "सर्वात लोकप्रिय");
                PriductSeeAllGridFragment priductSeeAllGridFragment = new PriductSeeAllGridFragment();
                priductSeeAllGridFragment.setArguments(bundle2);
                ProductsFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, priductSeeAllGridFragment).addToBackStack(null).commit();
            }
        });
        this.txt_pooja_view.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProductsFragment productsFragment = ProductsFragment.this;
                productsFragment.saveProductBanner(productsFragment.poojasahitya, "products");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, "पूजा साहित्य");
                PriductSeeAllGridFragment priductSeeAllGridFragment = new PriductSeeAllGridFragment();
                priductSeeAllGridFragment.setArguments(bundle2);
                ProductsFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, priductSeeAllGridFragment).addToBackStack(null).commit();
            }
        });
        this.txt_grantha_view.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProductsFragment productsFragment = ProductsFragment.this;
                productsFragment.saveProductBanner(productsFragment.granthasahitya, "products");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, "र्गथ साहित्य");
                PriductSeeAllGridFragment priductSeeAllGridFragment = new PriductSeeAllGridFragment();
                priductSeeAllGridFragment.setArguments(bundle2);
                ProductsFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, priductSeeAllGridFragment).addToBackStack(null).commit();
            }
        });
        this.txt_aurvedh_view.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProductsFragment productsFragment = ProductsFragment.this;
                productsFragment.saveProductBanner(productsFragment.ayurveda, "products");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, "आयुर्वेदिक उत्पादने");
                PriductSeeAllGridFragment priductSeeAllGridFragment = new PriductSeeAllGridFragment();
                priductSeeAllGridFragment.setArguments(bundle2);
                ProductsFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, priductSeeAllGridFragment).addToBackStack(null).commit();
            }
        });
        this.txt_krishi_view.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProductsFragment productsFragment = ProductsFragment.this;
                productsFragment.saveProductBanner(productsFragment.krushidhan, "products");
                Bundle bundle2 = new Bundle();
                bundle2.putString(Key.MESSAGE, "कृषी उत्पादने");
                PriductSeeAllGridFragment priductSeeAllGridFragment = new PriductSeeAllGridFragment();
                priductSeeAllGridFragment.setArguments(bundle2);
                ProductsFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, priductSeeAllGridFragment).addToBackStack(null).commit();
            }
        });
        this.rv_lokpriya.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_lokpriya, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.7
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = (CommonData) ProductsFragment.this.lokpriya.get(i);
                int i2 = Integer.parseInt(commonData.getId());
                Bundle bundle2 = new Bundle();
                bundle2.putString("pos", i2 + "");
                bundle2.putString(Key.MESSAGE, commonData.getTitle());
                bundle2.putInt("selected_image", i2);
                ProductDetailsFragment productDetailsFragment = new ProductDetailsFragment();
                productDetailsFragment.setArguments(bundle2);
                ProductsFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, productDetailsFragment).addToBackStack(null).commit();
            }
        }));
        this.rv_krishi_dhan.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_krishi_dhan, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.8
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = (CommonData) ProductsFragment.this.krushidhan.get(i);
                int i2 = Integer.parseInt(commonData.getId());
                Bundle bundle2 = new Bundle();
                bundle2.putString("pos", i2 + "");
                bundle2.putString(Key.MESSAGE, commonData.getTitle());
                bundle2.putInt("selected_image", i2);
                ProductDetailsFragment productDetailsFragment = new ProductDetailsFragment();
                productDetailsFragment.setArguments(bundle2);
                ProductsFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, productDetailsFragment).addToBackStack(null).commit();
            }
        }));
        this.rv_aaruvedh_utpadan.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_aaruvedh_utpadan, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.9
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = (CommonData) ProductsFragment.this.ayurveda.get(i);
                int i2 = Integer.parseInt(commonData.getId());
                Bundle bundle2 = new Bundle();
                bundle2.putString("pos", i2 + "");
                bundle2.putString(Key.MESSAGE, commonData.getTitle());
                bundle2.putInt("selected_image", i2);
                ProductDetailsFragment productDetailsFragment = new ProductDetailsFragment();
                productDetailsFragment.setArguments(bundle2);
                ProductsFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, productDetailsFragment).addToBackStack(null).commit();
            }
        }));
        this.rv_pooja_sahitya.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_pooja_sahitya, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.10
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = (CommonData) ProductsFragment.this.poojasahitya.get(i);
                int i2 = Integer.parseInt(commonData.getId());
                Bundle bundle2 = new Bundle();
                bundle2.putString("pos", i2 + "");
                bundle2.putString(Key.MESSAGE, commonData.getTitle());
                bundle2.putInt("selected_image", i2);
                ProductDetailsFragment productDetailsFragment = new ProductDetailsFragment();
                productDetailsFragment.setArguments(bundle2);
                ProductsFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, productDetailsFragment).addToBackStack(null).commit();
            }
        }));
        this.rv_grantha_sahitya.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_grantha_sahitya, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.11
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = (CommonData) ProductsFragment.this.granthasahitya.get(i);
                int i2 = Integer.parseInt(commonData.getId());
                Bundle bundle2 = new Bundle();
                bundle2.putString("pos", i2 + "");
                bundle2.putString(Key.MESSAGE, commonData.getTitle());
                bundle2.putInt("selected_image", i2);
                ProductDetailsFragment productDetailsFragment = new ProductDetailsFragment();
                productDetailsFragment.setArguments(bundle2);
                ProductsFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, productDetailsFragment).addToBackStack(null).commit();
            }
        }));
        ProductCommonResponse product = getProduct("Products");
        this.productCommonResponse = product;
        if (product != null) {
            ProductData data = product.getData();
            this.dataList = data;
            this.lokpriya = data.getLokpriya();
            this.poojasahitya = this.dataList.getPoojasahitya();
            this.ayurveda = this.dataList.getAyurveda();
            this.granthasahitya = this.dataList.getGranthasahitya();
            this.krushidhan = this.dataList.getKrushidhan();
            this.banners = this.dataList.getProductBanners();
            ProductVideoAdapter productVideoAdapter = new ProductVideoAdapter(this.lokpriya, getActivity());
            this.lokpriyaAdapter = productVideoAdapter;
            this.rv_lokpriya.setAdapter(productVideoAdapter);
            ProductVideoAdapter productVideoAdapter2 = new ProductVideoAdapter(this.poojasahitya, getActivity());
            this.poojasahityaAdapter = productVideoAdapter2;
            this.rv_pooja_sahitya.setAdapter(productVideoAdapter2);
            ProductVideoAdapter productVideoAdapter3 = new ProductVideoAdapter(this.ayurveda, getActivity());
            this.ayurvedaAdapter = productVideoAdapter3;
            this.rv_aaruvedh_utpadan.setAdapter(productVideoAdapter3);
            ProductVideoAdapter productVideoAdapter4 = new ProductVideoAdapter(this.krushidhan, getActivity());
            this.krushidhanAdapter = productVideoAdapter4;
            this.rv_krishi_dhan.setAdapter(productVideoAdapter4);
            ProductVideoAdapter productVideoAdapter5 = new ProductVideoAdapter(this.granthasahitya, getActivity());
            this.granthasahityaAdapter = productVideoAdapter5;
            this.rv_grantha_sahitya.setAdapter(productVideoAdapter5);
            if (this.banners.size() > 0) {
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
        return this.v;
    }

    public List<Banner> getBanner(String str) {
        return (List) new Gson().fromJson(PreferenceManager.getDefaultSharedPreferences(getActivity()).getString(str, null), new TypeToken<List<CommonData>>() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.12
        }.getType());
    }

    public void ProductsCommon() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity(), R.style.AppTheme_Dark_Dialog);
        this.progressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setMessage(Constants.Progress_Loading);
        this.progressDialog.show();
        ((ApiService) new RestAdapter.Builder().setEndpoint(Constants.BASE_URL).setLogLevel(RestAdapter.LogLevel.FULL).build().create(ApiService.class)).ProductsCommon(this.sendCommonBody, new Callback<ProductCommonResponse>() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.13
            @Override // retrofit.Callback
            public void success(ProductCommonResponse productCommonResponse, Response response) {
                if (productCommonResponse != null) {
                    Log.d("appUpdateBody", new Gson().toJson(productCommonResponse));
                    ProductsFragment.this.message = productCommonResponse.getMessage();
                    ProductsFragment.this.status = productCommonResponse.getStatus();
                    if (productCommonResponse.getData() != null) {
                        ProductsFragment.this.dataList = productCommonResponse.getData();
                        ProductsFragment productsFragment = ProductsFragment.this;
                        productsFragment.lokpriya = productsFragment.dataList.getLokpriya();
                        ProductsFragment productsFragment2 = ProductsFragment.this;
                        productsFragment2.poojasahitya = productsFragment2.dataList.getPoojasahitya();
                        ProductsFragment productsFragment3 = ProductsFragment.this;
                        productsFragment3.ayurveda = productsFragment3.dataList.getAyurveda();
                        ProductsFragment productsFragment4 = ProductsFragment.this;
                        productsFragment4.granthasahitya = productsFragment4.dataList.getGranthasahitya();
                        ProductsFragment productsFragment5 = ProductsFragment.this;
                        productsFragment5.krushidhan = productsFragment5.dataList.getKrushidhan();
                        ProductsFragment productsFragment6 = ProductsFragment.this;
                        productsFragment6.banners = productsFragment6.dataList.getProductBanners();
                        ProductsFragment.this.lokpriyaAdapter = new ProductVideoAdapter(ProductsFragment.this.lokpriya, ProductsFragment.this.getActivity());
                        ProductsFragment.this.rv_lokpriya.setAdapter(ProductsFragment.this.lokpriyaAdapter);
                        ProductsFragment.this.poojasahityaAdapter = new ProductVideoAdapter(ProductsFragment.this.poojasahitya, ProductsFragment.this.getActivity());
                        ProductsFragment.this.rv_pooja_sahitya.setAdapter(ProductsFragment.this.poojasahityaAdapter);
                        ProductsFragment.this.ayurvedaAdapter = new ProductVideoAdapter(ProductsFragment.this.ayurveda, ProductsFragment.this.getActivity());
                        ProductsFragment.this.rv_aaruvedh_utpadan.setAdapter(ProductsFragment.this.ayurvedaAdapter);
                        ProductsFragment.this.krushidhanAdapter = new ProductVideoAdapter(ProductsFragment.this.krushidhan, ProductsFragment.this.getActivity());
                        ProductsFragment.this.rv_krishi_dhan.setAdapter(ProductsFragment.this.krushidhanAdapter);
                        ProductsFragment.this.granthasahityaAdapter = new ProductVideoAdapter(ProductsFragment.this.granthasahitya, ProductsFragment.this.getActivity());
                        ProductsFragment.this.rv_grantha_sahitya.setAdapter(ProductsFragment.this.granthasahityaAdapter);
                        if (ProductsFragment.this.banners.size() > 0) {
                            ProductsFragment.this.sliderView.setSliderAdapter(ProductsFragment.this.sliderAdapterExample);
                            ProductsFragment.this.sliderView.setIndicatorAnimation(IndicatorAnimationType.WORM);
                            ProductsFragment.this.sliderView.setSliderTransformAnimation(SliderAnimations.SIMPLETRANSFORMATION);
                            ProductsFragment.this.sliderView.setAutoCycleDirection(2);
                            ProductsFragment.this.sliderView.setIndicatorSelectedColor(-16776961);
                            ProductsFragment.this.sliderView.setIndicatorUnselectedColor(-7829368);
                            ProductsFragment.this.sliderView.setScrollTimeInSec(3);
                            ProductsFragment.this.sliderView.setAutoCycle(true);
                            ProductsFragment.this.sliderView.startAutoCycle();
                            ProductsFragment.this.sliderAdapterExample.renewItems(ProductsFragment.this.banners);
                        }
                    }
                }
                ProductsFragment.this.progressDialog.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                ProductsFragment.this.progressDialog.dismiss();
            }
        });
    }

    public void saveProductBanner(List<CommonData> list, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
        editorEdit.putString(str, new Gson().toJson(list));
        editorEdit.apply();
    }

    @Override // com.dp.sgp.Adapters.SliderAdapterExample.OnItemClickedListner
    public void DetailedViewClicked(Banner banner) {
        Bundle bundle = new Bundle();
        bundle.putString(Key.MESSAGE, "सेवा मार्गाचे साहित्य");
        bundle.putString("media_url", banner.getUrl());
        ImageDetailsFragment imageDetailsFragment = new ImageDetailsFragment();
        imageDetailsFragment.setArguments(bundle);
        getFragmentManager().beginTransaction().replace(R.id.frame_container, imageDetailsFragment).addToBackStack(null).commit();
    }

    public ProductCommonResponse getProduct(String str) {
        return (ProductCommonResponse) new Gson().fromJson(PreferenceManager.getDefaultSharedPreferences(getActivity()).getString(str, null), new TypeToken<ProductCommonResponse>() { // from class: com.dp.sgp.View.Fragment.BottomMenu.ProductsFragment.14
        }.getType());
    }
}
