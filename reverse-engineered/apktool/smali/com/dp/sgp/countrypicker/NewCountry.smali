.class public Lcom/dp/sgp/countrypicker/NewCountry;
.super Ljava/lang/Object;
.source "NewCountry.java"


# instance fields
.field private CcName:Ljava/lang/String;

.field private dialingCode:Ljava/lang/String;

.field private isoCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCcName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/dp/sgp/countrypicker/NewCountry;->CcName:Ljava/lang/String;

    return-object v0
.end method

.method public getDialingCode()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/dp/sgp/countrypicker/NewCountry;->dialingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIsoCode()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/dp/sgp/countrypicker/NewCountry;->isoCode:Ljava/lang/String;

    return-object v0
.end method

.method public setCcName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/dp/sgp/countrypicker/NewCountry;->CcName:Ljava/lang/String;

    return-void
.end method

.method public setDialingCode(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/dp/sgp/countrypicker/NewCountry;->dialingCode:Ljava/lang/String;

    return-void
.end method

.method public setIsoCode(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/dp/sgp/countrypicker/NewCountry;->isoCode:Ljava/lang/String;

    return-void
.end method
