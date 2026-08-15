.class public Lcom/github/gcacace/signaturepad/utils/Bezier;
.super Ljava/lang/Object;
.source "Bezier.java"


# instance fields
.field public control1:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

.field public control2:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

.field public endPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

.field public startPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public length()F
    .locals 16

    move-object/from16 v6, p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-wide v7, v0

    move-wide v9, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/16 v0, 0xa

    if-gt v12, v0, :cond_1

    int-to-float v1, v12

    int-to-float v0, v0

    div-float v13, v1, v0

    .line 26
    iget-object v0, v6, Lcom/github/gcacace/signaturepad/utils/Bezier;->startPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v2, v0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    iget-object v0, v6, Lcom/github/gcacace/signaturepad/utils/Bezier;->control1:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v3, v0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    iget-object v0, v6, Lcom/github/gcacace/signaturepad/utils/Bezier;->control2:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v4, v0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    iget-object v0, v6, Lcom/github/gcacace/signaturepad/utils/Bezier;->endPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v5, v0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/github/gcacace/signaturepad/utils/Bezier;->point(FFFFF)D

    move-result-wide v14

    .line 28
    iget-object v0, v6, Lcom/github/gcacace/signaturepad/utils/Bezier;->startPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v2, v0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    iget-object v0, v6, Lcom/github/gcacace/signaturepad/utils/Bezier;->control1:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v3, v0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    iget-object v0, v6, Lcom/github/gcacace/signaturepad/utils/Bezier;->control2:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v4, v0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    iget-object v0, v6, Lcom/github/gcacace/signaturepad/utils/Bezier;->endPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v5, v0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/github/gcacace/signaturepad/utils/Bezier;->point(FFFFF)D

    move-result-wide v0

    if-lez v12, :cond_0

    sub-double v2, v14, v7

    sub-double v4, v0, v9

    float-to-double v7, v11

    mul-double v2, v2, v2

    mul-double v4, v4, v4

    add-double/2addr v2, v4

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v2

    double-to-float v2, v7

    move v11, v2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    move-wide v9, v0

    move-wide v7, v14

    goto :goto_0

    :cond_1
    return v11
.end method

.method public point(FFFFF)D
    .locals 8

    float-to-double v0, p2

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    mul-double v0, v0, v4

    mul-double v0, v0, v4

    float-to-double p2, p3

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v6

    mul-double p2, p2, v4

    mul-double p2, p2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v2

    add-double/2addr v0, p2

    float-to-double p2, p4

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v6

    mul-double p2, p2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v2

    add-double/2addr v0, p2

    mul-float p5, p5, p1

    mul-float p5, p5, p1

    mul-float p5, p5, p1

    float-to-double p1, p5

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public set(Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;)Lcom/github/gcacace/signaturepad/utils/Bezier;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/github/gcacace/signaturepad/utils/Bezier;->startPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    .line 13
    iput-object p2, p0, Lcom/github/gcacace/signaturepad/utils/Bezier;->control1:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    .line 14
    iput-object p3, p0, Lcom/github/gcacace/signaturepad/utils/Bezier;->control2:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    .line 15
    iput-object p4, p0, Lcom/github/gcacace/signaturepad/utils/Bezier;->endPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    return-object p0
.end method
