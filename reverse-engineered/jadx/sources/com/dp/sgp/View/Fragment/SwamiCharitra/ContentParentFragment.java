package com.dp.sgp.View.Fragment.SwamiCharitra;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.Adapters.ContentPagerAdapter;
import com.dp.sgp.Constants.PreferenceHelper;
import com.dp.sgp.Model.ListData;
import com.dp.sgp.R;
import com.dp.sgp.util.ShowCaseManager;
import com.dp.sgp.viewpagertransformer.StackTransformer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ContentParentFragment extends Fragment implements ViewPager.OnPageChangeListener, View.OnClickListener {
    private ContentPagerAdapter adapterViewPager;
    private String bookmarkType;
    private String[] dayMarathi;
    private ImageView ivBookmark;
    private ArrayList<ListData> list;
    private String listType;
    private View rootView;
    private String stringName;
    private TextView tvNext;
    private TextView tvPrev;
    private ViewPager vpPager;
    private int currentPageId = 0;
    private boolean isBookmarked = false;

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    public static ContentParentFragment newInstance(Bundle bundle) {
        ContentParentFragment contentParentFragment = new ContentParentFragment();
        contentParentFragment.setArguments(bundle);
        return contentParentFragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.list = (ArrayList) getArguments().getSerializable(PreferenceHelper.EXTRA_PARAMS_RESULT_KEY);
            this.currentPageId = getArguments().getInt(PreferenceHelper.EXTRA_PARAMS_POSITION);
            this.listType = getArguments().getString(PreferenceHelper.EXTRA_PARAMS_LIST_TYPE);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.rootView = layoutInflater.inflate(R.layout.fragment_content_parent, viewGroup, false);
        findViews();
        this.dayMarathi = getActivity().getResources().getStringArray(R.array.day_marathi);
        ContentPagerAdapter contentPagerAdapter = new ContentPagerAdapter(getChildFragmentManager(), this.list, this.listType);
        this.adapterViewPager = contentPagerAdapter;
        this.vpPager.setAdapter(contentPagerAdapter);
        this.vpPager.addOnPageChangeListener(this);
        this.vpPager.setPageTransformer(true, new StackTransformer());
        this.vpPager.setCurrentItem(this.currentPageId);
        if (this.listType.equals(PreferenceHelper.LIST_SWAMI_CHARITRA) || this.listType.equals(PreferenceHelper.LIST_SWAMI_CHARITRA_700)) {
            if (this.listType.equals(PreferenceHelper.LIST_SWAMI_CHARITRA)) {
                this.bookmarkType = PreferenceHelper.SWAMI_CHARITRA_BOOKMARK;
            } else {
                this.bookmarkType = PreferenceHelper.SWAMI_CHARITRA_700_BOOKMARK;
            }
            ShowCaseManager.showHelp(getActivity(), R.id.ivBookmark, getResources().getString(R.string.help_title_bookmark), getResources().getString(R.string.help_message_bookmark), ShowCaseManager.HELP_BOOKMARK, null);
            this.ivBookmark.setVisibility(0);
            this.ivBookmark.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.ContentParentFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ContentParentFragment contentParentFragment = ContentParentFragment.this;
                    contentParentFragment.isBookmarked = !contentParentFragment.isBookmarked;
                    if (ContentParentFragment.this.isBookmarked) {
                        ContentParentFragment.this.ivBookmark.setImageResource(R.drawable.ic_bookmark);
                        PreferenceHelper.setPreferenceValue(ContentParentFragment.this.getActivity(), ContentParentFragment.this.bookmarkType, ContentParentFragment.this.currentPageId + 1);
                        Toast.makeText(ContentParentFragment.this.getActivity(), ContentParentFragment.this.getResources().getString(R.string.seva_saved), 0).show();
                    } else {
                        ContentParentFragment.this.ivBookmark.setImageResource(R.drawable.ic_bookmark_inactive);
                        PreferenceHelper.setPreferenceValue(ContentParentFragment.this.getActivity(), ContentParentFragment.this.bookmarkType, 0);
                    }
                    if (ContentParentFragment.this.currentPageId + 1 == ContentParentFragment.this.list.size()) {
                        PreferenceHelper.setPreferenceValue(ContentParentFragment.this.getActivity(), ContentParentFragment.this.bookmarkType, 0);
                        PreferenceHelper.setPreferenceValue(ContentParentFragment.this.getActivity(), ContentParentFragment.this.bookmarkType + "parayan", PreferenceHelper.getIntPreferenceValue(ContentParentFragment.this.getActivity(), ContentParentFragment.this.bookmarkType + "parayan") + 1);
                    }
                    LocalBroadcastManager.getInstance(ContentParentFragment.this.getActivity()).sendBroadcast(new Intent(PreferenceHelper.SWAMI_CHARITRA_BOOKMARK));
                }
            });
        } else {
            this.ivBookmark.setVisibility(8);
        }
        checkBookmark();
        return this.rootView;
    }

    private void findViews() {
        this.rootView.findViewById(R.id.root).findViewById(R.id.root).setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.SwamiCharitra.ContentParentFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.vpPager = (ViewPager) this.rootView.findViewById(R.id.vpPager);
        this.tvPrev = (TextView) this.rootView.findViewById(R.id.tvPrev);
        this.tvNext = (TextView) this.rootView.findViewById(R.id.tvNext);
        this.ivBookmark = (ImageView) this.rootView.findViewById(R.id.ivBookmark);
        this.tvPrev.setOnClickListener(this);
        this.tvNext.setOnClickListener(this);
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        this.currentPageId = i;
        setBottomCount();
        checkBookmark();
    }

    private void checkBookmark() {
        if (this.currentPageId + 1 > PreferenceHelper.getIntPreferenceValue(getActivity(), this.bookmarkType)) {
            this.isBookmarked = false;
            this.ivBookmark.setImageResource(R.drawable.ic_bookmark_inactive);
        } else {
            this.isBookmarked = true;
            this.ivBookmark.setImageResource(R.drawable.ic_bookmark);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.tvNext) {
            if (this.currentPageId < this.list.size() - 1) {
                this.currentPageId++;
            }
            this.vpPager.setCurrentItem(this.currentPageId);
        } else if (id == R.id.tvPrev) {
            int i = this.currentPageId;
            if (i > 0) {
                this.currentPageId = i - 1;
            }
            this.vpPager.setCurrentItem(this.currentPageId);
        }
        setBottomCount();
    }

    private void setBottomCount() {
        this.tvPrev.setText("" + this.dayMarathi[this.currentPageId] + "/" + this.dayMarathi[this.list.size() - 1]);
    }
}
