package com.dp.sgp.View.Fragment.SwamiCharitra;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.dp.sgp.Adapters.SwamiCharitraListAdapter;
import com.dp.sgp.Constants.PreferenceHelper;
import com.dp.sgp.Model.ListData;
import com.dp.sgp.R;
import com.dp.sgp.listener.OnRecyclerItemClickListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class OfflineModeFragment extends Fragment {
    private SwamiCharitraListAdapter adapter;
    private String bookmarkType;
    private ArrayList<ListData> listDatas;
    private String listType;
    private RecyclerView mRecyclerView;
    private BroadcastReceiver mRegistrationBroadcastReceiver = new BroadcastReceiver() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.OfflineModeFragment.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            OfflineModeFragment.this.tvAdhya.setText("" + (PreferenceHelper.getIntPreferenceValue(OfflineModeFragment.this.getActivity(), OfflineModeFragment.this.bookmarkType) > 0 ? PreferenceHelper.getIntPreferenceValue(OfflineModeFragment.this.getActivity(), OfflineModeFragment.this.bookmarkType) + 1 : 1));
            OfflineModeFragment.this.tvParayan.setText("" + (PreferenceHelper.getIntPreferenceValue(OfflineModeFragment.this.getActivity(), new StringBuilder().append(OfflineModeFragment.this.bookmarkType).append("parayan").toString()) > 0 ? PreferenceHelper.getIntPreferenceValue(OfflineModeFragment.this.getActivity(), OfflineModeFragment.this.bookmarkType + "parayan") : 0));
            OfflineModeFragment.this.adapter = new SwamiCharitraListAdapter(OfflineModeFragment.this.getActivity(), OfflineModeFragment.this.listDatas, OfflineModeFragment.this.bookmarkType);
            OfflineModeFragment.this.mRecyclerView.setAdapter(OfflineModeFragment.this.adapter);
            OfflineModeFragment.this.mRecyclerView.scrollToPosition(PreferenceHelper.getIntPreferenceValue(OfflineModeFragment.this.getActivity(), OfflineModeFragment.this.bookmarkType) - 1);
            OfflineModeFragment.this.adapter.setOnRecyclerItemClickListener(new OnRecyclerItemClickListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.OfflineModeFragment.2.1
                @Override // com.dp.sgp.listener.OnRecyclerItemClickListener
                public void onRecyclerItemClick(int i, int i2) {
                    FragmentManager supportFragmentManager = OfflineModeFragment.this.getActivity().getSupportFragmentManager();
                    Bundle bundle = new Bundle();
                    bundle.putSerializable(PreferenceHelper.EXTRA_PARAMS_RESULT_KEY, OfflineModeFragment.this.listDatas);
                    bundle.putInt(PreferenceHelper.EXTRA_PARAMS_POSITION, i);
                    bundle.putString(PreferenceHelper.EXTRA_PARAMS_LIST_TYPE, OfflineModeFragment.this.listType);
                    FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
                    fragmentTransactionBeginTransaction.add(R.id.frame_container, ContentParentFragment.newInstance(bundle));
                    fragmentTransactionBeginTransaction.addToBackStack(OfflineModeFragment.class.getName());
                    fragmentTransactionBeginTransaction.commit();
                }
            });
        }
    };
    private View rootView;
    private String[] titles;
    private TextView tvAdhya;
    private TextView tvParayan;
    private TextView tvTitle;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.rootView = layoutInflater.inflate(R.layout.fragment_offline_mode, viewGroup, false);
        getActivity().setTitle("श्री स्वामी चरित्र ऑफलाइन");
        if (getArguments() != null) {
            this.listType = getArguments().getString(PreferenceHelper.EXTRA_PARAMS_RESULT_KEY);
        }
        findViews();
        return this.rootView;
    }

    private void findViews() {
        this.tvAdhya = (TextView) this.rootView.findViewById(R.id.txt_adhayay);
        this.tvParayan = (TextView) this.rootView.findViewById(R.id.pos);
        if (this.listType.equals(PreferenceHelper.LIST_SWAMI_CHARITRA)) {
            this.bookmarkType = PreferenceHelper.SWAMI_CHARITRA_BOOKMARK;
        } else {
            this.bookmarkType = PreferenceHelper.SWAMI_CHARITRA_700_BOOKMARK;
        }
        this.tvAdhya.setText("" + (PreferenceHelper.getIntPreferenceValue(getActivity(), this.bookmarkType) > 0 ? PreferenceHelper.getIntPreferenceValue(getActivity(), this.bookmarkType) + 1 : 1));
        this.tvParayan.setText("" + (PreferenceHelper.getIntPreferenceValue(getActivity(), new StringBuilder().append(this.bookmarkType).append("parayan").toString()) > 0 ? PreferenceHelper.getIntPreferenceValue(getActivity(), this.bookmarkType + "parayan") : 0));
        RecyclerView recyclerView = (RecyclerView) this.rootView.findViewById(R.id.my_recycler_view);
        this.mRecyclerView = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.listDatas = new ArrayList<>();
        this.titles = getActivity().getResources().getStringArray(R.array.adhyay_titles);
        for (int i = 0; i < this.titles.length; i++) {
            ListData listData = new ListData();
            listData.setId(i);
            listData.setTitle(this.titles[i]);
            this.listDatas.add(listData);
        }
        SwamiCharitraListAdapter swamiCharitraListAdapter = new SwamiCharitraListAdapter(getActivity(), this.listDatas, this.bookmarkType);
        this.adapter = swamiCharitraListAdapter;
        this.mRecyclerView.setAdapter(swamiCharitraListAdapter);
        this.adapter.setOnRecyclerItemClickListener(new OnRecyclerItemClickListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.OfflineModeFragment.1
            @Override // com.dp.sgp.listener.OnRecyclerItemClickListener
            public void onRecyclerItemClick(int i2, int i3) {
                FragmentManager supportFragmentManager = OfflineModeFragment.this.getActivity().getSupportFragmentManager();
                Bundle bundle = new Bundle();
                bundle.putSerializable(PreferenceHelper.EXTRA_PARAMS_RESULT_KEY, OfflineModeFragment.this.listDatas);
                bundle.putInt(PreferenceHelper.EXTRA_PARAMS_POSITION, i2);
                bundle.putString(PreferenceHelper.EXTRA_PARAMS_LIST_TYPE, OfflineModeFragment.this.listType);
                FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
                fragmentTransactionBeginTransaction.add(R.id.frame_container, ContentParentFragment.newInstance(bundle));
                fragmentTransactionBeginTransaction.addToBackStack(OfflineModeFragment.class.getName());
                fragmentTransactionBeginTransaction.commit();
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        LocalBroadcastManager.getInstance(getActivity()).registerReceiver(this.mRegistrationBroadcastReceiver, new IntentFilter(PreferenceHelper.SWAMI_CHARITRA_BOOKMARK));
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        LocalBroadcastManager.getInstance(getActivity()).unregisterReceiver(this.mRegistrationBroadcastReceiver);
        super.onPause();
    }
}
