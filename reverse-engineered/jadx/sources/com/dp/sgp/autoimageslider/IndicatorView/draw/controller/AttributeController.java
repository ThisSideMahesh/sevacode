package com.dp.sgp.autoimageslider.IndicatorView.draw.controller;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import com.dp.sgp.R;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.ColorAnimation;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.IndicatorAnimationType;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Orientation;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.RtlMode;
import com.dp.sgp.autoimageslider.IndicatorView.utils.DensityUtils;

/* JADX INFO: loaded from: classes.dex */
public class AttributeController {
    private Indicator indicator;

    public AttributeController(Indicator indicator) {
        this.indicator = indicator;
    }

    public void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PageIndicatorView, 0, 0);
        initCountAttribute(typedArrayObtainStyledAttributes);
        initColorAttribute(typedArrayObtainStyledAttributes);
        initAnimationAttribute(typedArrayObtainStyledAttributes);
        initSizeAttribute(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void initCountAttribute(TypedArray typedArray) {
        int resourceId = typedArray.getResourceId(15, -1);
        boolean z = typedArray.getBoolean(2, true);
        int i = 0;
        boolean z2 = typedArray.getBoolean(4, false);
        int i2 = typedArray.getInt(3, -1);
        int i3 = i2 != -1 ? i2 : 3;
        int i4 = typedArray.getInt(11, 0);
        if (i4 >= 0 && (i3 <= 0 || i4 <= (i = i3 - 1))) {
            i = i4;
        }
        this.indicator.setViewPagerId(resourceId);
        this.indicator.setAutoVisibility(z);
        this.indicator.setDynamicCount(z2);
        this.indicator.setCount(i3);
        this.indicator.setSelectedPosition(i);
        this.indicator.setSelectingPosition(i);
        this.indicator.setLastSelectedPosition(i);
    }

    private void initColorAttribute(TypedArray typedArray) {
        int color = typedArray.getColor(14, Color.parseColor(ColorAnimation.DEFAULT_UNSELECTED_COLOR));
        int color2 = typedArray.getColor(12, Color.parseColor(ColorAnimation.DEFAULT_SELECTED_COLOR));
        this.indicator.setUnselectedColor(color);
        this.indicator.setSelectedColor(color2);
    }

    private void initAnimationAttribute(TypedArray typedArray) {
        boolean z = typedArray.getBoolean(5, false);
        int i = typedArray.getInt(0, BaseAnimation.DEFAULT_ANIMATION_TIME);
        int i2 = i >= 0 ? i : 0;
        IndicatorAnimationType animationType = getAnimationType(typedArray.getInt(1, IndicatorAnimationType.NONE.ordinal()));
        RtlMode rtlMode = getRtlMode(typedArray.getInt(9, RtlMode.Off.ordinal()));
        this.indicator.setAnimationDuration(i2);
        this.indicator.setInteractiveAnimation(z);
        this.indicator.setAnimationType(animationType);
        this.indicator.setRtlMode(rtlMode);
    }

    private void initSizeAttribute(TypedArray typedArray) {
        Orientation orientation;
        if (typedArray.getInt(6, Orientation.HORIZONTAL.ordinal()) == 0) {
            orientation = Orientation.HORIZONTAL;
        } else {
            orientation = Orientation.VERTICAL;
        }
        int dimension = (int) typedArray.getDimension(8, DensityUtils.dpToPx(6));
        if (dimension < 0) {
            dimension = 0;
        }
        int dimension2 = (int) typedArray.getDimension(7, DensityUtils.dpToPx(8));
        if (dimension2 < 0) {
            dimension2 = 0;
        }
        float f = typedArray.getFloat(10, 0.7f);
        if (f < 0.3f) {
            f = 0.3f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        int dimension3 = (int) typedArray.getDimension(13, DensityUtils.dpToPx(1));
        if (dimension3 > dimension) {
            dimension3 = dimension;
        }
        int i = this.indicator.getAnimationType() == IndicatorAnimationType.FILL ? dimension3 : 0;
        this.indicator.setRadius(dimension);
        this.indicator.setOrientation(orientation);
        this.indicator.setPadding(dimension2);
        this.indicator.setScaleFactor(f);
        this.indicator.setStroke(i);
    }

    private IndicatorAnimationType getAnimationType(int i) {
        switch (i) {
            case 0:
                return IndicatorAnimationType.NONE;
            case 1:
                return IndicatorAnimationType.COLOR;
            case 2:
                return IndicatorAnimationType.SCALE;
            case 3:
                return IndicatorAnimationType.WORM;
            case 4:
                return IndicatorAnimationType.SLIDE;
            case 5:
                return IndicatorAnimationType.FILL;
            case 6:
                return IndicatorAnimationType.THIN_WORM;
            case 7:
                return IndicatorAnimationType.DROP;
            case 8:
                return IndicatorAnimationType.SWAP;
            case 9:
                return IndicatorAnimationType.SCALE_DOWN;
            default:
                return IndicatorAnimationType.NONE;
        }
    }

    public static RtlMode getRtlMode(int i) {
        if (i == 0) {
            return RtlMode.On;
        }
        if (i == 1) {
            return RtlMode.Off;
        }
        if (i == 2) {
            return RtlMode.Auto;
        }
        return RtlMode.Auto;
    }
}
