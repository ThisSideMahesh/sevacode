.class public Lcom/github/gcacace/signaturepad/utils/TimedPoint;
.super Ljava/lang/Object;
.source "TimedPoint.java"


# instance fields
.field public timestamp:J

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public distanceTo(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)F
    .locals 6

    .line 22
    iget v0, p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    iget v1, p0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    iget v4, p0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    sub-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public set(FF)Lcom/github/gcacace/signaturepad/utils/TimedPoint;
    .locals 0

    .line 9
    iput p1, p0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    .line 10
    iput p2, p0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->timestamp:J

    return-object p0
.end method

.method public velocityFrom(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)F
    .locals 5

    .line 16
    invoke-virtual {p0, p1}, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->distanceTo(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)F

    move-result v0

    iget-wide v1, p0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->timestamp:J

    iget-wide v3, p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->timestamp:J

    sub-long/2addr v1, v3

    long-to-float p1, v1

    div-float/2addr v0, p1

    cmpl-float p1, v0, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
