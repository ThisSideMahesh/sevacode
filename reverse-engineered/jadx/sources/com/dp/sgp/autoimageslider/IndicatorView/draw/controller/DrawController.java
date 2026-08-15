package com.dp.sgp.autoimageslider.IndicatorView.draw.controller;

import android.graphics.Canvas;
import android.view.MotionEvent;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.Value;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.IndicatorAnimationType;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;
import com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.Drawer;
import com.dp.sgp.autoimageslider.IndicatorView.utils.CoordinatesUtils;

/* JADX INFO: loaded from: classes.dex */
public class DrawController {
    private Drawer drawer;
    private Indicator indicator;
    private ClickListener listener;
    private Value value;

    public interface ClickListener {
        void onIndicatorClicked(int i);
    }

    public DrawController(Indicator indicator) {
        this.indicator = indicator;
        this.drawer = new Drawer(indicator);
    }

    public void updateValue(Value value) {
        this.value = value;
    }

    public void setClickListener(ClickListener clickListener) {
        this.listener = clickListener;
    }

    public void touch(MotionEvent motionEvent) {
        if (motionEvent != null && motionEvent.getAction() == 1) {
            onIndicatorTouched(motionEvent.getX(), motionEvent.getY());
        }
    }

    private void onIndicatorTouched(float f, float f2) {
        int position;
        if (this.listener == null || (position = CoordinatesUtils.getPosition(this.indicator, f, f2)) < 0) {
            return;
        }
        this.listener.onIndicatorClicked(position);
    }

    public void draw(Canvas canvas) {
        int count = this.indicator.getCount();
        for (int i = 0; i < count; i++) {
            drawIndicator(canvas, i, CoordinatesUtils.getXCoordinate(this.indicator, i), CoordinatesUtils.getYCoordinate(this.indicator, i));
        }
    }

    private void drawIndicator(Canvas canvas, int i, int i2, int i3) {
        boolean zIsInteractiveAnimation = this.indicator.isInteractiveAnimation();
        int selectedPosition = this.indicator.getSelectedPosition();
        int selectingPosition = this.indicator.getSelectingPosition();
        boolean z = true;
        boolean z2 = !zIsInteractiveAnimation && (i == selectedPosition || i == this.indicator.getLastSelectedPosition());
        if (!zIsInteractiveAnimation || (i != selectedPosition && i != selectingPosition)) {
            z = false;
        }
        boolean z3 = z2 | z;
        this.drawer.setup(i, i2, i3);
        if (this.value != null && z3) {
            drawWithAnimation(canvas);
        } else {
            this.drawer.drawBasic(canvas, z3);
        }
    }

    /* JADX INFO: renamed from: com.dp.sgp.autoimageslider.IndicatorView.draw.controller.DrawController$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType;

        static {
            int[] iArr = new int[IndicatorAnimationType.values().length];
            $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType = iArr;
            try {
                iArr[IndicatorAnimationType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[IndicatorAnimationType.COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[IndicatorAnimationType.SCALE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[IndicatorAnimationType.WORM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[IndicatorAnimationType.SLIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[IndicatorAnimationType.FILL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[IndicatorAnimationType.THIN_WORM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[IndicatorAnimationType.DROP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[IndicatorAnimationType.SWAP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[IndicatorAnimationType.SCALE_DOWN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private void drawWithAnimation(Canvas canvas) {
        switch (AnonymousClass1.$SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[this.indicator.getAnimationType().ordinal()]) {
            case 1:
                this.drawer.drawBasic(canvas, true);
                break;
            case 2:
                this.drawer.drawColor(canvas, this.value);
                break;
            case 3:
                this.drawer.drawScale(canvas, this.value);
                break;
            case 4:
                this.drawer.drawWorm(canvas, this.value);
                break;
            case 5:
                this.drawer.drawSlide(canvas, this.value);
                break;
            case 6:
                this.drawer.drawFill(canvas, this.value);
                break;
            case 7:
                this.drawer.drawThinWorm(canvas, this.value);
                break;
            case 8:
                this.drawer.drawDrop(canvas, this.value);
                break;
            case 9:
                this.drawer.drawSwap(canvas, this.value);
                break;
            case 10:
                this.drawer.drawScaleDown(canvas, this.value);
                break;
        }
    }
}
