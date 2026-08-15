package com.dp.sgp.View.Fragment.Youtube;

import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dp.sgp.Adapters.ProductGridAdapter;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.DataHolder.DataHandler;
import com.dp.sgp.Model.CommonData;
import com.dp.sgp.Model.HomeResponse.SendHomeBody;
import com.dp.sgp.R;
import com.dp.sgp.TouchListener.RecyclerTouchListener;
import com.dp.sgp.View.Fragment.Details.ProductDetailsFragment;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PriductSeeAllGridFragment extends Fragment {
    DataHandler dataHandler;
    String message;
    private RecyclerView recyclerView;
    private RecyclerView rv_popular_video_content;
    SendHomeBody sendHomeBody;
    String status;
    View v;
    String device_token = "";
    String user_id = "";
    String strtext = "";
    List<CommonData> banners = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_youtube_grid, viewGroup, false);
        this.v = viewInflate;
        this.rv_popular_video_content = (RecyclerView) viewInflate.findViewById(R.id.youtube_horizontalrecyclerView);
        this.banners = new ArrayList();
        if (getArguments() != null) {
            this.strtext = getArguments().getString(Key.MESSAGE);
            getActivity().setTitle(this.strtext);
        }
        this.dataHandler = new DataHandler(getActivity());
        this.sendHomeBody = new SendHomeBody();
        this.device_token = this.dataHandler.getData(Constants.DEVICE_TOKEN);
        this.user_id = this.dataHandler.getData("user_id");
        this.sendHomeBody.setDevice_token(this.device_token);
        this.sendHomeBody.setUser_id(this.user_id);
        if (getBanner("products") != null) {
            this.banners = getBanner("products");
            ProductGridAdapter productGridAdapter = new ProductGridAdapter(getActivity(), this.banners);
            this.rv_popular_video_content.setLayoutManager(new GridLayoutManager(getActivity(), 2));
            this.rv_popular_video_content.setItemAnimator(new DefaultItemAnimator());
            this.rv_popular_video_content.setAdapter(productGridAdapter);
        }
        this.rv_popular_video_content.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.rv_popular_video_content, new RecyclerTouchListener.ClickListener() { // from class: com.dp.sgp.View.Fragment.Youtube.PriductSeeAllGridFragment.1
            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.dp.sgp.TouchListener.RecyclerTouchListener.ClickListener
            public void onClick(View view, int i) {
                CommonData commonData = PriductSeeAllGridFragment.this.banners.get(i);
                int i2 = Integer.parseInt(commonData.getId());
                Bundle bundle2 = new Bundle();
                bundle2.putString("pos", commonData.getId());
                bundle2.putString(Key.MESSAGE, commonData.getTitle());
                bundle2.putInt("selected_image", i2);
                ProductDetailsFragment productDetailsFragment = new ProductDetailsFragment();
                productDetailsFragment.setArguments(bundle2);
                PriductSeeAllGridFragment.this.getFragmentManager().beginTransaction().replace(R.id.frame_container, productDetailsFragment).addToBackStack(null).commit();
            }
        }));
        return this.v;
    }

    public List<CommonData> getBanner(String str) {
        return (List) new Gson().fromJson(PreferenceManager.getDefaultSharedPreferences(getActivity()).getString(str, null), new TypeToken<List<CommonData>>() { // from class: com.dp.sgp.View.Fragment.Youtube.PriductSeeAllGridFragment.2
        }.getType());
    }
}
