.class public final Lcom/github/gcacace/signaturepad/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/gcacace/signaturepad/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SignaturePad:[I

.field public static final SignaturePad_clearOnDoubleClick:I = 0x0

.field public static final SignaturePad_penColor:I = 0x1

.field public static final SignaturePad_penMaxWidth:I = 0x2

.field public static final SignaturePad_penMinWidth:I = 0x3

.field public static final SignaturePad_velocityFilterWeight:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/gcacace/signaturepad/R$styleable;->SignaturePad:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040096
        0x7f04019e
        0x7f04019f
        0x7f0401a0
        0x7f04025b
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
