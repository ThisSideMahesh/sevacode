package com.dp.sgp.autoimageslider.IndicatorView.animation.controller;

import com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.DropAnimation;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.IndicatorAnimationType;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.WormAnimation;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Orientation;
import com.dp.sgp.autoimageslider.IndicatorView.utils.CoordinatesUtils;

/* JADX INFO: loaded from: classes.dex */
public class AnimationController {
    private Indicator indicator;
    private boolean isInteractive;
    private ValueController.UpdateListener listener;
    private float progress;
    private BaseAnimation runningAnimation;
    private ValueController valueController;

    public AnimationController(Indicator indicator, ValueController.UpdateListener updateListener) {
        this.valueController = new ValueController(updateListener);
        this.listener = updateListener;
        this.indicator = indicator;
    }

    public void interactive(float f) {
        this.isInteractive = true;
        this.progress = f;
        animate();
    }

    public void basic() {
        this.isInteractive = false;
        this.progress = 0.0f;
        animate();
    }

    public void end() {
        BaseAnimation baseAnimation = this.runningAnimation;
        if (baseAnimation != null) {
            baseAnimation.end();
        }
    }

    /* JADX INFO: renamed from: com.dp.sgp.autoimageslider.IndicatorView.animation.controller.AnimationController$1, reason: invalid class name */
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
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[IndicatorAnimationType.FILL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[IndicatorAnimationType.SLIDE.ordinal()] = 6;
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

    private void animate() {
        switch (AnonymousClass1.$SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType[this.indicator.getAnimationType().ordinal()]) {
            case 1:
                this.listener.onValueUpdated(null);
                break;
            case 2:
                colorAnimation();
                break;
            case 3:
                scaleAnimation();
                break;
            case 4:
                wormAnimation();
                break;
            case 5:
                fillAnimation();
                break;
            case 6:
                slideAnimation();
                break;
            case 7:
                thinWormAnimation();
                break;
            case 8:
                dropAnimation();
                break;
            case 9:
                swapAnimation();
                break;
            case 10:
                scaleDownAnimation();
                break;
        }
    }

    private void colorAnimation() {
        int selectedColor = this.indicator.getSelectedColor();
        int unselectedColor = this.indicator.getUnselectedColor();
        BaseAnimation baseAnimationDuration = this.valueController.color().with(unselectedColor, selectedColor).duration(this.indicator.getAnimationDuration());
        if (this.isInteractive) {
            baseAnimationDuration.progress(this.progress);
        } else {
            baseAnimationDuration.start();
        }
        this.runningAnimation = baseAnimationDuration;
    }

    private void scaleAnimation() {
        int selectedColor = this.indicator.getSelectedColor();
        int unselectedColor = this.indicator.getUnselectedColor();
        int radius = this.indicator.getRadius();
        float scaleFactor = this.indicator.getScaleFactor();
        BaseAnimation baseAnimationDuration = this.valueController.scale().with(unselectedColor, selectedColor, radius, scaleFactor).duration(this.indicator.getAnimationDuration());
        if (this.isInteractive) {
            baseAnimationDuration.progress(this.progress);
        } else {
            baseAnimationDuration.start();
        }
        this.runningAnimation = baseAnimationDuration;
    }

    private void wormAnimation() {
        int selectedPosition = this.indicator.isInteractiveAnimation() ? this.indicator.getSelectedPosition() : this.indicator.getLastSelectedPosition();
        int selectingPosition = this.indicator.isInteractiveAnimation() ? this.indicator.getSelectingPosition() : this.indicator.getSelectedPosition();
        int coordinate = CoordinatesUtils.getCoordinate(this.indicator, selectedPosition);
        int coordinate2 = CoordinatesUtils.getCoordinate(this.indicator, selectingPosition);
        boolean z = selectingPosition > selectedPosition;
        WormAnimation wormAnimationDuration = this.valueController.worm().with(coordinate, coordinate2, this.indicator.getRadius(), z).duration(this.indicator.getAnimationDuration());
        if (this.isInteractive) {
            wormAnimationDuration.progress(this.progress);
        } else {
            wormAnimationDuration.start();
        }
        this.runningAnimation = wormAnimationDuration;
    }

    private void slideAnimation() {
        int selectedPosition = this.indicator.isInteractiveAnimation() ? this.indicator.getSelectedPosition() : this.indicator.getLastSelectedPosition();
        int selectingPosition = this.indicator.isInteractiveAnimation() ? this.indicator.getSelectingPosition() : this.indicator.getSelectedPosition();
        BaseAnimation baseAnimationDuration = this.valueController.slide().with(CoordinatesUtils.getCoordinate(this.indicator, selectedPosition), CoordinatesUtils.getCoordinate(this.indicator, selectingPosition)).duration(this.indicator.getAnimationDuration());
        if (this.isInteractive) {
            baseAnimationDuration.progress(this.progress);
        } else {
            baseAnimationDuration.start();
        }
        this.runningAnimation = baseAnimationDuration;
    }

    private void fillAnimation() {
        int selectedColor = this.indicator.getSelectedColor();
        int unselectedColor = this.indicator.getUnselectedColor();
        int radius = this.indicator.getRadius();
        int stroke = this.indicator.getStroke();
        BaseAnimation baseAnimationDuration = this.valueController.fill().with(unselectedColor, selectedColor, radius, stroke).duration(this.indicator.getAnimationDuration());
        if (this.isInteractive) {
            baseAnimationDuration.progress(this.progress);
        } else {
            baseAnimationDuration.start();
        }
        this.runningAnimation = baseAnimationDuration;
    }

    private void thinWormAnimation() {
        int selectedPosition = this.indicator.isInteractiveAnimation() ? this.indicator.getSelectedPosition() : this.indicator.getLastSelectedPosition();
        int selectingPosition = this.indicator.isInteractiveAnimation() ? this.indicator.getSelectingPosition() : this.indicator.getSelectedPosition();
        int coordinate = CoordinatesUtils.getCoordinate(this.indicator, selectedPosition);
        int coordinate2 = CoordinatesUtils.getCoordinate(this.indicator, selectingPosition);
        boolean z = selectingPosition > selectedPosition;
        WormAnimation wormAnimationDuration = this.valueController.thinWorm().with(coordinate, coordinate2, this.indicator.getRadius(), z).duration(this.indicator.getAnimationDuration());
        if (this.isInteractive) {
            wormAnimationDuration.progress(this.progress);
        } else {
            wormAnimationDuration.start();
        }
        this.runningAnimation = wormAnimationDuration;
    }

    private void dropAnimation() {
        int selectedPosition = this.indicator.isInteractiveAnimation() ? this.indicator.getSelectedPosition() : this.indicator.getLastSelectedPosition();
        int selectingPosition = this.indicator.isInteractiveAnimation() ? this.indicator.getSelectingPosition() : this.indicator.getSelectedPosition();
        int coordinate = CoordinatesUtils.getCoordinate(this.indicator, selectedPosition);
        int coordinate2 = CoordinatesUtils.getCoordinate(this.indicator, selectingPosition);
        int paddingTop = this.indicator.getPaddingTop();
        int paddingLeft = this.indicator.getPaddingLeft();
        if (this.indicator.getOrientation() != Orientation.HORIZONTAL) {
            paddingTop = paddingLeft;
        }
        int radius = this.indicator.getRadius();
        DropAnimation dropAnimationWith = this.valueController.drop().duration(this.indicator.getAnimationDuration()).with(coordinate, coordinate2, (radius * 3) + paddingTop, radius + paddingTop, radius);
        if (this.isInteractive) {
            dropAnimationWith.progress(this.progress);
        } else {
            dropAnimationWith.start();
        }
        this.runningAnimation = dropAnimationWith;
    }

    private void swapAnimation() {
        int selectedPosition = this.indicator.isInteractiveAnimation() ? this.indicator.getSelectedPosition() : this.indicator.getLastSelectedPosition();
        int selectingPosition = this.indicator.isInteractiveAnimation() ? this.indicator.getSelectingPosition() : this.indicator.getSelectedPosition();
        BaseAnimation baseAnimationDuration = this.valueController.swap().with(CoordinatesUtils.getCoordinate(this.indicator, selectedPosition), CoordinatesUtils.getCoordinate(this.indicator, selectingPosition)).duration(this.indicator.getAnimationDuration());
        if (this.isInteractive) {
            baseAnimationDuration.progress(this.progress);
        } else {
            baseAnimationDuration.start();
        }
        this.runningAnimation = baseAnimationDuration;
    }

    private void scaleDownAnimation() {
        int selectedColor = this.indicator.getSelectedColor();
        int unselectedColor = this.indicator.getUnselectedColor();
        int radius = this.indicator.getRadius();
        float scaleFactor = this.indicator.getScaleFactor();
        BaseAnimation baseAnimationDuration = this.valueController.scaleDown().with(unselectedColor, selectedColor, radius, scaleFactor).duration(this.indicator.getAnimationDuration());
        if (this.isInteractive) {
            baseAnimationDuration.progress(this.progress);
        } else {
            baseAnimationDuration.start();
        }
        this.runningAnimation = baseAnimationDuration;
    }
}
