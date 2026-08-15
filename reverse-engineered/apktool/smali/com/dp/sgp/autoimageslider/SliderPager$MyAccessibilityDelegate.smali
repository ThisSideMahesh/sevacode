.class Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "SliderPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/autoimageslider/SliderPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/autoimageslider/SliderPager;


# direct methods
.method constructor <init>(Lcom/dp/sgp/autoimageslider/SliderPager;)V
    .locals 0

    .line 3047
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    .line 3099
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    iget-object v0, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    iget-object v0, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 3051
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3052
    const-class p1, Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3053
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->canScroll()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 3054
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    iget-object p1, p1, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz p1, :cond_0

    .line 3055
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    iget-object p1, p1, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 3056
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    iget p1, p1, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 3057
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    iget p1, p1, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 3063
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 3064
    const-class p1, Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3065
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->canScroll()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3066
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    .line 3067
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3069
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2000

    .line 3070
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 3076
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    .line 3088
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3089
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    iget p2, p1, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(I)V

    return p3

    :cond_2
    return v0

    .line 3081
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {p1, p3}, Lcom/dp/sgp/autoimageslider/SliderPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3082
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    iget p2, p1, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(I)V

    return p3

    :cond_4
    return v0
.end method
