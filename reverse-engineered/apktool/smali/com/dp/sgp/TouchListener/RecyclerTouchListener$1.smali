.class Lcom/dp/sgp/TouchListener/RecyclerTouchListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RecyclerTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

.field final synthetic val$clickListener:Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/dp/sgp/TouchListener/RecyclerTouchListener;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/dp/sgp/TouchListener/RecyclerTouchListener$1;->this$0:Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    iput-object p2, p0, Lcom/dp/sgp/TouchListener/RecyclerTouchListener$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p3, p0, Lcom/dp/sgp/TouchListener/RecyclerTouchListener$1;->val$clickListener:Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/dp/sgp/TouchListener/RecyclerTouchListener$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/dp/sgp/TouchListener/RecyclerTouchListener$1;->val$clickListener:Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/dp/sgp/TouchListener/RecyclerTouchListener$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;->onLongClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
