.class public Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "InfinitePagerAdapter.java"


# static fields
.field public static final INFINITE_SCROLL_LIMIT:I = 0x7e90

.field private static final TAG:Ljava/lang/String; = "InfinitePagerAdapter"


# instance fields
.field private adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/autoimageslider/SliderViewAdapter;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {p0, p2}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealPosition(I)I

    move-result p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealCount()I

    move-result v0

    mul-int/lit16 v0, v0, 0x7e90

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMiddlePosition(I)I
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3f48

    add-int/2addr p1, v0

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getPageWidth(I)F
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->getPageWidth(I)F

    move-result p1

    return p1
.end method

.method public getRealAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    return-object v0
.end method

.method public getRealCount()I
    .locals 1

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRealPosition(I)I
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealCount()I

    move-result v0

    rem-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 68
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {p0, p2}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealPosition(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->adapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
