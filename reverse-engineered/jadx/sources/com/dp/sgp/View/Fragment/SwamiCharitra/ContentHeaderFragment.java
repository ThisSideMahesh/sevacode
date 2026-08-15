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
public class ContentHeaderFragment extends Fragment {
    private ListData listData;
    private View rootView;
    private TextView tvContent;
    private TextView tvContentTitle;

    public static ContentHeaderFragment newInstance(Bundle bundle) {
        ContentHeaderFragment contentHeaderFragment = new ContentHeaderFragment();
        contentHeaderFragment.setArguments(bundle);
        return contentHeaderFragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.listData = (ListData) getArguments().getSerializable(PreferenceHelper.EXTRA_PARAMS_RESULT_KEY);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_content_header, viewGroup, false);
        this.rootView = viewInflate;
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvContentTitle);
        this.tvContentTitle = textView;
        textView.setText("" + this.listData.getTitle());
        return this.rootView;
    }
}
