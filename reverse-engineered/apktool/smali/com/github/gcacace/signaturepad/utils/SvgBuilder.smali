.class public Lcom/github/gcacace/signaturepad/utils/SvgBuilder;
.super Ljava/lang/Object;
.source "SvgBuilder.java"


# instance fields
.field private mCurrentPathBuilder:Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;

.field private final mSvgPathsBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->mSvgPathsBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->mCurrentPathBuilder:Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;

    return-void
.end method

.method private appendCurrentPath()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->mSvgPathsBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->mCurrentPathBuilder:Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private isPathStarted()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->mCurrentPathBuilder:Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startNewPath(Ljava/lang/Integer;Lcom/github/gcacace/signaturepad/utils/SvgPoint;)V
    .locals 1

    .line 63
    new-instance v0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;

    invoke-direct {v0, p2, p1}, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;-><init>(Lcom/github/gcacace/signaturepad/utils/SvgPoint;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->mCurrentPathBuilder:Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;

    return-void
.end method


# virtual methods
.method public append(Lcom/github/gcacace/signaturepad/utils/Bezier;F)Lcom/github/gcacace/signaturepad/utils/SvgBuilder;
    .locals 4

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 43
    new-instance v0, Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    iget-object v1, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->startPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    invoke-direct {v0, v1}, Lcom/github/gcacace/signaturepad/utils/SvgPoint;-><init>(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V

    .line 44
    new-instance v1, Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    iget-object v2, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->control1:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    invoke-direct {v1, v2}, Lcom/github/gcacace/signaturepad/utils/SvgPoint;-><init>(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V

    .line 45
    new-instance v2, Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    iget-object v3, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->control2:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    invoke-direct {v2, v3}, Lcom/github/gcacace/signaturepad/utils/SvgPoint;-><init>(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V

    .line 46
    new-instance v3, Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    iget-object p1, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->endPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    invoke-direct {v3, p1}, Lcom/github/gcacace/signaturepad/utils/SvgPoint;-><init>(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V

    .line 48
    invoke-direct {p0}, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->isPathStarted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    invoke-direct {p0, p2, v0}, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->startNewPath(Ljava/lang/Integer;Lcom/github/gcacace/signaturepad/utils/SvgPoint;)V

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->mCurrentPathBuilder:Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;

    invoke-virtual {p1}, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->getLastPoint()Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->mCurrentPathBuilder:Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;

    .line 53
    invoke-virtual {p1}, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->getStrokeWidth()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 54
    :cond_1
    invoke-direct {p0}, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->appendCurrentPath()V

    .line 55
    invoke-direct {p0, p2, v0}, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->startNewPath(Ljava/lang/Integer;Lcom/github/gcacace/signaturepad/utils/SvgPoint;)V

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->mCurrentPathBuilder:Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;

    invoke-virtual {p1, v1, v2, v3}, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->append(Lcom/github/gcacace/signaturepad/utils/SvgPoint;Lcom/github/gcacace/signaturepad/utils/SvgPoint;Lcom/github/gcacace/signaturepad/utils/SvgPoint;)Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;

    return-object p0
.end method

.method public build(II)Ljava/lang/String;
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->isPathStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->appendCurrentPath()V

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<svg xmlns=\"http://www.w3.org/2000/svg\" version=\"1.2\" baseProfile=\"tiny\" "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height=\""

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\" "

    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "width=\""

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\">"

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "<g "

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "stroke-linejoin=\"round\" "

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "stroke-linecap=\"round\" "

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "fill=\"none\" "

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "stroke=\"black\""

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ">"

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->mSvgPathsBuilder:Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</g>"

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</svg>"

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->mSvgPathsBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->mCurrentPathBuilder:Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;

    return-void
.end method
