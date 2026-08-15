.class public Lcom/dp/sgp/util/BottomNavigationBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BottomNavigationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "Landroid/support/design/widget/BottomNavigationView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private hideBottomNavigationView(Landroid/support/design/widget/BottomNavigationView;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/support/design/widget/BottomNavigationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/BottomNavigationView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private showBottomNavigationView(Landroid/support/design/widget/BottomNavigationView;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Landroid/support/design/widget/BottomNavigationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/BottomNavigationView;Landroid/view/View;)Z
    .locals 0

    .line 27
    instance-of p1, p3, Landroid/widget/FrameLayout;

    return p1
.end method

.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 15
    check-cast p2, Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dp/sgp/util/BottomNavigationBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/BottomNavigationView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/BottomNavigationView;Landroid/view/View;II[I)V
    .locals 0

    if-gez p5, :cond_0

    .line 39
    invoke-direct {p0, p2}, Lcom/dp/sgp/util/BottomNavigationBehavior;->showBottomNavigationView(Landroid/support/design/widget/BottomNavigationView;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0

    .line 15
    check-cast p2, Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual/range {p0 .. p6}, Lcom/dp/sgp/util/BottomNavigationBehavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/BottomNavigationView;Landroid/view/View;II[I)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/BottomNavigationView;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x2

    if-ne p5, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 15
    check-cast p2, Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual/range {p0 .. p5}, Lcom/dp/sgp/util/BottomNavigationBehavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/BottomNavigationView;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method
