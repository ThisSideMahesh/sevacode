package com.dp.sgp.View.Fragment.NityaSevaDetails;

import android.animation.ObjectAnimator;
import android.graphics.drawable.AnimationDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.Base.UiHelper;
import com.dp.sgp.Constants.PreferenceHelper;
import com.dp.sgp.Model.ChantingData;
import com.dp.sgp.R;
import java.util.Timer;

/* JADX INFO: loaded from: classes.dex */
public class MantraJapFragment extends Fragment {
    private ChantingData chantingData;
    private ImageView imageView;
    private ImageView ivBookmark;
    private AnimationDrawable loadingAnimation;
    MediaPlayer mp;
    private Timer myTimer;
    private RelativeLayout rlBookmark;
    private RelativeLayout rlRoot;
    private View rootView;
    private TextView tvCount;
    private TextView tvCountTitle;
    private TextView tvRound;
    private TextView tvRoundTitle;
    View v;
    Vibrator vibrt;
    private boolean isBookmarked = false;
    private int DELAY = 290;
    private int mRound = 0;
    private int mCount = 0;
    long[] pattern = {1000, 100};

    static /* synthetic */ int access$808(MantraJapFragment mantraJapFragment) {
        int i = mantraJapFragment.mRound;
        mantraJapFragment.mRound = i + 1;
        return i;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        UiHelper.hideKeyboard(getActivity());
        if (getArguments() != null) {
            this.chantingData = (ChantingData) getArguments().getSerializable(PreferenceHelper.EXTRA_PARAMS_RESULT_KEY);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.rootView = layoutInflater.inflate(R.layout.fragment_mantra_jap, viewGroup, false);
        getActivity().setTitle("मंत्र जप");
        findViews();
        this.vibrt = (Vibrator) getActivity().getSystemService("vibrator");
        this.mp = MediaPlayer.create(getActivity(), R.raw.sounds_sorted);
        return this.rootView;
    }

    private void findViews() {
        this.imageView = (ImageView) this.rootView.findViewById(R.id.ivLoading);
        this.tvRoundTitle = (TextView) this.rootView.findViewById(R.id.tvRoundTitle);
        this.tvCountTitle = (TextView) this.rootView.findViewById(R.id.tvCountTitle);
        this.tvRound = (TextView) this.rootView.findViewById(R.id.tvRound);
        this.tvCount = (TextView) this.rootView.findViewById(R.id.tvCount);
        this.rlBookmark = (RelativeLayout) this.rootView.findViewById(R.id.rlBookmark);
        this.ivBookmark = (ImageView) this.rootView.findViewById(R.id.ivBookmark);
        this.rlRoot = (RelativeLayout) this.rootView.findViewById(R.id.root);
        this.tvCountTitle.setText("" + this.chantingData.getCount());
        this.tvRoundTitle.setText("" + this.chantingData.getRound());
        this.imageView.setBackgroundResource(R.drawable.loading_animation);
        this.loadingAnimation = (AnimationDrawable) this.imageView.getBackground();
        this.rlRoot.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.MantraJapFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MantraJapFragment.this.startChanting();
                MantraJapFragment.this.isBookmarked = false;
                MantraJapFragment.this.ivBookmark.setImageResource(R.drawable.ic_bookmark_inactive);
            }
        });
        if (PreferenceHelper.getIntPreferenceValue(getActivity(), PreferenceHelper.CHANTING_COUNT_BOOKMARK) > 0) {
            this.isBookmarked = true;
            this.ivBookmark.setImageResource(R.drawable.ic_bookmark);
            this.tvCount.setText("" + PreferenceHelper.getIntPreferenceValue(getActivity(), PreferenceHelper.CHANTING_COUNT_BOOKMARK));
            int intPreferenceValue = PreferenceHelper.getIntPreferenceValue(getActivity(), PreferenceHelper.CHANTING_COUNT_BOOKMARK);
            this.mCount = intPreferenceValue;
            if (intPreferenceValue == this.chantingData.getCount()) {
                this.mCount--;
            }
        } else {
            this.isBookmarked = false;
            this.ivBookmark.setImageResource(R.drawable.ic_bookmark_inactive);
            this.tvCount.setText("");
        }
        if (PreferenceHelper.getIntPreferenceValue(getActivity(), PreferenceHelper.CHANTING_ROUND_BOOKMARK) > 0) {
            this.tvRound.setText("" + PreferenceHelper.getIntPreferenceValue(getActivity(), PreferenceHelper.CHANTING_ROUND_BOOKMARK));
            this.mRound = PreferenceHelper.getIntPreferenceValue(getActivity(), PreferenceHelper.CHANTING_ROUND_BOOKMARK);
        } else {
            this.tvRound.setText("");
        }
        this.rlBookmark.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.MantraJapFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MantraJapFragment mantraJapFragment = MantraJapFragment.this;
                mantraJapFragment.isBookmarked = !mantraJapFragment.isBookmarked;
                if (MantraJapFragment.this.isBookmarked) {
                    MantraJapFragment.this.ivBookmark.setImageResource(R.drawable.ic_bookmark);
                    try {
                        PreferenceHelper.setPreferenceValue(MantraJapFragment.this.getActivity(), PreferenceHelper.CHANTING_COUNT_BOOKMARK, Integer.parseInt(MantraJapFragment.this.tvCount.getText().toString()));
                    } catch (Exception unused) {
                    }
                    try {
                        PreferenceHelper.setPreferenceValue(MantraJapFragment.this.getActivity(), PreferenceHelper.CHANTING_ROUND_BOOKMARK, Integer.parseInt(MantraJapFragment.this.tvRound.getText().toString()));
                    } catch (Exception unused2) {
                    }
                    Toast.makeText(MantraJapFragment.this.getActivity(), MantraJapFragment.this.getResources().getString(R.string.seva_saved), 0).show();
                    return;
                }
                MantraJapFragment.this.ivBookmark.setImageResource(R.drawable.ic_bookmark_inactive);
                PreferenceHelper.setPreferenceValue(MantraJapFragment.this.getActivity(), PreferenceHelper.CHANTING_COUNT_BOOKMARK, 0);
                PreferenceHelper.setPreferenceValue(MantraJapFragment.this.getActivity(), PreferenceHelper.CHANTING_ROUND_BOOKMARK, 0);
                MantraJapFragment.this.tvCount.setText("");
                MantraJapFragment.this.tvRound.setText("");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startChanting() {
        this.mCount++;
        if (this.mRound >= this.chantingData.getRound()) {
            this.rlRoot.setClickable(false);
            return;
        }
        if (this.mCount < this.chantingData.getCount()) {
            this.imageView.setBackgroundResource(R.drawable.loading_animation);
            AnimationDrawable animationDrawable = (AnimationDrawable) this.imageView.getBackground();
            this.loadingAnimation = animationDrawable;
            animationDrawable.start();
            checkFlagsForCount();
            new Handler().postDelayed(new Runnable() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.MantraJapFragment.3
                @Override // java.lang.Runnable
                public void run() {
                    MantraJapFragment.this.loadingAnimation.stop();
                    if (MantraJapFragment.this.mCount <= MantraJapFragment.this.chantingData.getCount()) {
                        MantraJapFragment.this.tvCount.setText("" + MantraJapFragment.this.mCount);
                    }
                    if (MantraJapFragment.this.mRound > 0) {
                        MantraJapFragment.this.tvRound.setText("" + MantraJapFragment.this.mRound);
                    }
                }
            }, this.DELAY);
            return;
        }
        if (this.mCount == this.chantingData.getCount()) {
            this.imageView.setBackgroundResource(R.drawable.loading_animation);
            AnimationDrawable animationDrawable2 = (AnimationDrawable) this.imageView.getBackground();
            this.loadingAnimation = animationDrawable2;
            animationDrawable2.start();
            checkFlagsForRound();
            new Handler().postDelayed(new Runnable() { // from class: com.dp.sgp.View.Fragment.NityaSevaDetails.MantraJapFragment.4
                @Override // java.lang.Runnable
                public void run() {
                    MantraJapFragment.this.loadingAnimation.stop();
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(MantraJapFragment.this.imageView, "rotationY", 180.0f, 0.0f);
                    objectAnimatorOfFloat.setDuration(1000L);
                    objectAnimatorOfFloat.start();
                    MantraJapFragment.access$808(MantraJapFragment.this);
                    if (MantraJapFragment.this.mCount <= MantraJapFragment.this.chantingData.getCount()) {
                        MantraJapFragment.this.tvCount.setText("" + MantraJapFragment.this.mCount);
                    }
                    MantraJapFragment.this.mCount = 0;
                    if (MantraJapFragment.this.mRound > 0) {
                        MantraJapFragment.this.tvRound.setText("" + MantraJapFragment.this.mRound);
                    }
                }
            }, this.DELAY);
        }
    }

    private void checkFlagsForCount() {
        if (this.chantingData.isSound()) {
            try {
                this.mp.stop();
                this.mp.release();
                MediaPlayer mediaPlayerCreate = MediaPlayer.create(getActivity(), R.raw.sounds_sorted);
                this.mp = mediaPlayerCreate;
                mediaPlayerCreate.start();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.chantingData.isVibrate()) {
            this.vibrt.vibrate(100L);
        }
    }

    private void checkFlagsForRound() {
        if (this.chantingData.isSound()) {
            this.mp.start();
        }
        this.vibrt.vibrate(1000L);
    }
}
