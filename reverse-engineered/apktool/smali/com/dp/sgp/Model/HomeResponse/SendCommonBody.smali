.class public Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
.super Ljava/lang/Object;
.source "SendCommonBody.java"


# instance fields
.field private device_token:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


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

    .line 19
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->device_token:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice_token(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->device_token:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->id:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->type:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->user_id:Ljava/lang/String;

    return-void
.end method
