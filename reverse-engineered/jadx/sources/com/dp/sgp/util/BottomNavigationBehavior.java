package com.dp.sgp.util;

import android.content.Context;
import android.support.design.widget.BottomNavigationView;
import android.support.design.widget.CoordinatorLayout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class BottomNavigationBehavior extends CoordinatorLayout.Behavior<BottomNavigationView> {
    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, BottomNavigationView bottomNavigationView, View view, View view2, int i) {
        return i == 2;
    }

    public BottomNavigationBehavior() {
    }

    public BottomNavigationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, BottomNavigationView bottomNavigationView, View view) {
        return view instanceof FrameLayout;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, BottomNavigationView bottomNavigationView, View view, int i, int i2, int[] iArr) {
        if (i2 < 0) {
            showBottomNavigationView(bottomNavigationView);
        }
    }

    private void hideBottomNavigationView(BottomNavigationView bottomNavigationView) {
        bottomNavigationView.animate().translationY(bottomNavigationView.getHeight());
    }

    private void showBottomNavigationView(BottomNavigationView bottomNavigationView) {
        bottomNavigationView.animate().translationY(0.0f);
    }
}
