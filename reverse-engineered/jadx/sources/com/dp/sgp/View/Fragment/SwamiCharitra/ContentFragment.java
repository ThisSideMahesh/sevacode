package com.dp.sgp.View.Fragment.SwamiCharitra;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.dp.sgp.Constants.PreferenceHelper;
import com.dp.sgp.Model.ListData;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class ContentFragment extends Fragment {
    private ListData listData;
    private String listType;
    private View rootView;
    private TextView tvContent;
    private TextView tvContentTitle;

    public static ContentFragment newInstance(Bundle bundle) {
        ContentFragment contentFragment = new ContentFragment();
        contentFragment.setArguments(bundle);
        return contentFragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.listData = (ListData) getArguments().getSerializable(PreferenceHelper.EXTRA_PARAMS_RESULT_KEY);
            this.listType = getArguments().getString(PreferenceHelper.EXTRA_PARAMS_LIST_TYPE);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.listType.equals(PreferenceHelper.LIST_SWAMI_CHARITRA) || this.listType.equals(PreferenceHelper.LIST_SWAMI_CHARITRA_700)) {
            this.rootView = layoutInflater.inflate(R.layout.fragment_content, viewGroup, false);
        } else {
            this.rootView = layoutInflater.inflate(R.layout.fragment_content_aarati, viewGroup, false);
        }
        this.tvContentTitle = (TextView) this.rootView.findViewById(R.id.tvContentTitle);
        this.tvContent = (TextView) this.rootView.findViewById(R.id.tvContent);
        this.tvContentTitle.setText("" + this.listData.getTitle());
        if (this.listType.equals(PreferenceHelper.LIST_AARTI)) {
            this.tvContent.setText(getStringResourceByName("txt_Aarti_" + this.listData.getId()));
        } else if (this.listType.equals(PreferenceHelper.LIST_STOTRA)) {
            this.tvContent.setText(getStringResourceByName("txt_SM_" + (this.listData.getId() + 1)));
        } else if (this.listType.equals(PreferenceHelper.LIST_SWAMI_CHARITRA)) {
            this.tvContent.setText(getStringResourceByName("lbl_AAdhyay" + (this.listData.getId() + 1)));
        } else if (this.listType.equals(PreferenceHelper.LIST_SWAMI_CHARITRA_700)) {
            this.tvContent.setText(getStringResourceByName("lbl_AAdhyay_700_" + (this.listData.getId() + 1)));
        }
        return this.rootView;
    }

    private String getStringResourceByName(String str) {
        return getResources().getString(getResources().getIdentifier(str, "string", getActivity().getPackageName()));
    }
}
