.class public Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;
.super Ljava/lang/Object;
.source "ControlTimedPoints.java"


# instance fields
.field public c1:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

.field public c2:Lcom/github/gcacace/signaturepad/utils/TimedPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;)Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;->c1:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    .line 13
    iput-object p2, p0, Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;->c2:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    return-object p0
.end method
