.class public Lcom/dp/sgp/calendar/EventData;
.super Ljava/lang/Object;
.source "EventData.java"


# instance fields
.field private amavsyaDate:I

.field private chaturthiDate:I

.field private pournimaDate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAmavsyaDate()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/dp/sgp/calendar/EventData;->amavsyaDate:I

    return v0
.end method

.method public getChaturthiDate()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/dp/sgp/calendar/EventData;->chaturthiDate:I

    return v0
.end method

.method public getPournimaDate()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/dp/sgp/calendar/EventData;->pournimaDate:I

    return v0
.end method

.method public setAmavsyaDate(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/dp/sgp/calendar/EventData;->amavsyaDate:I

    return-void
.end method

.method public setChaturthiDate(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/dp/sgp/calendar/EventData;->chaturthiDate:I

    return-void
.end method

.method public setPournimaDate(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/dp/sgp/calendar/EventData;->pournimaDate:I

    return-void
.end method
