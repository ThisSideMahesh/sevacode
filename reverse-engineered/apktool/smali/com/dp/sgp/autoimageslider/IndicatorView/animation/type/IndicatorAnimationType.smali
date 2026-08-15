.class public final enum Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;
.super Ljava/lang/Enum;
.source "IndicatorAnimationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

.field public static final enum COLOR:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

.field public static final enum DROP:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

.field public static final enum FILL:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

.field public static final enum NONE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

.field public static final enum SCALE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

.field public static final enum SCALE_DOWN:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

.field public static final enum SLIDE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

.field public static final enum SWAP:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

.field public static final enum THIN_WORM:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

.field public static final enum WORM:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 3
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->NONE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    const-string v3, "COLOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->COLOR:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    new-instance v3, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    const-string v5, "SCALE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->SCALE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    new-instance v5, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    const-string v7, "WORM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->WORM:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    new-instance v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    const-string v9, "SLIDE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->SLIDE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    new-instance v9, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    const-string v11, "FILL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->FILL:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    new-instance v11, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    const-string v13, "THIN_WORM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->THIN_WORM:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    new-instance v13, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    const-string v15, "DROP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->DROP:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    new-instance v15, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    const-string v14, "SWAP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->SWAP:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    new-instance v14, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    const-string v12, "SCALE_DOWN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->SCALE_DOWN:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->$VALUES:[Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;
    .locals 1

    .line 3
    const-class v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object p0
.end method

.method public static values()[Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;
    .locals 1

    .line 3
    sget-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->$VALUES:[Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    invoke-virtual {v0}, [Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object v0
.end method
