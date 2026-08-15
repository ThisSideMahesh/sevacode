.class public Lcom/dp/sgp/Model/IsSaturday;
.super Ljava/lang/Object;
.source "IsSaturday.java"


# instance fields
.field private dayId:I

.field private event:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDayId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/dp/sgp/Model/IsSaturday;->dayId:I

    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/dp/sgp/Model/IsSaturday;->event:Ljava/lang/String;

    return-object v0
.end method

.method public setDayId(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/dp/sgp/Model/IsSaturday;->dayId:I

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/dp/sgp/Model/IsSaturday;->event:Ljava/lang/String;

    return-void
.end method
