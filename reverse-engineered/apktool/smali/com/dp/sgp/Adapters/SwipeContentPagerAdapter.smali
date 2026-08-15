.class public Lcom/dp/sgp/Adapters/SwipeContentPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SwipeContentPagerAdapter.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private listType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 23
    iput-object p2, p0, Lcom/dp/sgp/Adapters/SwipeContentPagerAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/dp/sgp/Adapters/SwipeContentPagerAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dp/sgp/Adapters/SwipeContentPagerAdapter;->list:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->newInstance(Ljava/util/List;I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method
