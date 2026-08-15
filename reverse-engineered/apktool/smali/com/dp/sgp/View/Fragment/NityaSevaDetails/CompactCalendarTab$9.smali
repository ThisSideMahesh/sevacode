.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$9;
.super Ljava/lang/Object;
.source "CompactCalendarTab.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->openCalendarOnCreate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

.field final synthetic val$layout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$9;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$9;->val$layout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 384
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$9;->val$layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$9;->val$layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 389
    :goto_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$9;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->showCalendarWithAnimation()V

    return-void
.end method
