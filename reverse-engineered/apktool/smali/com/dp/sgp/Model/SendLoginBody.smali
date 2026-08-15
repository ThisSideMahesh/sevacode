.class public Lcom/dp/sgp/Model/SendLoginBody;
.super Ljava/lang/Object;
.source "SendLoginBody.java"


# instance fields
.field private device_token:Ljava/lang/String;

.field private fcm_id:Ljava/lang/String;

.field private mobile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice_token()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/dp/sgp/Model/SendLoginBody;->device_token:Ljava/lang/String;

    return-object v0
.end method

.method public getFcm_id()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/dp/sgp/Model/SendLoginBody;->fcm_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/dp/sgp/Model/SendLoginBody;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice_token(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/dp/sgp/Model/SendLoginBody;->device_token:Ljava/lang/String;

    return-void
.end method

.method public setFcm_id(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/dp/sgp/Model/SendLoginBody;->fcm_id:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/dp/sgp/Model/SendLoginBody;->mobile:Ljava/lang/String;

    return-void
.end method
