package com.dp.sgp.autoimageslider.IndicatorView;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.os.Parcelable;
import android.support.v4.text.TextUtilsCompat;
import android.support.v4.view.PagerAdapter;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.IndicatorAnimationType;
import com.dp.sgp.autoimageslider.IndicatorView.draw.controller.DrawController;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Orientation;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.PositionSavedState;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.RtlMode;
import com.dp.sgp.autoimageslider.IndicatorView.utils.CoordinatesUtils;
import com.dp.sgp.autoimageslider.IndicatorView.utils.DensityUtils;
import com.dp.sgp.autoimageslider.IndicatorView.utils.IdUtils;
import com.dp.sgp.autoimageslider.InfiniteAdapter.InfinitePagerAdapter;
import com.dp.sgp.autoimageslider.SliderPager;

/* JADX INFO: loaded from: classes.dex */
public class PageIndicatorView extends View implements SliderPager.OnPageChangeListener, IndicatorManager.Listener, SliderPager.OnAdapterChangeListener {
    private boolean isInteractionEnabled;
    private IndicatorManager manager;
    private DataSetObserver setObserver;
    private SliderPager viewPager;

    public PageIndicatorView(Context context) {
        super(context);
        init(null);
    }

    public PageIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet);
    }

    public PageIndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    public PageIndicatorView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(attributeSet);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        findViewPager(getParent());
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        unRegisterSetObserver();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Indicator indicator = this.manager.indicator();
        PositionSavedState positionSavedState = new PositionSavedState(super.onSaveInstanceState());
        positionSavedState.setSelectedPosition(indicator.getSelectedPosition());
        positionSavedState.setSelectingPosition(indicator.getSelectingPosition());
        positionSavedState.setLastSelectedPosition(indicator.getLastSelectedPosition());
        return positionSavedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof PositionSavedState) {
            Indicator indicator = this.manager.indicator();
            PositionSavedState positionSavedState = (PositionSavedState) parcelable;
            indicator.setSelectedPosition(positionSavedState.getSelectedPosition());
            indicator.setSelectingPosition(positionSavedState.getSelectingPosition());
            indicator.setLastSelectedPosition(positionSavedState.getLastSelectedPosition());
            super.onRestoreInstanceState(positionSavedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Pair<Integer, Integer> pairMeasureViewSize = this.manager.drawer().measureViewSize(i, i2);
        setMeasuredDimension(((Integer) pairMeasureViewSize.first).intValue(), ((Integer) pairMeasureViewSize.second).intValue());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.manager.drawer().draw(canvas);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.manager.drawer().touch(motionEvent);
        return true;
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.IndicatorManager.Listener
    public void onIndicatorUpdated() {
        invalidate();
    }

    @Override // com.dp.sgp.autoimageslider.SliderPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        onPageScroll(i, f);
    }

    @Override // com.dp.sgp.autoimageslider.SliderPager.OnPageChangeListener
    public void onPageSelected(int i) {
        onPageSelect(i);
    }

    @Override // com.dp.sgp.autoimageslider.SliderPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        if (i == 0) {
            this.manager.indicator().setInteractiveAnimation(this.isInteractionEnabled);
        }
    }

    @Override // com.dp.sgp.autoimageslider.SliderPager.OnAdapterChangeListener
    public void onAdapterChanged(SliderPager sliderPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        updateState();
    }

    public void setCount(int i) {
        if (i < 0 || this.manager.indicator().getCount() == i) {
            return;
        }
        this.manager.indicator().setCount(i);
        updateVisibility();
        requestLayout();
    }

    public int getCount() {
        return this.manager.indicator().getCount();
    }

    public void setDynamicCount(boolean z) {
        this.manager.indicator().setDynamicCount(z);
        if (z) {
            registerSetObserver();
        } else {
            unRegisterSetObserver();
        }
    }

    public void setRadius(int i) {
        if (i < 0) {
            i = 0;
        }
        this.manager.indicator().setRadius(DensityUtils.dpToPx(i));
        invalidate();
    }

    public void setRadius(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        this.manager.indicator().setRadius((int) f);
        invalidate();
    }

    public int getRadius() {
        return this.manager.indicator().getRadius();
    }

    public void setPadding(int i) {
        if (i < 0) {
            i = 0;
        }
        this.manager.indicator().setPadding(DensityUtils.dpToPx(i));
        invalidate();
    }

    public void setPadding(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        this.manager.indicator().setPadding((int) f);
        invalidate();
    }

    public int getPadding() {
        return this.manager.indicator().getPadding();
    }

    public void setScaleFactor(float f) {
        if (f > 1.0f) {
            f = 1.0f;
        } else if (f < 0.3f) {
            f = 0.3f;
        }
        this.manager.indicator().setScaleFactor(f);
    }

    public float getScaleFactor() {
        return this.manager.indicator().getScaleFactor();
    }

    public void setStrokeWidth(float f) {
        int radius = this.manager.indicator().getRadius();
        if (f < 0.0f) {
            f = 0.0f;
        } else {
            float f2 = radius;
            if (f > f2) {
                f = f2;
            }
        }
        this.manager.indicator().setStroke((int) f);
        invalidate();
    }

    public void setStrokeWidth(int i) {
        int iDpToPx = DensityUtils.dpToPx(i);
        int radius = this.manager.indicator().getRadius();
        if (iDpToPx < 0) {
            iDpToPx = 0;
        } else if (iDpToPx > radius) {
            iDpToPx = radius;
        }
        this.manager.indicator().setStroke(iDpToPx);
        invalidate();
    }

    public int getStrokeWidth() {
        return this.manager.indicator().getStroke();
    }

    public void setSelectedColor(int i) {
        this.manager.indicator().setSelectedColor(i);
        invalidate();
    }

    public int getSelectedColor() {
        return this.manager.indicator().getSelectedColor();
    }

    public void setUnselectedColor(int i) {
        this.manager.indicator().setUnselectedColor(i);
        invalidate();
    }

    public int getUnselectedColor() {
        return this.manager.indicator().getUnselectedColor();
    }

    public void setAutoVisibility(boolean z) {
        if (!z) {
            setVisibility(0);
        }
        this.manager.indicator().setAutoVisibility(z);
        updateVisibility();
    }

    public void setOrientation(Orientation orientation) {
        if (orientation != null) {
            this.manager.indicator().setOrientation(orientation);
            requestLayout();
        }
    }

    public void setAnimationDuration(long j) {
        this.manager.indicator().setAnimationDuration(j);
    }

    public long getAnimationDuration() {
        return this.manager.indicator().getAnimationDuration();
    }

    public void setAnimationType(IndicatorAnimationType indicatorAnimationType) {
        this.manager.onValueUpdated(null);
        if (indicatorAnimationType != null) {
            this.manager.indicator().setAnimationType(indicatorAnimationType);
        } else {
            this.manager.indicator().setAnimationType(IndicatorAnimationType.NONE);
        }
        invalidate();
    }

    public void setInteractiveAnimation(boolean z) {
        this.manager.indicator().setInteractiveAnimation(z);
        this.isInteractionEnabled = z;
    }

    public void setViewPager(SliderPager sliderPager) {
        releaseViewPager();
        if (sliderPager == null) {
            return;
        }
        this.viewPager = sliderPager;
        sliderPager.addOnPageChangeListener(this);
        this.viewPager.addOnAdapterChangeListener(this);
        this.manager.indicator().setViewPagerId(this.viewPager.getId());
        setDynamicCount(this.manager.indicator().isDynamicCount());
        updateState();
    }

    public void releaseViewPager() {
        SliderPager sliderPager = this.viewPager;
        if (sliderPager != null) {
            sliderPager.removeOnPageChangeListener(this);
            this.viewPager = null;
        }
    }

    public void setRtlMode(RtlMode rtlMode) {
        Indicator indicator = this.manager.indicator();
        if (rtlMode == null) {
            indicator.setRtlMode(RtlMode.Off);
        } else {
            indicator.setRtlMode(rtlMode);
        }
        if (this.viewPager == null) {
            return;
        }
        int selectedPosition = indicator.getSelectedPosition();
        if (isRtl()) {
            selectedPosition = (indicator.getCount() - 1) - selectedPosition;
        } else {
            SliderPager sliderPager = this.viewPager;
            if (sliderPager != null) {
                selectedPosition = sliderPager.getCurrentItem();
            }
        }
        indicator.setLastSelectedPosition(selectedPosition);
        indicator.setSelectingPosition(selectedPosition);
        indicator.setSelectedPosition(selectedPosition);
        invalidate();
    }

    public int getSelection() {
        return this.manager.indicator().getSelectedPosition();
    }

    public void setSelection(int i) {
        Indicator indicator = this.manager.indicator();
        int iAdjustPosition = adjustPosition(i);
        if (iAdjustPosition == indicator.getSelectedPosition() || iAdjustPosition == indicator.getSelectingPosition()) {
            return;
        }
        indicator.setInteractiveAnimation(false);
        indicator.setLastSelectedPosition(indicator.getSelectedPosition());
        indicator.setSelectingPosition(iAdjustPosition);
        indicator.setSelectedPosition(iAdjustPosition);
        this.manager.animate().basic();
    }

    public void setSelected(int i) {
        Indicator indicator = this.manager.indicator();
        IndicatorAnimationType animationType = indicator.getAnimationType();
        indicator.setAnimationType(IndicatorAnimationType.NONE);
        setSelection(i);
        indicator.setAnimationType(animationType);
    }

    public void clearSelection() {
        Indicator indicator = this.manager.indicator();
        indicator.setInteractiveAnimation(false);
        indicator.setLastSelectedPosition(-1);
        indicator.setSelectingPosition(-1);
        indicator.setSelectedPosition(-1);
        this.manager.animate().basic();
    }

    public void setProgress(int i, float f) {
        Indicator indicator = this.manager.indicator();
        if (indicator.isInteractiveAnimation()) {
            int count = indicator.getCount();
            if (count <= 0 || i < 0) {
                i = 0;
            } else {
                int i2 = count - 1;
                if (i > i2) {
                    i = i2;
                }
            }
            if (f < 0.0f) {
                f = 0.0f;
            } else if (f > 1.0f) {
                f = 1.0f;
            }
            if (f == 1.0f) {
                indicator.setLastSelectedPosition(indicator.getSelectedPosition());
                indicator.setSelectedPosition(i);
            }
            indicator.setSelectingPosition(i);
            this.manager.animate().interactive(f);
        }
    }

    public void setClickListener(DrawController.ClickListener clickListener) {
        this.manager.drawer().setClickListener(clickListener);
    }

    private void init(AttributeSet attributeSet) {
        setupId();
        initIndicatorManager(attributeSet);
    }

    private void setupId() {
        if (getId() == -1) {
            setId(IdUtils.generateViewId());
        }
    }

    private void initIndicatorManager(AttributeSet attributeSet) {
        IndicatorManager indicatorManager = new IndicatorManager(this);
        this.manager = indicatorManager;
        indicatorManager.drawer().initAttributes(getContext(), attributeSet);
        Indicator indicator = this.manager.indicator();
        indicator.setPaddingLeft(getPaddingLeft());
        indicator.setPaddingTop(getPaddingTop());
        indicator.setPaddingRight(getPaddingRight());
        indicator.setPaddingBottom(getPaddingBottom());
        this.isInteractionEnabled = indicator.isInteractiveAnimation();
    }

    private void registerSetObserver() {
        SliderPager sliderPager;
        if (this.setObserver != null || (sliderPager = this.viewPager) == null || sliderPager.getAdapter() == null) {
            return;
        }
        this.setObserver = new DataSetObserver() { // from class: com.dp.sgp.autoimageslider.IndicatorView.PageIndicatorView.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                PageIndicatorView.this.updateState();
            }
        };
        try {
            this.viewPager.getAdapter().registerDataSetObserver(this.setObserver);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    private void unRegisterSetObserver() {
        SliderPager sliderPager;
        if (this.setObserver == null || (sliderPager = this.viewPager) == null || sliderPager.getAdapter() == null) {
            return;
        }
        try {
            this.viewPager.getAdapter().unregisterDataSetObserver(this.setObserver);
            this.setObserver = null;
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateState() {
        int count;
        int currentItem;
        SliderPager sliderPager = this.viewPager;
        if (sliderPager == null || sliderPager.getAdapter() == null) {
            return;
        }
        if (this.viewPager.getAdapter() instanceof InfinitePagerAdapter) {
            count = ((InfinitePagerAdapter) this.viewPager.getAdapter()).getRealCount();
            currentItem = count > 0 ? this.viewPager.getCurrentItem() % count : 0;
        } else {
            count = this.viewPager.getAdapter().getCount();
            currentItem = this.viewPager.getCurrentItem();
        }
        if (isRtl()) {
            currentItem = (count - 1) - currentItem;
        }
        this.manager.indicator().setSelectedPosition(currentItem);
        this.manager.indicator().setSelectingPosition(currentItem);
        this.manager.indicator().setLastSelectedPosition(currentItem);
        this.manager.indicator().setCount(count);
        this.manager.animate().end();
        updateVisibility();
        requestLayout();
    }

    private void updateVisibility() {
        if (this.manager.indicator().isAutoVisibility()) {
            int count = this.manager.indicator().getCount();
            int visibility = getVisibility();
            if (visibility != 0 && count > 1) {
                setVisibility(0);
            } else {
                if (visibility == 4 || count > 1) {
                    return;
                }
                setVisibility(4);
            }
        }
    }

    private void onPageSelect(int i) {
        Indicator indicator = this.manager.indicator();
        boolean zIsViewMeasured = isViewMeasured();
        int count = indicator.getCount();
        if (zIsViewMeasured) {
            if (isRtl()) {
                i = (count - 1) - i;
            }
            setSelection(i);
        }
    }

    private void onPageScroll(int i, float f) {
        Indicator indicator = this.manager.indicator();
        if (isViewMeasured() && indicator.isInteractiveAnimation() && indicator.getAnimationType() != IndicatorAnimationType.NONE) {
            Pair<Integer, Float> progress = CoordinatesUtils.getProgress(indicator, i, f, isRtl());
            setProgress(((Integer) progress.first).intValue(), ((Float) progress.second).floatValue());
        }
    }

    /* JADX INFO: renamed from: com.dp.sgp.autoimageslider.IndicatorView.PageIndicatorView$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$draw$data$RtlMode;

        static {
            int[] iArr = new int[RtlMode.values().length];
            $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$draw$data$RtlMode = iArr;
            try {
                iArr[RtlMode.On.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$draw$data$RtlMode[RtlMode.Off.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$draw$data$RtlMode[RtlMode.Auto.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private boolean isRtl() {
        int i = AnonymousClass2.$SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$draw$data$RtlMode[this.manager.indicator().getRtlMode().ordinal()];
        if (i != 1) {
            return i == 3 && TextUtilsCompat.getLayoutDirectionFromLocale(getContext().getResources().getConfiguration().locale) == 1;
        }
        return true;
    }

    private boolean isViewMeasured() {
        return (getMeasuredHeight() == 0 && getMeasuredWidth() == 0) ? false : true;
    }

    private void findViewPager(ViewParent viewParent) {
        if (viewParent != null && (viewParent instanceof ViewGroup) && ((ViewGroup) viewParent).getChildCount() > 0) {
            SliderPager sliderPagerFindViewPager = findViewPager((ViewGroup) viewParent, this.manager.indicator().getViewPagerId());
            if (sliderPagerFindViewPager != null) {
                setViewPager(sliderPagerFindViewPager);
            } else {
                findViewPager(viewParent.getParent());
            }
        }
    }

    private SliderPager findViewPager(ViewGroup viewGroup, int i) {
        View viewFindViewById;
        if (viewGroup.getChildCount() > 0 && (viewFindViewById = viewGroup.findViewById(i)) != null && (viewFindViewById instanceof SliderPager)) {
            return (SliderPager) viewFindViewById;
        }
        return null;
    }

    private int adjustPosition(int i) {
        int count = this.manager.indicator().getCount() - 1;
        if (i <= 0) {
            return 0;
        }
        return i > count ? count : i;
    }
}
