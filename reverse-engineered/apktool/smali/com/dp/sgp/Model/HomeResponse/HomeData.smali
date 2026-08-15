.class public Lcom/dp/sgp/Model/HomeResponse/HomeData;
.super Ljava/lang/Object;
.source "HomeData.java"


# instance fields
.field private banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation
.end field

.field private panchangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Panchang;",
            ">;"
        }
    .end annotation
.end field

.field private productsBanner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation
.end field

.field private profile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private sevamarg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Sevamarg;",
            ">;"
        }
    .end annotation
.end field

.field private suvichar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Suvichar;",
            ">;"
        }
    .end annotation
.end field

.field private vibhag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Vibhag;",
            ">;"
        }
    .end annotation
.end field

.field private youtube:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Youtube;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->panchangs:Ljava/util/List;

    .line 66
    iput-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->sevamarg:Ljava/util/List;

    .line 67
    iput-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->youtube:Ljava/util/List;

    .line 68
    iput-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->banners:Ljava/util/List;

    .line 69
    iput-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->suvichar:Ljava/util/List;

    .line 70
    iput-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->vibhag:Ljava/util/List;

    .line 81
    iput-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->productsBanner:Ljava/util/List;

    .line 91
    iput-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->profile:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBanners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->banners:Ljava/util/List;

    return-object v0
.end method

.method public getPanchangs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Panchang;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->panchangs:Ljava/util/List;

    return-object v0
.end method

.method public getProductsBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->productsBanner:Ljava/util/List;

    return-object v0
.end method

.method public getProfile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/Profile;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->profile:Ljava/util/List;

    return-object v0
.end method

.method public getSevamarg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Sevamarg;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->sevamarg:Ljava/util/List;

    return-object v0
.end method

.method public getSuvichar()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Suvichar;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->suvichar:Ljava/util/List;

    return-object v0
.end method

.method public getVibhag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Vibhag;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->vibhag:Ljava/util/List;

    return-object v0
.end method

.method public getYoutube()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Youtube;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->youtube:Ljava/util/List;

    return-object v0
.end method

.method public setBanners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->banners:Ljava/util/List;

    return-void
.end method

.method public setPanchangs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Panchang;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->panchangs:Ljava/util/List;

    return-void
.end method

.method public setProductsBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->productsBanner:Ljava/util/List;

    return-void
.end method

.method public setProfile(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/Profile;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->profile:Ljava/util/List;

    return-void
.end method

.method public setSevamarg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Sevamarg;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->sevamarg:Ljava/util/List;

    return-void
.end method

.method public setSuvichar(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Suvichar;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->suvichar:Ljava/util/List;

    return-void
.end method

.method public setVibhag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Vibhag;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->vibhag:Ljava/util/List;

    return-void
.end method

.method public setYoutube(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Youtube;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeData;->youtube:Ljava/util/List;

    return-void
.end method
