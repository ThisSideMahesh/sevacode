package com.dp.sgp.util;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.support.design.internal.BottomNavigationItemView;
import android.support.design.internal.BottomNavigationMenuView;
import android.support.design.widget.BottomNavigationView;
import android.support.transition.Transition;
import android.support.transition.TransitionSet;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class BottomNavigationViewEx extends BottomNavigationView {
    private static boolean isNavigationItemClicking = false;
    private boolean animationRecord;
    private BottomNavigationItemView[] mButtons;
    private int mItemHeight;
    private float mLargeLabelSize;
    private BottomNavigationMenuView mMenuView;
    private MyOnNavigationItemSelectedListener mMyOnNavigationItemSelectedListener;
    private BottomNavigationViewExOnPageChangeListener mPageChangeListener;
    private float mScaleDownFactor;
    private float mScaleUpFactor;
    private int mShiftAmount;
    private float mSmallLabelSize;
    private ViewPager mViewPager;
    private boolean textVisibility;
    private boolean visibilityHeightRecord;
    private boolean visibilityTextSizeRecord;

    public BottomNavigationViewEx(Context context) {
        super(context);
        this.textVisibility = true;
    }

    public BottomNavigationViewEx(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.textVisibility = true;
    }

    public BottomNavigationViewEx(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.textVisibility = true;
    }

    private void init() {
        try {
            addAnimationListener();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void addAnimationListener() {
        BottomNavigationMenuView bottomNavigationMenuView = getBottomNavigationMenuView();
        Object field = getField(bottomNavigationMenuView.getClass(), bottomNavigationMenuView, "mAnimationHelper");
        ((TransitionSet) getField(field.getClass(), field, "mSet")).addListener(new Transition.TransitionListener() { // from class: com.dp.sgp.util.BottomNavigationViewEx.1
            @Override // android.support.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition) {
            }

            @Override // android.support.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition) {
            }

            @Override // android.support.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition) {
            }

            @Override // android.support.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition) {
                BottomNavigationViewEx.this.refreshTextViewVisibility();
            }

            @Override // android.support.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition) {
                BottomNavigationViewEx.this.refreshTextViewVisibility();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshTextViewVisibility() {
        if (this.textVisibility) {
            getBottomNavigationMenuView();
            BottomNavigationItemView[] bottomNavigationItemViews = getBottomNavigationItemViews();
            int currentItem = getCurrentItem();
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViews) {
                TextView textView = (TextView) getField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mLargeLabel");
                TextView textView2 = (TextView) getField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mSmallLabel");
                textView.clearAnimation();
                textView2.clearAnimation();
                boolean zBooleanValue = ((Boolean) getField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mShiftingMode")).booleanValue();
                boolean z = bottomNavigationItemView.getItemPosition() == currentItem;
                if (zBooleanValue) {
                    if (z) {
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(4);
                    }
                    textView2.setVisibility(4);
                } else if (z) {
                    textView.setVisibility(0);
                    textView2.setVisibility(4);
                } else {
                    textView.setVisibility(4);
                    textView2.setVisibility(0);
                }
            }
        }
    }

    public void setIconVisibility(boolean z) {
        final ImageView imageView;
        BottomNavigationMenuView bottomNavigationMenuView = getBottomNavigationMenuView();
        BottomNavigationItemView[] bottomNavigationItemViews = getBottomNavigationItemViews();
        for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViews) {
            ((ImageView) getField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mIcon")).setVisibility(z ? 0 : 4);
        }
        if (!z) {
            if (!this.visibilityHeightRecord) {
                this.visibilityHeightRecord = true;
                this.mItemHeight = getItemHeight();
            }
            BottomNavigationItemView bottomNavigationItemView2 = bottomNavigationItemViews[0];
            if (bottomNavigationItemView2 != null && (imageView = (ImageView) getField(bottomNavigationItemView2.getClass(), bottomNavigationItemView2, "mIcon")) != null) {
                imageView.post(new Runnable() { // from class: com.dp.sgp.util.BottomNavigationViewEx.2
                    @Override // java.lang.Runnable
                    public void run() {
                        BottomNavigationViewEx bottomNavigationViewEx = BottomNavigationViewEx.this;
                        bottomNavigationViewEx.setItemHeight(bottomNavigationViewEx.mItemHeight - imageView.getMeasuredHeight());
                    }
                });
            }
        } else if (!this.visibilityHeightRecord) {
            return;
        } else {
            setItemHeight(this.mItemHeight);
        }
        bottomNavigationMenuView.updateMenuView();
    }

    public void setTextVisibility(boolean z) {
        this.textVisibility = z;
        BottomNavigationMenuView bottomNavigationMenuView = getBottomNavigationMenuView();
        for (BottomNavigationItemView bottomNavigationItemView : getBottomNavigationItemViews()) {
            TextView textView = (TextView) getField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mLargeLabel");
            TextView textView2 = (TextView) getField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mSmallLabel");
            if (!z) {
                if (!this.visibilityTextSizeRecord && !this.animationRecord) {
                    this.visibilityTextSizeRecord = true;
                    this.mLargeLabelSize = textView.getTextSize();
                    this.mSmallLabelSize = textView2.getTextSize();
                }
                textView.setTextSize(0, 0.0f);
                textView2.setTextSize(0, 0.0f);
            } else {
                if (!this.visibilityTextSizeRecord) {
                    break;
                }
                textView.setTextSize(0, this.mLargeLabelSize);
                textView2.setTextSize(0, this.mSmallLabelSize);
            }
        }
        if (!z) {
            if (!this.visibilityHeightRecord) {
                this.visibilityHeightRecord = true;
                this.mItemHeight = getItemHeight();
            }
            setItemHeight(this.mItemHeight - getFontHeight(this.mSmallLabelSize));
        } else if (!this.visibilityHeightRecord) {
            return;
        } else {
            setItemHeight(this.mItemHeight);
        }
        bottomNavigationMenuView.updateMenuView();
    }

    private static int getFontHeight(float f) {
        Paint paint = new Paint();
        paint.setTextSize(f);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return ((int) Math.ceil(fontMetrics.descent - fontMetrics.top)) + 2;
    }

    public void enableAnimation(boolean z) {
        BottomNavigationMenuView bottomNavigationMenuView = getBottomNavigationMenuView();
        for (BottomNavigationItemView bottomNavigationItemView : getBottomNavigationItemViews()) {
            TextView textView = (TextView) getField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mLargeLabel");
            TextView textView2 = (TextView) getField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mSmallLabel");
            if (!z) {
                if (!this.animationRecord) {
                    this.animationRecord = true;
                    this.mShiftAmount = ((Integer) getField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mShiftAmount")).intValue();
                    this.mScaleUpFactor = ((Float) getField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mScaleUpFactor")).floatValue();
                    this.mScaleDownFactor = ((Float) getField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mScaleDownFactor")).floatValue();
                    this.mLargeLabelSize = textView.getTextSize();
                    this.mSmallLabelSize = textView2.getTextSize();
                }
                setField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mShiftAmount", 0);
                setField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mScaleUpFactor", 1);
                setField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mScaleDownFactor", 1);
                textView.setTextSize(0, this.mSmallLabelSize);
            } else {
                if (!this.animationRecord) {
                    return;
                }
                setField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mShiftAmount", Integer.valueOf(this.mShiftAmount));
                setField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mScaleUpFactor", Float.valueOf(this.mScaleUpFactor));
                setField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mScaleDownFactor", Float.valueOf(this.mScaleDownFactor));
                textView.setTextSize(0, this.mLargeLabelSize);
            }
        }
        bottomNavigationMenuView.updateMenuView();
    }

    public void enableShiftingMode(boolean z) {
        BottomNavigationMenuView bottomNavigationMenuView = getBottomNavigationMenuView();
        setField(bottomNavigationMenuView.getClass(), bottomNavigationMenuView, "mShiftingMode", Boolean.valueOf(z));
        bottomNavigationMenuView.updateMenuView();
    }

    public void enableItemShiftingMode(boolean z) {
        BottomNavigationMenuView bottomNavigationMenuView = getBottomNavigationMenuView();
        for (BottomNavigationItemView bottomNavigationItemView : getBottomNavigationItemViews()) {
            setField(bottomNavigationItemView.getClass(), bottomNavigationItemView, "mShiftingMode", Boolean.valueOf(z));
        }
        bottomNavigationMenuView.updateMenuView();
    }

    public int getCurrentItem() {
        BottomNavigationItemView[] bottomNavigationItemViews = getBottomNavigationItemViews();
        Menu menu = getMenu();
        for (int i = 0; i < bottomNavigationItemViews.length; i++) {
            if (menu.getItem(i).isChecked()) {
                return i;
            }
        }
        return 0;
    }

    public int getMenuItemPosition(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        Menu menu = getMenu();
        int size = menu.size();
        for (int i = 0; i < size; i++) {
            if (menu.getItem(i).getItemId() == itemId) {
                return i;
            }
        }
        return -1;
    }

    public void setCurrentItem(int i) {
        if (i < 0 || i >= getMaxItemCount()) {
            throw new ArrayIndexOutOfBoundsException("item is out of bounds, we expected 0 - " + (getMaxItemCount() - 1) + ". Actually " + i);
        }
        BottomNavigationMenuView bottomNavigationMenuView = getBottomNavigationMenuView();
        ((View.OnClickListener) getField(bottomNavigationMenuView.getClass(), bottomNavigationMenuView, "mOnClickListener")).onClick(getBottomNavigationItemViews()[i]);
    }

    public BottomNavigationView.OnNavigationItemSelectedListener getOnNavigationItemSelectedListener() {
        return (BottomNavigationView.OnNavigationItemSelectedListener) getField(BottomNavigationView.class, this, "mSelectedListener");
    }

    @Override // android.support.design.widget.BottomNavigationView
    public void setOnNavigationItemSelectedListener(BottomNavigationView.OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        MyOnNavigationItemSelectedListener myOnNavigationItemSelectedListener = this.mMyOnNavigationItemSelectedListener;
        if (myOnNavigationItemSelectedListener == null) {
            super.setOnNavigationItemSelectedListener(onNavigationItemSelectedListener);
        } else {
            myOnNavigationItemSelectedListener.setOnNavigationItemSelectedListener(onNavigationItemSelectedListener);
        }
    }

    private BottomNavigationMenuView getBottomNavigationMenuView() {
        if (this.mMenuView == null) {
            this.mMenuView = (BottomNavigationMenuView) getField(BottomNavigationView.class, this, "mMenuView");
        }
        return this.mMenuView;
    }

    public BottomNavigationItemView[] getBottomNavigationItemViews() {
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.mButtons;
        if (bottomNavigationItemViewArr != null) {
            return bottomNavigationItemViewArr;
        }
        BottomNavigationMenuView bottomNavigationMenuView = getBottomNavigationMenuView();
        BottomNavigationItemView[] bottomNavigationItemViewArr2 = (BottomNavigationItemView[]) getField(bottomNavigationMenuView.getClass(), bottomNavigationMenuView, "mButtons");
        this.mButtons = bottomNavigationItemViewArr2;
        return bottomNavigationItemViewArr2;
    }

    public BottomNavigationItemView getBottomNavigationItemView(int i) {
        return getBottomNavigationItemViews()[i];
    }

    public ImageView getIconAt(int i) {
        return (ImageView) getField(BottomNavigationItemView.class, getBottomNavigationItemView(i), "mIcon");
    }

    public TextView getSmallLabelAt(int i) {
        return (TextView) getField(BottomNavigationItemView.class, getBottomNavigationItemView(i), "mSmallLabel");
    }

    public TextView getLargeLabelAt(int i) {
        return (TextView) getField(BottomNavigationItemView.class, getBottomNavigationItemView(i), "mLargeLabel");
    }

    public int getItemCount() {
        BottomNavigationItemView[] bottomNavigationItemViews = getBottomNavigationItemViews();
        if (bottomNavigationItemViews == null) {
            return 0;
        }
        return bottomNavigationItemViews.length;
    }

    public void setSmallTextSize(float f) {
        int itemCount = getItemCount();
        for (int i = 0; i < itemCount; i++) {
            getSmallLabelAt(i).setTextSize(f);
        }
        this.mMenuView.updateMenuView();
    }

    public void setLargeTextSize(float f) {
        int itemCount = getItemCount();
        for (int i = 0; i < itemCount; i++) {
            getLargeLabelAt(i).setTextSize(f);
        }
        this.mMenuView.updateMenuView();
    }

    public void setTextSize(float f) {
        setLargeTextSize(f);
        setSmallTextSize(f);
    }

    public void setIconSizeAt(int i, float f, float f2) {
        ImageView iconAt = getIconAt(i);
        ViewGroup.LayoutParams layoutParams = iconAt.getLayoutParams();
        layoutParams.width = dp2px(getContext(), f);
        layoutParams.height = dp2px(getContext(), f2);
        iconAt.setLayoutParams(layoutParams);
        this.mMenuView.updateMenuView();
    }

    public void setIconSize(float f, float f2) {
        int itemCount = getItemCount();
        for (int i = 0; i < itemCount; i++) {
            setIconSizeAt(i, f, f2);
        }
    }

    public void setItemHeight(int i) {
        BottomNavigationMenuView bottomNavigationMenuView = getBottomNavigationMenuView();
        setField(bottomNavigationMenuView.getClass(), bottomNavigationMenuView, "mItemHeight", Integer.valueOf(i));
        bottomNavigationMenuView.updateMenuView();
    }

    public int getItemHeight() {
        BottomNavigationMenuView bottomNavigationMenuView = getBottomNavigationMenuView();
        return ((Integer) getField(bottomNavigationMenuView.getClass(), bottomNavigationMenuView, "mItemHeight")).intValue();
    }

    public static int dp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setTypeface(Typeface typeface, int i) {
        int itemCount = getItemCount();
        for (int i2 = 0; i2 < itemCount; i2++) {
            getLargeLabelAt(i2).setTypeface(typeface, i);
            getSmallLabelAt(i2).setTypeface(typeface, i);
        }
        this.mMenuView.updateMenuView();
    }

    public void setTypeface(Typeface typeface) {
        int itemCount = getItemCount();
        for (int i = 0; i < itemCount; i++) {
            getLargeLabelAt(i).setTypeface(typeface);
            getSmallLabelAt(i).setTypeface(typeface);
        }
        this.mMenuView.updateMenuView();
    }

    private <T> T getField(Class cls, Object obj, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return (T) declaredField.get(obj);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private void setField(Class cls, Object obj, String str, Object obj2) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(obj, obj2);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    public void setupWithViewPager(ViewPager viewPager) {
        setupWithViewPager(viewPager, false);
    }

    public void setupWithViewPager(ViewPager viewPager, boolean z) {
        BottomNavigationViewExOnPageChangeListener bottomNavigationViewExOnPageChangeListener;
        ViewPager viewPager2 = this.mViewPager;
        if (viewPager2 != null && (bottomNavigationViewExOnPageChangeListener = this.mPageChangeListener) != null) {
            viewPager2.removeOnPageChangeListener(bottomNavigationViewExOnPageChangeListener);
        }
        if (viewPager == null) {
            this.mViewPager = null;
            super.setOnNavigationItemSelectedListener(null);
            return;
        }
        this.mViewPager = viewPager;
        if (this.mPageChangeListener == null) {
            this.mPageChangeListener = new BottomNavigationViewExOnPageChangeListener(this);
        }
        viewPager.addOnPageChangeListener(this.mPageChangeListener);
        MyOnNavigationItemSelectedListener myOnNavigationItemSelectedListener = new MyOnNavigationItemSelectedListener(viewPager, this, z, getOnNavigationItemSelectedListener());
        this.mMyOnNavigationItemSelectedListener = myOnNavigationItemSelectedListener;
        super.setOnNavigationItemSelectedListener(myOnNavigationItemSelectedListener);
    }

    private static class BottomNavigationViewExOnPageChangeListener implements ViewPager.OnPageChangeListener {
        private final WeakReference<BottomNavigationViewEx> mBnveRef;

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        public BottomNavigationViewExOnPageChangeListener(BottomNavigationViewEx bottomNavigationViewEx) {
            this.mBnveRef = new WeakReference<>(bottomNavigationViewEx);
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            BottomNavigationViewEx bottomNavigationViewEx = this.mBnveRef.get();
            if (bottomNavigationViewEx == null || BottomNavigationViewEx.isNavigationItemClicking) {
                return;
            }
            bottomNavigationViewEx.setCurrentItem(i);
        }
    }

    private static class MyOnNavigationItemSelectedListener implements BottomNavigationView.OnNavigationItemSelectedListener {
        private SparseIntArray items;
        private BottomNavigationView.OnNavigationItemSelectedListener listener;
        private int previousPosition = -1;
        private boolean smoothScroll;
        private final WeakReference<ViewPager> viewPagerRef;

        MyOnNavigationItemSelectedListener(ViewPager viewPager, BottomNavigationViewEx bottomNavigationViewEx, boolean z, BottomNavigationView.OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
            this.viewPagerRef = new WeakReference<>(viewPager);
            this.listener = onNavigationItemSelectedListener;
            this.smoothScroll = z;
            Menu menu = bottomNavigationViewEx.getMenu();
            int size = menu.size();
            this.items = new SparseIntArray(size);
            for (int i = 0; i < size; i++) {
                this.items.put(menu.getItem(i).getItemId(), i);
            }
        }

        public void setOnNavigationItemSelectedListener(BottomNavigationView.OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
            this.listener = onNavigationItemSelectedListener;
        }

        @Override // android.support.design.widget.BottomNavigationView.OnNavigationItemSelectedListener
        public boolean onNavigationItemSelected(MenuItem menuItem) {
            ViewPager viewPager;
            int i = this.items.get(menuItem.getItemId());
            if (this.previousPosition == i) {
                return true;
            }
            BottomNavigationView.OnNavigationItemSelectedListener onNavigationItemSelectedListener = this.listener;
            if ((onNavigationItemSelectedListener != null && !onNavigationItemSelectedListener.onNavigationItemSelected(menuItem)) || (viewPager = this.viewPagerRef.get()) == null) {
                return false;
            }
            boolean unused = BottomNavigationViewEx.isNavigationItemClicking = true;
            viewPager.setCurrentItem(this.items.get(menuItem.getItemId()), this.smoothScroll);
            boolean unused2 = BottomNavigationViewEx.isNavigationItemClicking = false;
            this.previousPosition = i;
            return true;
        }
    }

    public void setItemBackground(int i, int i2) {
        getBottomNavigationItemView(i).setItemBackground(i2);
    }

    public void setIconTintList(int i, ColorStateList colorStateList) {
        getBottomNavigationItemView(i).setIconTintList(colorStateList);
    }

    public void setTextTintList(int i, ColorStateList colorStateList) {
        getBottomNavigationItemView(i).setTextColor(colorStateList);
    }

    public void setIconsMarginTop(int i) {
        for (int i2 = 0; i2 < getItemCount(); i2++) {
            setIconMarginTop(i2, i);
        }
    }

    public void setIconMarginTop(int i, int i2) {
        setField(BottomNavigationItemView.class, getBottomNavigationItemView(i), "mDefaultMargin", Integer.valueOf(i2));
        this.mMenuView.updateMenuView();
    }
}
