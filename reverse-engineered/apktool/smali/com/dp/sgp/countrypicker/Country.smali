.class public Lcom/dp/sgp/countrypicker/Country;
.super Ljava/lang/Object;
.source "Country.java"


# instance fields
.field private CcName:Ljava/lang/String;

.field private dialingCode:Ljava/lang/String;

.field private isoCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dp/sgp/countrypicker/Country;->isoCode:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/dp/sgp/countrypicker/Country;->dialingCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDialingCode()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/dp/sgp/countrypicker/Country;->dialingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIsoCode()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/dp/sgp/countrypicker/Country;->isoCode:Ljava/lang/String;

    return-object v0
.end method

.method public setDialingCode(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/dp/sgp/countrypicker/Country;->dialingCode:Ljava/lang/String;

    return-void
.end method

.method public setIsoCode(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/dp/sgp/countrypicker/Country;->isoCode:Ljava/lang/String;

    return-void
.end method
