.class public Lcom/dp/sgp/Model/ProductDetailsResponse;
.super Ljava/lang/Object;
.source "ProductDetailsResponse.java"


# instance fields
.field private data:Lcom/dp/sgp/Model/CommonData;

.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/dp/sgp/Model/ProductDetailsResponse;->data:Lcom/dp/sgp/Model/CommonData;

    return-void
.end method


# virtual methods
.method public getData()Lcom/dp/sgp/Model/CommonData;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/dp/sgp/Model/ProductDetailsResponse;->data:Lcom/dp/sgp/Model/CommonData;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/dp/sgp/Model/ProductDetailsResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/dp/sgp/Model/ProductDetailsResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/dp/sgp/Model/CommonData;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/dp/sgp/Model/ProductDetailsResponse;->data:Lcom/dp/sgp/Model/CommonData;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/dp/sgp/Model/ProductDetailsResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/dp/sgp/Model/ProductDetailsResponse;->status:Ljava/lang/String;

    return-void
.end method
