.class Lcom/github/gcacace/signaturepad/utils/SvgPoint;
.super Ljava/lang/Object;
.source "SvgPoint.java"


# instance fields
.field final x:Ljava/lang/Integer;

.field final y:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->x:Ljava/lang/Integer;

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->y:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget v0, p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->x:Ljava/lang/Integer;

    .line 14
    iget p1, p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->y:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    check-cast p1, Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    .line 46
    iget-object v1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->x:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->x:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->y:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->y:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->y:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toAbsoluteCoordinates()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->x:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->y:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRelativeCoordinates(Lcom/github/gcacace/signaturepad/utils/SvgPoint;)Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    iget-object v1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->x:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->x:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->y:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p1, p1, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->y:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/github/gcacace/signaturepad/utils/SvgPoint;-><init>(II)V

    invoke-virtual {v0}, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->toAbsoluteCoordinates()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
