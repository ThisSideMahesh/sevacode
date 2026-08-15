.class Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;
.super Ljava/lang/Object;
.source "BottomNavigationViewEx.java"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/util/BottomNavigationViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOnNavigationItemSelectedListener"
.end annotation


# instance fields
.field private items:Landroid/util/SparseIntArray;

.field private listener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

.field private previousPosition:I

.field private smoothScroll:Z

.field private final viewPagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/view/ViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;Lcom/dp/sgp/util/BottomNavigationViewEx;ZLandroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 1

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 923
    iput v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->previousPosition:I

    .line 927
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->viewPagerRef:Ljava/lang/ref/WeakReference;

    .line 928
    iput-object p4, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->listener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 929
    iput-boolean p3, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->smoothScroll:Z

    .line 932
    invoke-virtual {p2}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 933
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p2

    .line 934
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p3, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->items:Landroid/util/SparseIntArray;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 936
    invoke-interface {p1, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p4

    invoke-interface {p4}, Landroid/view/MenuItem;->getItemId()I

    move-result p4

    .line 937
    iget-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->items:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p4, p3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 947
    iget-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->items:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 949
    iget v1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->previousPosition:I

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    return v2

    .line 954
    :cond_0
    iget-object v1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->listener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 955
    invoke-interface {v1, p1}, Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    .line 962
    :cond_1
    iget-object v1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->viewPagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_2

    return v3

    .line 967
    :cond_2
    invoke-static {v2}, Lcom/dp/sgp/util/BottomNavigationViewEx;->access$202(Z)Z

    .line 968
    iget-object v4, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->items:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget-boolean v4, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->smoothScroll:Z

    invoke-virtual {v1, p1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 969
    invoke-static {v3}, Lcom/dp/sgp/util/BottomNavigationViewEx;->access$202(Z)Z

    .line 972
    iput v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->previousPosition:I

    return v2
.end method

.method public setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 0

    .line 942
    iput-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->listener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method
