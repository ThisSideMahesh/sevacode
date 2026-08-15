package com.dp.sgp.statefulllayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class StatefulLayout extends LinearLayout {
    private static final boolean DEFAULT_ANIM_ENABLED = true;
    private static final int DEFAULT_IN_ANIM = 17432576;
    private static final int DEFAULT_OUT_ANIM = 17432577;
    private static final String MSG_ONE_CHILD = "StatefulLayout must have one child!";
    private int animCounter;
    private boolean animationEnabled;
    private View content;
    private Animation inAnimation;
    private Animation outAnimation;
    private Button stButton;
    private LinearLayout stContainer;
    private ImageView stImage;
    private TextView stMessage;
    private ProgressBar stProgress;

    public StatefulLayout(Context context) {
        this(context, null);
    }

    public StatefulLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.stfStatefulLayout, 0, 0);
        this.animationEnabled = typedArrayObtainStyledAttributes.getBoolean(0, DEFAULT_ANIM_ENABLED);
        this.inAnimation = anim(typedArrayObtainStyledAttributes.getResourceId(1, 17432576));
        this.outAnimation = anim(typedArrayObtainStyledAttributes.getResourceId(2, 17432577));
        typedArrayObtainStyledAttributes.recycle();
    }

    public boolean isAnimationEnabled() {
        return this.animationEnabled;
    }

    public void setAnimationEnabled(boolean z) {
        this.animationEnabled = z;
    }

    public Animation getInAnimation() {
        return this.inAnimation;
    }

    public void setInAnimation(Animation animation) {
        this.inAnimation = animation;
    }

    public void setInAnimation(int i) {
        this.inAnimation = anim(i);
    }

    public Animation getOutAnimation() {
        return this.outAnimation;
    }

    public void setOutAnimation(Animation animation) {
        this.outAnimation = animation;
    }

    public void setOutAnimation(int i) {
        this.outAnimation = anim(i);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() > 1) {
            throw new IllegalStateException(MSG_ONE_CHILD);
        }
        if (isInEditMode()) {
            return;
        }
        setOrientation(1);
        this.content = getChildAt(0);
        LayoutInflater.from(getContext()).inflate(R.layout.stf_template, this, DEFAULT_ANIM_ENABLED);
        this.stContainer = (LinearLayout) findViewById(R.id.stContainer);
        this.stProgress = (ProgressBar) findViewById(R.id.stProgress);
        this.stImage = (ImageView) findViewById(R.id.stImage);
        this.stMessage = (TextView) findViewById(R.id.stMessage);
        this.stButton = (Button) findViewById(R.id.stButton);
    }

    public void showContent() {
        if (isAnimationEnabled()) {
            this.stContainer.clearAnimation();
            this.content.clearAnimation();
            final int i = this.animCounter + 1;
            this.animCounter = i;
            if (this.stContainer.getVisibility() == 0) {
                this.outAnimation.setAnimationListener(new CustomAnimationListener() { // from class: com.dp.sgp.statefulllayout.StatefulLayout.1
                    @Override // com.dp.sgp.statefulllayout.CustomAnimationListener, android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        if (StatefulLayout.this.animCounter != i) {
                            return;
                        }
                        StatefulLayout.this.stContainer.setVisibility(8);
                        StatefulLayout.this.content.setVisibility(0);
                        StatefulLayout.this.content.startAnimation(StatefulLayout.this.inAnimation);
                    }
                });
                this.stContainer.startAnimation(this.outAnimation);
                return;
            }
            return;
        }
        this.stContainer.setVisibility(8);
        this.content.setVisibility(0);
    }

    public void showLoading() {
        showLoading(R.string.stfLoadingMessage);
    }

    public void showLoading(int i) {
        showLoading(str(i));
    }

    public void showLoading(String str) {
        showCustom(new CustomStateOptions().message(str).loading());
    }

    public void showEmpty() {
        showEmpty(R.string.empty_message);
    }

    public void showEmpty(int i) {
        showEmpty(str(i));
    }

    public void showEmpty(String str) {
        showCustom(new CustomStateOptions().message(str).image(R.drawable.ic_amchyavishay));
    }

    public void showEmpty(int i, String str) {
        showCustom(new CustomStateOptions().message(str).image(i));
    }

    public void showError(View.OnClickListener onClickListener) {
        showError(R.string.stfErrorMessage, onClickListener);
    }

    public void showError(int i, View.OnClickListener onClickListener) {
        showError(str(i), onClickListener);
    }

    public void showError(String str, View.OnClickListener onClickListener) {
        showCustom(new CustomStateOptions().message(str).image(R.drawable.stf_ic_error).buttonText(str(R.string.stfButtonText)).buttonClickListener(onClickListener));
    }

    public void showOffline(View.OnClickListener onClickListener) {
        showOffline(R.string.stfOfflineMessage, onClickListener);
    }

    public void showOffline(int i, View.OnClickListener onClickListener) {
        showOffline(str(i), onClickListener);
    }

    public void showOffline(String str, View.OnClickListener onClickListener) {
        showCustom(new CustomStateOptions().message(str).image(R.drawable.stf_ic_offline).buttonText(str(R.string.stfButtonText)).buttonClickListener(onClickListener));
    }

    public void showLocationOff(View.OnClickListener onClickListener) {
        showLocationOff(R.string.stfLocationOffMessage, onClickListener);
    }

    public void showLocationOff(int i, View.OnClickListener onClickListener) {
        showLocationOff(str(i), onClickListener);
    }

    public void showLocationOff(String str, View.OnClickListener onClickListener) {
        showCustom(new CustomStateOptions().message(str).image(R.drawable.stf_ic_location_off).buttonText(str(R.string.stfButtonText)).buttonClickListener(onClickListener));
    }

    public void showCustom(final CustomStateOptions customStateOptions) {
        if (isAnimationEnabled()) {
            this.stContainer.clearAnimation();
            this.content.clearAnimation();
            final int i = this.animCounter + 1;
            this.animCounter = i;
            if (this.stContainer.getVisibility() == 8) {
                this.outAnimation.setAnimationListener(new CustomAnimationListener() { // from class: com.dp.sgp.statefulllayout.StatefulLayout.2
                    @Override // com.dp.sgp.statefulllayout.CustomAnimationListener, android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        if (i != StatefulLayout.this.animCounter) {
                            return;
                        }
                        StatefulLayout.this.content.setVisibility(8);
                        StatefulLayout.this.stContainer.setVisibility(0);
                        StatefulLayout.this.stContainer.startAnimation(StatefulLayout.this.inAnimation);
                    }
                });
                this.content.startAnimation(this.outAnimation);
                state(customStateOptions);
                return;
            } else {
                this.outAnimation.setAnimationListener(new CustomAnimationListener() { // from class: com.dp.sgp.statefulllayout.StatefulLayout.3
                    @Override // com.dp.sgp.statefulllayout.CustomAnimationListener, android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        if (i != StatefulLayout.this.animCounter) {
                            return;
                        }
                        StatefulLayout.this.state(customStateOptions);
                        StatefulLayout.this.stContainer.startAnimation(StatefulLayout.this.inAnimation);
                    }
                });
                this.stContainer.startAnimation(this.outAnimation);
                return;
            }
        }
        this.content.setVisibility(8);
        this.stContainer.setVisibility(0);
        state(customStateOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void state(CustomStateOptions customStateOptions) {
        if (!TextUtils.isEmpty(customStateOptions.getMessage())) {
            this.stMessage.setVisibility(0);
            this.stMessage.setText(customStateOptions.getMessage());
        } else {
            this.stMessage.setVisibility(8);
        }
        if (customStateOptions.isLoading()) {
            this.stProgress.setVisibility(0);
            this.stImage.setVisibility(8);
            this.stButton.setVisibility(8);
            return;
        }
        this.stProgress.setVisibility(8);
        if (customStateOptions.getImageRes() != 0) {
            this.stImage.setVisibility(0);
            this.stImage.setImageResource(customStateOptions.getImageRes());
        } else {
            this.stImage.setVisibility(8);
        }
        if (customStateOptions.getClickListener() != null) {
            this.stButton.setVisibility(0);
            this.stButton.setOnClickListener(customStateOptions.getClickListener());
            if (TextUtils.isEmpty(customStateOptions.getButtonText())) {
                return;
            }
            this.stButton.setText(customStateOptions.getButtonText());
            return;
        }
        this.stButton.setVisibility(8);
    }

    private String str(int i) {
        return getContext().getString(i);
    }

    private Animation anim(int i) {
        return AnimationUtils.loadAnimation(getContext(), i);
    }
}
