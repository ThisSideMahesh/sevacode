.class Lcom/dp/sgp/util/BottomNavigationViewEx$BottomNavigationViewExOnPageChangeListener;
.super Ljava/lang/Object;
.source "BottomNavigationViewEx.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/util/BottomNavigationViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BottomNavigationViewExOnPageChangeListener"
.end annotation


# instance fields
.field private final mBnveRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/dp/sgp/util/BottomNavigationViewEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dp/sgp/util/BottomNavigationViewEx;)V
    .locals 1

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$BottomNavigationViewExOnPageChangeListener;->mBnveRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$BottomNavigationViewExOnPageChangeListener;->mBnveRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/util/BottomNavigationViewEx;

    if-eqz v0, :cond_0

    .line 909
    invoke-static {}, Lcom/dp/sgp/util/BottomNavigationViewEx;->access$200()Z

    move-result v1

    if-nez v1, :cond_0

    .line 910
    invoke-virtual {v0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
