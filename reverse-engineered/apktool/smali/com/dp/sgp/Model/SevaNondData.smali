.class public Lcom/dp/sgp/Model/SevaNondData;
.super Ljava/lang/Object;
.source "SevaNondData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_desc"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/dp/sgp/Model/SevaNondData;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/dp/sgp/Model/SevaNondData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/dp/sgp/Model/SevaNondData;->desc:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/dp/sgp/Model/SevaNondData;->name:Ljava/lang/String;

    return-void
.end method
