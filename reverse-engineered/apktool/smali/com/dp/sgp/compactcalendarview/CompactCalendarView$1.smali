.class Lcom/dp/sgp/compactcalendarview/CompactCalendarView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CompactCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/compactcalendarview/CompactCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;


# direct methods
.method constructor <init>(Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$1;->this$0:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$1;->this$0:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-static {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->access$100(Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$1;->this$0:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 73
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$1;->this$0:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-static {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->access$000(Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 74
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$1;->this$0:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$1;->this$0:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-static {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->access$000(Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->onSingleTapUp(Landroid/view/MotionEvent;)V

    .line 53
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$1;->this$0:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    .line 54
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
