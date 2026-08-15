package com.dp.sgp.autoimageslider;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Handler;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import com.dp.sgp.R;
import com.dp.sgp.autoimageslider.IndicatorView.PageIndicatorView;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.ColorAnimation;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.IndicatorAnimationType;
import com.dp.sgp.autoimageslider.IndicatorView.draw.controller.AttributeController;
import com.dp.sgp.autoimageslider.IndicatorView.draw.controller.DrawController;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Orientation;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.RtlMode;
import com.dp.sgp.autoimageslider.IndicatorView.utils.DensityUtils;
import com.dp.sgp.autoimageslider.InfiniteAdapter.InfinitePagerAdapter;
import com.dp.sgp.autoimageslider.Transformations.AntiClockSpinTransformation;
import com.dp.sgp.autoimageslider.Transformations.Clock_SpinTransformation;
import com.dp.sgp.autoimageslider.Transformations.CubeInDepthTransformation;
import com.dp.sgp.autoimageslider.Transformations.CubeInRotationTransformation;
import com.dp.sgp.autoimageslider.Transformations.CubeInScalingTransformation;
import com.dp.sgp.autoimageslider.Transformations.CubeOutDepthTransformation;
import com.dp.sgp.autoimageslider.Transformations.CubeOutRotationTransformation;
import com.dp.sgp.autoimageslider.Transformations.CubeOutScalingTransformation;
import com.dp.sgp.autoimageslider.Transformations.DepthTransformation;
import com.dp.sgp.autoimageslider.Transformations.FadeTransformation;
import com.dp.sgp.autoimageslider.Transformations.FanTransformation;
import com.dp.sgp.autoimageslider.Transformations.FidgetSpinTransformation;
import com.dp.sgp.autoimageslider.Transformations.GateTransformation;
import com.dp.sgp.autoimageslider.Transformations.HingeTransformation;
import com.dp.sgp.autoimageslider.Transformations.HorizontalFlipTransformation;
import com.dp.sgp.autoimageslider.Transformations.PopTransformation;
import com.dp.sgp.autoimageslider.Transformations.SimpleTransformation;
import com.dp.sgp.autoimageslider.Transformations.SpinnerTransformation;
import com.dp.sgp.autoimageslider.Transformations.TossTransformation;
import com.dp.sgp.autoimageslider.Transformations.VerticalFlipTransformation;
import com.dp.sgp.autoimageslider.Transformations.VerticalShutTransformation;
import com.dp.sgp.autoimageslider.Transformations.ZoomOutTransformation;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class SliderView extends FrameLayout implements Runnable, View.OnTouchListener, SliderViewAdapter.DataSetListener, SliderPager.OnPageChangeListener {
    public static final int AUTO_CYCLE_DIRECTION_BACK_AND_FORTH = 2;
    public static final int AUTO_CYCLE_DIRECTION_LEFT = 1;
    public static final int AUTO_CYCLE_DIRECTION_RIGHT = 0;
    public static final String TAG = "Slider View : ";
    private int mAutoCycleDirection;
    private boolean mFlagBackAndForth;
    private final Handler mHandler;
    private InfinitePagerAdapter mInfinitePagerAdapter;
    private boolean mIsAutoCycle;
    private boolean mIsIndicatorEnabled;
    private boolean mIsInfiniteAdapter;
    private OnSliderPageListener mPageListener;
    private SliderViewAdapter mPagerAdapter;
    private PageIndicatorView mPagerIndicator;
    private int mPreviousPosition;
    private int mScrollTimeInMillis;
    private SliderPager mSliderPager;

    public interface OnSliderPageListener {
        void onSliderPageChanged(int i);
    }

    @Override // com.dp.sgp.autoimageslider.SliderPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // com.dp.sgp.autoimageslider.SliderPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    public SliderView(Context context) {
        super(context);
        this.mHandler = new Handler();
        this.mIsInfiniteAdapter = true;
        this.mIsIndicatorEnabled = true;
        this.mPreviousPosition = -1;
        setupSlideView(context);
    }

    public SliderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHandler = new Handler();
        this.mIsInfiniteAdapter = true;
        this.mIsIndicatorEnabled = true;
        this.mPreviousPosition = -1;
        setupSlideView(context);
        setUpAttributes(context, attributeSet);
    }

    public SliderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHandler = new Handler();
        this.mIsInfiniteAdapter = true;
        this.mIsIndicatorEnabled = true;
        this.mPreviousPosition = -1;
        setupSlideView(context);
        setUpAttributes(context, attributeSet);
    }

    private void setUpAttributes(Context context, AttributeSet attributeSet) {
        Orientation orientation;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SliderView, 0, 0);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(4, true);
        int i = typedArrayObtainStyledAttributes.getInt(0, 250);
        int i2 = typedArrayObtainStyledAttributes.getInt(17, 2);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(2, true);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(18, false);
        int i3 = typedArrayObtainStyledAttributes.getInt(1, 0);
        setSliderAnimationDuration(i);
        setScrollTimeInSec(i2);
        setAutoCycle(z2);
        setAutoCycleDirection(i3);
        setAutoCycle(z3);
        setIndicatorEnabled(z);
        if (this.mIsIndicatorEnabled) {
            initIndicator();
            if (typedArrayObtainStyledAttributes.getInt(11, Orientation.HORIZONTAL.ordinal()) == 0) {
                orientation = Orientation.HORIZONTAL;
            } else {
                orientation = Orientation.VERTICAL;
            }
            int dimension = (int) typedArrayObtainStyledAttributes.getDimension(13, DensityUtils.dpToPx(2));
            int dimension2 = (int) typedArrayObtainStyledAttributes.getDimension(12, DensityUtils.dpToPx(3));
            int dimension3 = (int) typedArrayObtainStyledAttributes.getDimension(6, DensityUtils.dpToPx(12));
            int dimension4 = (int) typedArrayObtainStyledAttributes.getDimension(8, DensityUtils.dpToPx(12));
            int dimension5 = (int) typedArrayObtainStyledAttributes.getDimension(10, DensityUtils.dpToPx(12));
            int dimension6 = (int) typedArrayObtainStyledAttributes.getDimension(9, DensityUtils.dpToPx(12));
            int dimension7 = (int) typedArrayObtainStyledAttributes.getDimension(7, DensityUtils.dpToPx(12));
            int i4 = typedArrayObtainStyledAttributes.getInt(5, 81);
            int color = typedArrayObtainStyledAttributes.getColor(16, Color.parseColor(ColorAnimation.DEFAULT_UNSELECTED_COLOR));
            int color2 = typedArrayObtainStyledAttributes.getColor(15, Color.parseColor(ColorAnimation.DEFAULT_SELECTED_COLOR));
            int i5 = typedArrayObtainStyledAttributes.getInt(3, BaseAnimation.DEFAULT_ANIMATION_TIME);
            RtlMode rtlMode = AttributeController.getRtlMode(typedArrayObtainStyledAttributes.getInt(14, RtlMode.Off.ordinal()));
            setIndicatorOrientation(orientation);
            setIndicatorRadius(dimension);
            setIndicatorPadding(dimension2);
            setIndicatorMargin(dimension3);
            setIndicatorMarginCustom(dimension4, dimension5, dimension6, dimension7);
            setIndicatorGravity(i4);
            setIndicatorMargins(dimension4, dimension5, dimension6, dimension7);
            setIndicatorUnselectedColor(color);
            setIndicatorSelectedColor(color2);
            setIndicatorAnimationDuration(i5);
            setIndicatorRtlMode(rtlMode);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void initIndicator() {
        if (this.mPagerIndicator == null) {
            this.mPagerIndicator = new PageIndicatorView(getContext());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 81;
            layoutParams.setMargins(20, 20, 20, 20);
            addView(this.mPagerIndicator, 1, layoutParams);
        }
        this.mPagerIndicator.setViewPager(this.mSliderPager);
        this.mPagerIndicator.setDynamicCount(true);
    }

    private void setupSlideView(Context context) {
        SliderPager sliderPager = new SliderPager(context);
        this.mSliderPager = sliderPager;
        sliderPager.setOverScrollMode(1);
        this.mSliderPager.setId(ViewCompat.generateViewId());
        addView(this.mSliderPager, 0, new FrameLayout.LayoutParams(-1, -1));
        this.mSliderPager.setOnTouchListener(this);
        this.mSliderPager.addOnPageChangeListener(this);
    }

    public void setOnIndicatorClickListener(DrawController.ClickListener clickListener) {
        this.mPagerIndicator.setClickListener(clickListener);
    }

    public void setCurrentPageListener(OnSliderPageListener onSliderPageListener) {
        this.mPageListener = onSliderPageListener;
    }

    public void setSliderAdapter(SliderViewAdapter sliderViewAdapter) {
        this.mPagerAdapter = sliderViewAdapter;
        InfinitePagerAdapter infinitePagerAdapter = new InfinitePagerAdapter(sliderViewAdapter);
        this.mInfinitePagerAdapter = infinitePagerAdapter;
        this.mSliderPager.setAdapter(infinitePagerAdapter);
        this.mPagerAdapter.dataSetChangedListener(this);
        setCurrentPagePosition(0);
    }

    public void setSliderAdapter(SliderViewAdapter sliderViewAdapter, boolean z) {
        this.mIsInfiniteAdapter = z;
        if (!z) {
            this.mPagerAdapter = sliderViewAdapter;
            this.mSliderPager.setAdapter(sliderViewAdapter);
        } else {
            setSliderAdapter(sliderViewAdapter);
        }
    }

    public void setInfiniteAdapterEnabled(boolean z) {
        SliderViewAdapter sliderViewAdapter = this.mPagerAdapter;
        if (sliderViewAdapter != null) {
            setSliderAdapter(sliderViewAdapter, z);
        }
    }

    public SliderPager getSliderPager() {
        return this.mSliderPager;
    }

    public PagerAdapter getSliderAdapter() {
        return this.mPagerAdapter;
    }

    public boolean isAutoCycle() {
        return this.mIsAutoCycle;
    }

    public void setAutoCycle(boolean z) {
        this.mIsAutoCycle = z;
    }

    public void setOffscreenPageLimit(int i) {
        this.mSliderPager.setOffscreenPageLimit(i);
    }

    public int getScrollTimeInSec() {
        return this.mScrollTimeInMillis / 1000;
    }

    public void setScrollTimeInSec(int i) {
        this.mScrollTimeInMillis = i * 1000;
    }

    public int getScrollTimeInMillis() {
        return this.mScrollTimeInMillis;
    }

    public void setScrollTimeInMillis(int i) {
        this.mScrollTimeInMillis = i;
    }

    /* JADX INFO: renamed from: com.dp.sgp.autoimageslider.SliderView$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations;

        static {
            int[] iArr = new int[SliderAnimations.values().length];
            $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations = iArr;
            try {
                iArr[SliderAnimations.ANTICLOCKSPINTRANSFORMATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.CLOCK_SPINTRANSFORMATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.CUBEINDEPTHTRANSFORMATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.CUBEINROTATIONTRANSFORMATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.CUBEINSCALINGTRANSFORMATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.CUBEOUTDEPTHTRANSFORMATION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.CUBEOUTROTATIONTRANSFORMATION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.CUBEOUTSCALINGTRANSFORMATION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.DEPTHTRANSFORMATION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.FADETRANSFORMATION.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.FANTRANSFORMATION.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.FIDGETSPINTRANSFORMATION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.GATETRANSFORMATION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.HINGETRANSFORMATION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.HORIZONTALFLIPTRANSFORMATION.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.POPTRANSFORMATION.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.SPINNERTRANSFORMATION.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.TOSSTRANSFORMATION.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.VERTICALFLIPTRANSFORMATION.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.VERTICALSHUTTRANSFORMATION.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[SliderAnimations.ZOOMOUTTRANSFORMATION.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    public void setSliderTransformAnimation(SliderAnimations sliderAnimations) {
        switch (AnonymousClass2.$SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations[sliderAnimations.ordinal()]) {
            case 1:
                this.mSliderPager.setPageTransformer(false, new AntiClockSpinTransformation());
                break;
            case 2:
                this.mSliderPager.setPageTransformer(false, new Clock_SpinTransformation());
                break;
            case 3:
                this.mSliderPager.setPageTransformer(false, new CubeInDepthTransformation());
                break;
            case 4:
                this.mSliderPager.setPageTransformer(false, new CubeInRotationTransformation());
                break;
            case 5:
                this.mSliderPager.setPageTransformer(false, new CubeInScalingTransformation());
                break;
            case 6:
                this.mSliderPager.setPageTransformer(false, new CubeOutDepthTransformation());
                break;
            case 7:
                this.mSliderPager.setPageTransformer(false, new CubeOutRotationTransformation());
                break;
            case 8:
                this.mSliderPager.setPageTransformer(false, new CubeOutScalingTransformation());
                break;
            case 9:
                this.mSliderPager.setPageTransformer(false, new DepthTransformation());
                break;
            case 10:
                this.mSliderPager.setPageTransformer(false, new FadeTransformation());
                break;
            case 11:
                this.mSliderPager.setPageTransformer(false, new FanTransformation());
                break;
            case 12:
                this.mSliderPager.setPageTransformer(false, new FidgetSpinTransformation());
                break;
            case 13:
                this.mSliderPager.setPageTransformer(false, new GateTransformation());
                break;
            case 14:
                this.mSliderPager.setPageTransformer(false, new HingeTransformation());
                break;
            case 15:
                this.mSliderPager.setPageTransformer(false, new HorizontalFlipTransformation());
                break;
            case 16:
                this.mSliderPager.setPageTransformer(false, new PopTransformation());
                break;
            case 17:
                this.mSliderPager.setPageTransformer(false, new SpinnerTransformation());
                break;
            case 18:
                this.mSliderPager.setPageTransformer(false, new TossTransformation());
                break;
            case 19:
                this.mSliderPager.setPageTransformer(false, new VerticalFlipTransformation());
                break;
            case 20:
                this.mSliderPager.setPageTransformer(false, new VerticalShutTransformation());
                break;
            case 21:
                this.mSliderPager.setPageTransformer(false, new ZoomOutTransformation());
                break;
            default:
                this.mSliderPager.setPageTransformer(false, new SimpleTransformation());
                break;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!isAutoCycle()) {
            return false;
        }
        if (motionEvent.getAction() == 2) {
            stopAutoCycle();
            return false;
        }
        if (motionEvent.getAction() != 1) {
            return false;
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.dp.sgp.autoimageslider.SliderView.1
            @Override // java.lang.Runnable
            public void run() {
                SliderView.this.startAutoCycle();
            }
        }, 2000L);
        return false;
    }

    public void setCustomSliderTransformAnimation(SliderPager.PageTransformer pageTransformer) {
        this.mSliderPager.setPageTransformer(false, pageTransformer);
    }

    public void setSliderAnimationDuration(int i) {
        this.mSliderPager.setScrollDuration(i);
    }

    public void setSliderAnimationDuration(int i, Interpolator interpolator) {
        this.mSliderPager.setScrollDuration(i, interpolator);
    }

    public void setCurrentPagePosition(int i) {
        this.mSliderPager.setCurrentItem(i, true);
    }

    public int getCurrentPagePosition() {
        Objects.requireNonNull(getSliderAdapter(), "Adapter not set");
        return getSliderPager().getCurrentItem();
    }

    public PageIndicatorView getPagerIndicator() {
        return this.mPagerIndicator;
    }

    public void setPageIndicatorView(PageIndicatorView pageIndicatorView) {
        this.mPagerIndicator = pageIndicatorView;
        initIndicator();
    }

    public void setIndicatorEnabled(boolean z) {
        this.mIsIndicatorEnabled = z;
        if (this.mPagerIndicator == null && z) {
            initIndicator();
        }
    }

    public void setIndicatorAnimationDuration(long j) {
        this.mPagerIndicator.setAnimationDuration(j);
    }

    public void setIndicatorGravity(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPagerIndicator.getLayoutParams();
        layoutParams.gravity = i;
        this.mPagerIndicator.setLayoutParams(layoutParams);
    }

    public void setIndicatorPadding(int i) {
        this.mPagerIndicator.setPadding(i);
    }

    public void setIndicatorMargins(int i, int i2, int i3, int i4) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPagerIndicator.getLayoutParams();
        layoutParams.setMargins(i, i2, i3, i4);
        this.mPagerIndicator.setLayoutParams(layoutParams);
    }

    public void setIndicatorOrientation(Orientation orientation) {
        this.mPagerIndicator.setOrientation(orientation);
    }

    public void setIndicatorAnimation(IndicatorAnimationType indicatorAnimationType) {
        this.mPagerIndicator.setAnimationType(indicatorAnimationType);
    }

    public void setIndicatorVisibility(boolean z) {
        if (z) {
            this.mPagerIndicator.setVisibility(0);
        } else {
            this.mPagerIndicator.setVisibility(8);
        }
    }

    private int getAdapterItemsCount() {
        try {
            return getSliderAdapter().getCount();
        } catch (NullPointerException unused) {
            Log.e(TAG, "getAdapterItemsCount: Slider Adapter is null so, it can't get count of items");
            return 0;
        }
    }

    public void startAutoCycle() {
        this.mHandler.removeCallbacks(this);
        this.mHandler.postDelayed(this, this.mScrollTimeInMillis);
    }

    public void stopAutoCycle() {
        this.mHandler.removeCallbacks(this);
    }

    public void setAutoCycleDirection(int i) {
        this.mAutoCycleDirection = i;
    }

    public int getAutoCycleDirection() {
        return this.mAutoCycleDirection;
    }

    public int getIndicatorRadius() {
        return this.mPagerIndicator.getRadius();
    }

    public void setIndicatorRtlMode(RtlMode rtlMode) {
        this.mPagerIndicator.setRtlMode(rtlMode);
    }

    public void setIndicatorRadius(int i) {
        this.mPagerIndicator.setRadius(i);
    }

    public void setIndicatorMargin(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPagerIndicator.getLayoutParams();
        layoutParams.setMargins(i, i, i, i);
        this.mPagerIndicator.setLayoutParams(layoutParams);
    }

    public void setIndicatorMarginCustom(int i, int i2, int i3, int i4) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPagerIndicator.getLayoutParams();
        layoutParams.setMargins(i, i2, i3, i4);
        this.mPagerIndicator.setLayoutParams(layoutParams);
    }

    public void setIndicatorSelectedColor(int i) {
        this.mPagerIndicator.setSelectedColor(i);
    }

    public int getIndicatorSelectedColor() {
        return this.mPagerIndicator.getSelectedColor();
    }

    public void setIndicatorUnselectedColor(int i) {
        this.mPagerIndicator.setUnselectedColor(i);
    }

    public int getIndicatorUnselectedColor() {
        return this.mPagerIndicator.getUnselectedColor();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            slideToNextPosition();
        } finally {
            if (this.mIsAutoCycle) {
                this.mHandler.postDelayed(this, this.mScrollTimeInMillis);
            }
        }
    }

    public void slideToNextPosition() {
        int currentItem = this.mSliderPager.getCurrentItem();
        int adapterItemsCount = getAdapterItemsCount();
        if (adapterItemsCount > 1) {
            if (this.mAutoCycleDirection == 2) {
                if (currentItem % (adapterItemsCount - 1) == 0 && this.mPreviousPosition != getAdapterItemsCount() - 1 && this.mPreviousPosition != 0) {
                    this.mFlagBackAndForth = !this.mFlagBackAndForth;
                }
                if (this.mFlagBackAndForth) {
                    this.mSliderPager.setCurrentItem(currentItem + 1, true);
                } else {
                    this.mSliderPager.setCurrentItem(currentItem - 1, true);
                }
            }
            if (this.mAutoCycleDirection == 1) {
                this.mSliderPager.setCurrentItem(currentItem - 1, true);
            }
            if (this.mAutoCycleDirection == 0) {
                this.mSliderPager.setCurrentItem(currentItem + 1, true);
            }
        }
        this.mPreviousPosition = currentItem;
    }

    public void slideToPreviousPosition() {
        int currentItem = this.mSliderPager.getCurrentItem();
        int adapterItemsCount = getAdapterItemsCount();
        if (adapterItemsCount > 1) {
            if (this.mAutoCycleDirection == 2) {
                if (currentItem % (adapterItemsCount - 1) == 0 && this.mPreviousPosition != getAdapterItemsCount() - 1 && this.mPreviousPosition != 0) {
                    this.mFlagBackAndForth = !this.mFlagBackAndForth;
                }
                if (this.mFlagBackAndForth && currentItem < this.mPreviousPosition) {
                    this.mSliderPager.setCurrentItem(currentItem - 1, true);
                } else {
                    this.mSliderPager.setCurrentItem(currentItem + 1, true);
                }
            }
            if (this.mAutoCycleDirection == 1) {
                this.mSliderPager.setCurrentItem(currentItem + 1, true);
            }
            if (this.mAutoCycleDirection == 0) {
                this.mSliderPager.setCurrentItem(currentItem - 1, true);
            }
        }
        this.mPreviousPosition = currentItem;
    }

    @Override // com.dp.sgp.autoimageslider.SliderViewAdapter.DataSetListener
    public void dataSetChanged() {
        if (this.mIsInfiniteAdapter) {
            this.mInfinitePagerAdapter.notifyDataSetChanged();
            this.mSliderPager.setCurrentItem(0, false);
        }
    }

    @Override // com.dp.sgp.autoimageslider.SliderPager.OnPageChangeListener
    public void onPageSelected(int i) {
        OnSliderPageListener onSliderPageListener = this.mPageListener;
        if (onSliderPageListener != null) {
            onSliderPageListener.onSliderPageChanged(i);
        }
    }
}
