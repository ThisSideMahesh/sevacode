.class final Lcom/dp/sgp/autoimageslider/SliderPager$1;
.super Ljava/lang/Object;
.source "SliderPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/autoimageslider/SliderPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;)I
    .locals 0

    .line 93
    iget p1, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget p2, p2, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 90
    check-cast p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    check-cast p2, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/SliderPager$1;->compare(Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;)I

    move-result p1

    return p1
.end method
