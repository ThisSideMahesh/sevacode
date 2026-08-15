.class public Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;
.super Ljava/lang/Object;
.source "SvgPathBuilder.java"


# static fields
.field public static final SVG_MOVE:Ljava/lang/Character;

.field public static final SVG_RELATIVE_CUBIC_BEZIER_CURVE:Ljava/lang/Character;


# instance fields
.field private mLastPoint:Lcom/github/gcacace/signaturepad/utils/SvgPoint;

.field private final mStartPoint:Lcom/github/gcacace/signaturepad/utils/SvgPoint;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mStrokeWidth:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x63

    .line 11
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->SVG_RELATIVE_CUBIC_BEZIER_CURVE:Ljava/lang/Character;

    const/16 v0, 0x4d

    .line 12
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->SVG_MOVE:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Lcom/github/gcacace/signaturepad/utils/SvgPoint;Ljava/lang/Integer;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mStrokeWidth:Ljava/lang/Integer;

    .line 20
    iput-object p1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mStartPoint:Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    .line 21
    iput-object p1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mLastPoint:Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 23
    sget-object p2, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->SVG_RELATIVE_CUBIC_BEZIER_CURVE:Ljava/lang/Character;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private makeRelativeCubicBezierCurve(Lcom/github/gcacace/signaturepad/utils/SvgPoint;Lcom/github/gcacace/signaturepad/utils/SvgPoint;Lcom/github/gcacace/signaturepad/utils/SvgPoint;)Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mLastPoint:Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    invoke-virtual {p1, v0}, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->toRelativeCoordinates(Lcom/github/gcacace/signaturepad/utils/SvgPoint;)Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mLastPoint:Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    invoke-virtual {p2, v0}, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->toRelativeCoordinates(Lcom/github/gcacace/signaturepad/utils/SvgPoint;)Ljava/lang/String;

    move-result-object p2

    .line 58
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mLastPoint:Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    invoke-virtual {p3, v0}, Lcom/github/gcacace/signaturepad/utils/SvgPoint;->toRelativeCoordinates(Lcom/github/gcacace/signaturepad/utils/SvgPoint;)Ljava/lang/String;

    move-result-object p3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "c0 0 0 0 0 0"

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public append(Lcom/github/gcacace/signaturepad/utils/SvgPoint;Lcom/github/gcacace/signaturepad/utils/SvgPoint;Lcom/github/gcacace/signaturepad/utils/SvgPoint;)Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2, p3}, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->makeRelativeCubicBezierCurve(Lcom/github/gcacace/signaturepad/utils/SvgPoint;Lcom/github/gcacace/signaturepad/utils/SvgPoint;Lcom/github/gcacace/signaturepad/utils/SvgPoint;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iput-object p3, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mLastPoint:Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    return-object p0
.end method

.method public final getLastPoint()Lcom/github/gcacace/signaturepad/utils/SvgPoint;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mLastPoint:Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    return-object v0
.end method

.method public final getStrokeWidth()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mStrokeWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<path "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "stroke-width=\""

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mStrokeWidth:Ljava/lang/Integer;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d=\""

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->SVG_MOVE:Ljava/lang/Character;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mStartPoint:Lcom/github/gcacace/signaturepad/utils/SvgPoint;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/gcacace/signaturepad/utils/SvgPathBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
