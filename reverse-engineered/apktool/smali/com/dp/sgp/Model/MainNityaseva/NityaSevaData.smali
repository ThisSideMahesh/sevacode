.class public Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;
.super Ljava/lang/Object;
.source "NityaSevaData.java"


# instance fields
.field private aartisangrah:Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

.field private nityaseva:Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

.field private sanwar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private shriswamicharitra:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/MainNityaseva/Shriswamicharitra;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->shriswamicharitra:Ljava/util/List;

    .line 53
    iput-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->sanwar:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAartisangrah()Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->aartisangrah:Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    return-object v0
.end method

.method public getNityaseva()Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->nityaseva:Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

    return-object v0
.end method

.method public getSanwar()Ljava/util/List;
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
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->sanwar:Ljava/util/List;

    return-object v0
.end method

.method public getShriswamicharitra()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/MainNityaseva/Shriswamicharitra;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->shriswamicharitra:Ljava/util/List;

    return-object v0
.end method

.method public setAartisangrah(Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->aartisangrah:Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    return-void
.end method

.method public setNityaseva(Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->nityaseva:Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

    return-void
.end method

.method public setSanwar(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->sanwar:Ljava/util/List;

    return-void
.end method

.method public setShriswamicharitra(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/MainNityaseva/Shriswamicharitra;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->shriswamicharitra:Ljava/util/List;

    return-void
.end method
