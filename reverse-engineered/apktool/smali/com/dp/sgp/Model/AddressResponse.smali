.class public Lcom/dp/sgp/Model/AddressResponse;
.super Ljava/lang/Object;
.source "AddressResponse.java"


# instance fields
.field private address:Ljava/lang/String;

.field private link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/dp/sgp/Model/AddressResponse;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/dp/sgp/Model/AddressResponse;->link:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/dp/sgp/Model/AddressResponse;->address:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/dp/sgp/Model/AddressResponse;->link:Ljava/lang/String;

    return-void
.end method
