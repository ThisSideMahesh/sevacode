.class public Lcom/dp/sgp/Model/saramrut/SendSubmitBody;
.super Ljava/lang/Object;
.source "SendSubmitBody.java"


# instance fields
.field private adhyayid:Ljava/lang/String;

.field private device_token:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdhyayid()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->adhyayid:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_token()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->device_token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAdhyayid(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->adhyayid:Ljava/lang/String;

    return-void
.end method

.method public setDevice_token(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->device_token:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->user_id:Ljava/lang/String;

    return-void
.end method
