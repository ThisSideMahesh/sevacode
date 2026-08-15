.class public Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;
.super Ljava/lang/Object;
.source "NityasevaMMainResponse.java"


# instance fields
.field private mantravibhag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private stotravibhag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
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

    .line 29
    iput-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;->mantravibhag:Ljava/util/List;

    .line 30
    iput-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;->stotravibhag:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMantravibhag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;->mantravibhag:Ljava/util/List;

    return-object v0
.end method

.method public getStotravibhag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;->stotravibhag:Ljava/util/List;

    return-object v0
.end method

.method public setMantravibhag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;->mantravibhag:Ljava/util/List;

    return-void
.end method

.method public setStotravibhag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;->stotravibhag:Ljava/util/List;

    return-void
.end method
