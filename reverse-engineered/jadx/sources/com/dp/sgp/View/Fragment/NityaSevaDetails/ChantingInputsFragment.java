package com.dp.sgp.View.Fragment.NityaSevaDetails;

import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.dp.sgp.Base.BaseFragment;
import com.dp.sgp.Constants.PreferenceHelper;
import com.dp.sgp.Model.ChantingData;
import com.dp.sgp.R;
import com.dp.sgp.bottomsheets.ChantingHelpBottomSheet;

/* JADX INFO: loaded from: classes.dex */
public class ChantingInputsFragment extends BaseFragment implements View.OnClickListener {
    private EditText edtCount;
    private EditText edtRound;
    private boolean isAuto;
    private boolean isSound;
    private boolean isVibration;
    private ImageView ivPlay;
    private View rootView;
    private TextView tvAuto;
    private TextView tvHelp;
    private TextView tvSound;
    private TextView tvTitle;
    private TextView tvVibration;

    @Override // com.dp.sgp.Base.BaseFragment
    public void reloadData() {
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.rootView = layoutInflater.inflate(R.layout.fragment_chanting_inputs, viewGroup, false);
        findViews();
        getActivity().setTitle(getResources().getString(R.string.lbl_mantra_jap));
        return this.rootView;
    }

    private void findViews() {
        this.rootView.findViewById(R.id.root).setOnClickListener(null);
        TextView textView = (TextView) this.rootView.findViewById(R.id.tvTitle);
        this.tvTitle = textView;
        textView.setText(getResources().getString(R.string.lbl_mantra_jap));
        this.edtCount = (EditText) this.rootView.findViewById(R.id.edtCount);
        EditText editText = (EditText) this.rootView.findViewById(R.id.edtRound);
        this.edtRound = editText;
        editText.requestFocus();
        this.ivPlay = (ImageView) this.rootView.findViewById(R.id.ivPlay);
        this.tvAuto = (TextView) this.rootView.findViewById(R.id.tvAuto);
        this.tvVibration = (TextView) this.rootView.findViewById(R.id.tvVibration);
        this.tvSound = (TextView) this.rootView.findViewById(R.id.tvSound);
        this.tvHelp = (TextView) this.rootView.findViewById(R.id.tvHelp);
        this.ivPlay.setOnClickListener(this);
        this.tvAuto.setOnClickListener(this);
        this.tvVibration.setOnClickListener(this);
        this.tvSound.setOnClickListener(this);
        this.tvHelp.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ivPlay /* 2131361991 */:
                getActivity().getSupportFragmentManager();
                ChantingData chantingData = new ChantingData();
                try {
                    chantingData.setRound(Integer.parseInt(this.edtRound.getText().toString()));
                } catch (NumberFormatException unused) {
                    chantingData.setRound(0);
                }
                try {
                    chantingData.setCount(Integer.parseInt(this.edtCount.getText().toString()));
                } catch (NumberFormatException unused2) {
                    chantingData.setCount(0);
                }
                chantingData.setAuto(this.isAuto);
                chantingData.setVibrate(this.isVibration);
                chantingData.setSound(this.isSound);
                Bundle bundle = new Bundle();
                bundle.putSerializable(PreferenceHelper.EXTRA_PARAMS_RESULT_KEY, chantingData);
                MantraJapFragment mantraJapFragment = new MantraJapFragment();
                mantraJapFragment.setArguments(bundle);
                getFragmentManager().beginTransaction().replace(R.id.layout, mantraJapFragment).addToBackStack(null).commit();
                break;
            case R.id.tvAuto /* 2131362296 */:
                boolean z = !this.isAuto;
                this.isAuto = z;
                if (z) {
                    this.tvAuto.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_auto, 0, 0);
                    this.tvAuto.setTextColor(ContextCompat.getColor(getActivity(), R.color.white));
                } else {
                    this.tvAuto.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_auto_inactive, 0, 0);
                    this.tvAuto.setTextColor(ContextCompat.getColor(getActivity(), R.color.trans_white));
                }
                break;
            case R.id.tvHelp /* 2131362306 */:
                ChantingHelpBottomSheet chantingHelpBottomSheet = new ChantingHelpBottomSheet();
                chantingHelpBottomSheet.show(getFragmentManager(), chantingHelpBottomSheet.getTag());
                break;
            case R.id.tvSound /* 2131362324 */:
                boolean z2 = !this.isSound;
                this.isSound = z2;
                if (z2) {
                    this.tvSound.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_sound, 0, 0);
                    this.tvSound.setTextColor(ContextCompat.getColor(getActivity(), R.color.white));
                } else {
                    this.tvSound.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_sound_inactive, 0, 0);
                    this.tvSound.setTextColor(ContextCompat.getColor(getActivity(), R.color.trans_white));
                }
                break;
            case R.id.tvVibration /* 2131362331 */:
                boolean z3 = !this.isVibration;
                this.isVibration = z3;
                if (z3) {
                    this.tvVibration.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_vibration, 0, 0);
                    this.tvVibration.setTextColor(ContextCompat.getColor(getActivity(), R.color.white));
                } else {
                    this.tvVibration.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_vibration_inactive, 0, 0);
                    this.tvVibration.setTextColor(ContextCompat.getColor(getActivity(), R.color.trans_white));
                }
                break;
        }
    }
}
