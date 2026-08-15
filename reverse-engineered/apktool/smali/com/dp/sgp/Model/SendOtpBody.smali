.class public Lcom/dp/sgp/Model/SendOtpBody;
.super Ljava/lang/Object;
.source "SendOtpBody.java"


# instance fields
.field private device_token:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private otp:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/dp/sgp/Model/SendOtpBody;->device_token:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/dp/sgp/Model/SendOtpBody;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/dp/sgp/Model/SendOtpBody;->otp:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice_token(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/dp/sgp/Model/SendOtpBody;->device_token:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/dp/sgp/Model/SendOtpBody;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setOtp(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/dp/sgp/Model/SendOtpBody;->otp:Ljava/lang/String;

    return-void
.end method
