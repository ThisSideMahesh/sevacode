.class public Lcom/dp/sgp/Model/SendCountryLoginBody;
.super Ljava/lang/Object;
.source "SendCountryLoginBody.java"


# instance fields
.field private device_token:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private fcm_id:Ljava/lang/String;


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

    .line 22
    iget-object v0, p0, Lcom/dp/sgp/Model/SendCountryLoginBody;->device_token:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/dp/sgp/Model/SendCountryLoginBody;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFcm_id()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dp/sgp/Model/SendCountryLoginBody;->fcm_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice_token(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/dp/sgp/Model/SendCountryLoginBody;->device_token:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/dp/sgp/Model/SendCountryLoginBody;->email:Ljava/lang/String;

    return-void
.end method

.method public setFcm_id(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/dp/sgp/Model/SendCountryLoginBody;->fcm_id:Ljava/lang/String;

    return-void
.end method
