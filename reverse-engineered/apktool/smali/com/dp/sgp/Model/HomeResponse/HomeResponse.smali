.class public Lcom/dp/sgp/Model/HomeResponse/HomeResponse;
.super Ljava/lang/Object;
.source "HomeResponse.java"


# instance fields
.field private data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

.field private flag:Ljava/lang/Integer;

.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/dp/sgp/Model/HomeResponse/HomeData;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    return-object v0
.end method

.method public getFlag()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->flag:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/dp/sgp/Model/HomeResponse/HomeData;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    return-void
.end method

.method public setFlag(Ljava/lang/Integer;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->flag:Ljava/lang/Integer;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->user_id:Ljava/lang/String;

    return-void
.end method
