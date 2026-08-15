package com.dp.sgp.tutoshowcase;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.dp.sgp.Constants.Constants;
import com.dp.sgp.tutoshowcase.shapes.Circle;
import com.dp.sgp.tutoshowcase.shapes.RoundRect;

/* JADX INFO: loaded from: classes.dex */
public final class TutoShowcase {
    public static final float DEFAULT_ADDITIONAL_RADIUS_RATIO = 1.5f;
    private static final String SHARED_TUTO = "SHARED_TUTO";
    private FrameLayout container;
    private boolean fitsSystemWindows;
    private Listener listener;
    private SharedPreferences sharedPreferences;
    private TutoView tutoView;

    public interface Listener {
        void onDismissed();
    }

    private TutoShowcase(Activity activity) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        boolean z = false;
        this.fitsSystemWindows = false;
        this.sharedPreferences = activity.getSharedPreferences(SHARED_TUTO, 0);
        this.container = new FrameLayout(activity);
        this.tutoView = new TutoView(activity);
        Window window = activity.getWindow();
        if (window != null && (viewGroup = (ViewGroup) window.getDecorView()) != null && (viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.content)) != null) {
            viewGroup2.addView(this.container, -1, -1);
            this.container.addView(this.tutoView, -1, -1);
            if (Build.VERSION.SDK_INT >= 16) {
                View childAt = viewGroup2.getChildAt(0);
                if (childAt != null && childAt.getFitsSystemWindows()) {
                    z = true;
                }
                this.fitsSystemWindows = z;
            }
        }
        this.container.setVisibility(8);
        ViewCompat.setAlpha(this.container, 0.0f);
    }

    public static TutoShowcase from(Activity activity) {
        return new TutoShowcase(activity);
    }

    public TutoShowcase setBackgroundColor(int i) {
        this.tutoView.setBackgroundOverlayColor(i);
        return this;
    }

    public TutoShowcase setFitsSystemWindows(boolean z) {
        this.fitsSystemWindows = z;
        return this;
    }

    public TutoShowcase setListener(Listener listener) {
        this.listener = listener;
        return this;
    }

    public TutoShowcase setContentView(int i) {
        this.container.addView(LayoutInflater.from(this.tutoView.getContext()).inflate(i, (ViewGroup) this.container, false), -1, -1);
        return this;
    }

    public void dismiss() {
        ViewCompat.animate(this.container).alpha(0.0f).setDuration(this.container.getResources().getInteger(R.integer.config_mediumAnimTime)).setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: com.dp.sgp.tutoshowcase.TutoShowcase.1
            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                super.onAnimationEnd(view);
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                }
                if (TutoShowcase.this.listener != null) {
                    TutoShowcase.this.listener.onDismissed();
                }
            }
        }).start();
    }

    public TutoShowcase withDismissView(int i) {
        View viewFindViewById = this.container.findViewById(i);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.tutoshowcase.TutoShowcase.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TutoShowcase.this.dismiss();
                }
            });
        }
        return this;
    }

    public TutoShowcase onClickContentView(int i, View.OnClickListener onClickListener) {
        View viewFindViewById = this.container.findViewById(i);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(onClickListener);
        }
        return this;
    }

    public TutoShowcase show() {
        this.container.setVisibility(0);
        ViewCompat.animate(this.container).alpha(1.0f).setDuration(this.container.getResources().getInteger(R.integer.config_longAnimTime)).start();
        this.container.setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.tutoshowcase.TutoShowcase.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TutoShowcase.this.dismiss();
            }
        });
        return this;
    }

    public TutoShowcase showOnce(String str) {
        if (!this.sharedPreferences.contains(str)) {
            show();
            this.sharedPreferences.edit().putString(str, str).apply();
        }
        return this;
    }

    public boolean isShowOnce(String str) {
        return this.sharedPreferences.contains(str);
    }

    public TutoShowcase resetShowOnce(String str) {
        this.sharedPreferences.edit().remove(str).apply();
        return this;
    }

    private View findViewById(int i) {
        Context context = this.tutoView.getContext();
        if (context instanceof Activity) {
            return ((Activity) context).findViewById(i);
        }
        return null;
    }

    public ViewActions on(int i) {
        return new ViewActions(this, findViewById(i), this.fitsSystemWindows);
    }

    public ViewActions on(View view) {
        return new ViewActions(this, view, this.fitsSystemWindows);
    }

    private static class ViewActionsSettings {
        private boolean animated;
        private Integer delay;
        private Integer duration;
        private View.OnClickListener onClickListener;
        private boolean withBorder;

        private ViewActionsSettings() {
            this.animated = true;
            this.withBorder = false;
            this.delay = 0;
            this.duration = 300;
        }
    }

    public static class ViewActions {
        private final boolean fitsSystemWindow;
        private final ViewActionsSettings settings = new ViewActionsSettings();
        private final TutoShowcase tutoShowcase;
        private final View view;

        public ViewActions(TutoShowcase tutoShowcase, View view, boolean z) {
            this.tutoShowcase = tutoShowcase;
            this.view = view;
            this.fitsSystemWindow = z;
        }

        public ViewActions on(int i) {
            return this.tutoShowcase.on(i);
        }

        public ViewActions on(View view) {
            return this.tutoShowcase.on(view);
        }

        public TutoShowcase show() {
            return this.tutoShowcase.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void displaySwipable(final boolean z) {
            final Rect rect = new Rect();
            this.view.getGlobalVisibleRect(rect);
            final ImageView imageView = new ImageView(this.view.getContext());
            if (z) {
                imageView.setImageResource(com.dp.sgp.R.drawable.finger_moving_left);
            } else {
                imageView.setImageResource(com.dp.sgp.R.drawable.finger_moving_right);
            }
            imageView.setLayoutParams(new ViewGroup.MarginLayoutParams(-2, -2));
            imageView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.dp.sgp.tutoshowcase.TutoShowcase.ViewActions.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    float fWidth;
                    int iCenterX = (int) (rect.centerX() - (imageView.getWidth() / 2.0f));
                    ViewCompat.setTranslationY(imageView, (int) (rect.centerY() - (imageView.getHeight() / 2.0f)));
                    ViewCompat.setTranslationX(imageView, iCenterX);
                    if (ViewActions.this.settings.animated) {
                        if (z) {
                            fWidth = rect.left;
                        } else {
                            fWidth = rect.left + (rect.width() * 0.7f);
                        }
                        ViewCompat.animate(imageView).translationX(fWidth).setStartDelay(ViewActions.this.settings.delay != null ? ViewActions.this.settings.delay.intValue() : 500L).setDuration(ViewActions.this.settings.duration != null ? ViewActions.this.settings.duration.intValue() : 600L).setInterpolator(new DecelerateInterpolator());
                    }
                    imageView.getViewTreeObserver().removeOnPreDrawListener(this);
                    return false;
                }
            });
            this.tutoShowcase.container.addView(imageView);
            this.tutoShowcase.container.invalidate();
        }

        public ActionViewActionsEditor displaySwipableLeft() {
            this.view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.dp.sgp.tutoshowcase.TutoShowcase.ViewActions.2
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    ViewActions.this.displaySwipable(true);
                    ViewActions.this.view.getViewTreeObserver().removeOnPreDrawListener(this);
                    return false;
                }
            });
            return new ActionViewActionsEditor(this);
        }

        public ActionViewActionsEditor displaySwipableRight() {
            this.view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.dp.sgp.tutoshowcase.TutoShowcase.ViewActions.3
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    ViewActions.this.displaySwipable(false);
                    ViewActions.this.view.getViewTreeObserver().removeOnPreDrawListener(this);
                    return false;
                }
            });
            return new ActionViewActionsEditor(this);
        }

        public ActionViewActionsEditor displayScrollable() {
            this.view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.dp.sgp.tutoshowcase.TutoShowcase.ViewActions.4
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    ViewActions.this.displayScrollableOnView();
                    ViewActions.this.view.getViewTreeObserver().removeOnPreDrawListener(this);
                    return false;
                }
            });
            return new ActionViewActionsEditor(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void displayScrollableOnView() {
            final Rect rect = new Rect();
            this.view.getGlobalVisibleRect(rect);
            final int iHeight = rect.height();
            final ImageView imageView = new ImageView(this.view.getContext());
            imageView.setImageResource(com.dp.sgp.R.drawable.finger_moving_down);
            imageView.setLayoutParams(new ViewGroup.MarginLayoutParams(-2, -2));
            imageView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.dp.sgp.tutoshowcase.TutoShowcase.ViewActions.5
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    int iCenterX = (int) (rect.centerX() - (imageView.getWidth() / 2.0f));
                    float fCenterY = ((int) (rect.centerY() - (imageView.getHeight() / 2.0f))) - ViewActions.this.getStatusBarOffset();
                    ViewCompat.setTranslationY(imageView, fCenterY);
                    ViewCompat.setTranslationX(imageView, iCenterX);
                    if (ViewActions.this.settings.animated) {
                        ViewCompat.animate(imageView).translationY((fCenterY + (iHeight * 0.8f)) - ViewActions.this.getStatusBarOffset()).setStartDelay(ViewActions.this.settings.delay != null ? ViewActions.this.settings.delay.intValue() : 500L).setDuration(ViewActions.this.settings.duration != null ? ViewActions.this.settings.duration.intValue() : 600L).setInterpolator(new DecelerateInterpolator());
                    }
                    imageView.getViewTreeObserver().removeOnPreDrawListener(this);
                    return false;
                }
            });
            this.tutoShowcase.container.addView(imageView);
            this.tutoShowcase.container.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addCircleOnView(float f) {
            Rect rect = new Rect();
            this.view.getGlobalVisibleRect(rect);
            Circle circle = new Circle(rect.centerX(), rect.centerY() - getStatusBarOffset(), (int) ((Math.max(rect.width(), rect.height()) / 2.0f) * f));
            circle.setDisplayBorder(this.settings.withBorder);
            this.tutoShowcase.tutoView.addCircle(circle);
            addClickableView(rect, this.settings.onClickListener, f);
            this.tutoShowcase.tutoView.postInvalidate();
        }

        public ShapeViewActionsEditor addRoundRect() {
            return addRoundRect(1.5f);
        }

        public ShapeViewActionsEditor addRoundRect(final float f) {
            this.view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.dp.sgp.tutoshowcase.TutoShowcase.ViewActions.6
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    ViewActions.this.addRoundRectOnView(f);
                    ViewActions.this.view.getViewTreeObserver().removeOnPreDrawListener(this);
                    return false;
                }
            });
            return new ShapeViewActionsEditor(this);
        }

        public ShapeViewActionsEditor addCircle() {
            return addCircle(1.5f);
        }

        public ShapeViewActionsEditor addCircle(final float f) {
            this.view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.dp.sgp.tutoshowcase.TutoShowcase.ViewActions.7
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    ViewActions.this.addCircleOnView(f);
                    ViewActions.this.view.getViewTreeObserver().removeOnPreDrawListener(this);
                    return false;
                }
            });
            return new ShapeViewActionsEditor(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addRoundRectOnView(float f) {
            Rect rect = new Rect();
            this.view.getGlobalVisibleRect(rect);
            RoundRect roundRect = new RoundRect(rect.left - 40, (rect.top - getStatusBarOffset()) - 40, rect.width() + 80, rect.height() + 80);
            roundRect.setDisplayBorder(this.settings.withBorder);
            this.tutoShowcase.tutoView.addRoundRect(roundRect);
            addClickableView(rect, this.settings.onClickListener, f);
            this.tutoShowcase.tutoView.postInvalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getStatusBarOffset() {
            Resources resources;
            int identifier;
            if (this.fitsSystemWindow || (identifier = (resources = this.view.getContext().getResources()).getIdentifier("status_bar_height", "dimen", Constants.OS)) <= 0) {
                return 0;
            }
            return resources.getDimensionPixelSize(identifier);
        }

        private void addClickableView(Rect rect, View.OnClickListener onClickListener, float f) {
            View view = new View(this.view.getContext());
            int iWidth = (int) (rect.width() * f);
            int iHeight = (int) (rect.height() * f);
            int iWidth2 = rect.left - ((iWidth - rect.width()) / 2);
            int iHeight2 = (rect.top - ((iHeight - rect.height()) / 2)) - getStatusBarOffset();
            view.setLayoutParams(new ViewGroup.MarginLayoutParams(iWidth, iHeight));
            ViewCompat.setTranslationY(view, iHeight2);
            ViewCompat.setTranslationX(view, iWidth2);
            view.setOnClickListener(onClickListener);
            this.tutoShowcase.container.addView(view);
            this.tutoShowcase.container.invalidate();
        }

        public TutoShowcase showOnce(String str) {
            return this.tutoShowcase.showOnce(str);
        }

        public TutoShowcase onClickContentView(int i, View.OnClickListener onClickListener) {
            return this.tutoShowcase.onClickContentView(i, onClickListener);
        }
    }

    public static class ViewActionsEditor {
        protected final ViewActions viewActions;

        public ViewActionsEditor(ViewActions viewActions) {
            this.viewActions = viewActions;
        }

        public ViewActions on(int i) {
            return this.viewActions.on(i);
        }

        public ViewActions on(View view) {
            return this.viewActions.on(view);
        }

        public TutoShowcase show() {
            return this.viewActions.show();
        }

        public TutoShowcase showOnce(String str) {
            return this.viewActions.showOnce(str);
        }

        public TutoShowcase onClickContentView(int i, View.OnClickListener onClickListener) {
            return this.viewActions.onClickContentView(i, onClickListener);
        }
    }

    public static class ShapeViewActionsEditor extends ViewActionsEditor {
        public ShapeViewActionsEditor(ViewActions viewActions) {
            super(viewActions);
        }

        public ShapeViewActionsEditor withBorder() {
            this.viewActions.settings.withBorder = true;
            return this;
        }

        public ShapeViewActionsEditor onClick(View.OnClickListener onClickListener) {
            this.viewActions.settings.onClickListener = onClickListener;
            return this;
        }
    }

    public static class ActionViewActionsEditor extends ViewActionsEditor {
        public ActionViewActionsEditor(ViewActions viewActions) {
            super(viewActions);
        }

        public ActionViewActionsEditor delayed(int i) {
            this.viewActions.settings.delay = Integer.valueOf(i);
            return this;
        }

        public ActionViewActionsEditor duration(int i) {
            this.viewActions.settings.duration = Integer.valueOf(i);
            return this;
        }

        public ActionViewActionsEditor animated(boolean z) {
            this.viewActions.settings.animated = z;
            return this;
        }
    }
}
