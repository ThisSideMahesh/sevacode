.class public Lcom/dp/sgp/Model/nityaseva/ProductData;
.super Ljava/lang/Object;
.source "ProductData.java"


# instance fields
.field private ayurveda:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private granthasahitya:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private krushidhan:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private lokpriya:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private poojasahitya:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private productBanners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->lokpriya:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->poojasahitya:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->ayurveda:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->granthasahitya:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->krushidhan:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->productBanners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAyurveda()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->ayurveda:Ljava/util/List;

    return-object v0
.end method

.method public getGranthasahitya()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->granthasahitya:Ljava/util/List;

    return-object v0
.end method

.method public getKrushidhan()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->krushidhan:Ljava/util/List;

    return-object v0
.end method

.method public getLokpriya()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->lokpriya:Ljava/util/List;

    return-object v0
.end method

.method public getPoojasahitya()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->poojasahitya:Ljava/util/List;

    return-object v0
.end method

.method public getProductBanners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->productBanners:Ljava/util/List;

    return-object v0
.end method

.method public setAyurveda(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->ayurveda:Ljava/util/List;

    return-void
.end method

.method public setGranthasahitya(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->granthasahitya:Ljava/util/List;

    return-void
.end method

.method public setKrushidhan(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->krushidhan:Ljava/util/List;

    return-void
.end method

.method public setLokpriya(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->lokpriya:Ljava/util/List;

    return-void
.end method

.method public setPoojasahitya(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->poojasahitya:Ljava/util/List;

    return-void
.end method

.method public setProductBanners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/dp/sgp/Model/nityaseva/ProductData;->productBanners:Ljava/util/List;

    return-void
.end method
