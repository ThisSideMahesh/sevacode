.class public Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;
.super Ljava/lang/Object;
.source "NityaSevaDataResponse.java"


# instance fields
.field private data:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->data:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->data:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->status:Ljava/lang/String;

    return-void
.end method
