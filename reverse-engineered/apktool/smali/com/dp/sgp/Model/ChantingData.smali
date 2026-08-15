.class public Lcom/dp/sgp/Model/ChantingData;
.super Ljava/lang/Object;
.source "ChantingData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field private isAuto:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAuto"
    .end annotation
.end field

.field private isSound:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSound"
    .end annotation
.end field

.field private isVibrate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isVibrate"
    .end annotation
.end field

.field private round:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "round"
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
.method public getCount()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/dp/sgp/Model/ChantingData;->count:I

    return v0
.end method

.method public getRound()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/dp/sgp/Model/ChantingData;->round:I

    return v0
.end method

.method public isAuto()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/dp/sgp/Model/ChantingData;->isAuto:Z

    return v0
.end method

.method public isSound()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/dp/sgp/Model/ChantingData;->isSound:Z

    return v0
.end method

.method public isVibrate()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/dp/sgp/Model/ChantingData;->isVibrate:Z

    return v0
.end method

.method public setAuto(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/dp/sgp/Model/ChantingData;->isAuto:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/dp/sgp/Model/ChantingData;->count:I

    return-void
.end method

.method public setRound(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/dp/sgp/Model/ChantingData;->round:I

    return-void
.end method

.method public setSound(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/dp/sgp/Model/ChantingData;->isSound:Z

    return-void
.end method

.method public setVibrate(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/dp/sgp/Model/ChantingData;->isVibrate:Z

    return-void
.end method
