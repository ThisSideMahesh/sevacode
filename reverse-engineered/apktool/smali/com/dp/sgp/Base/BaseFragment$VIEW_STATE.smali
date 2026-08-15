.class public final enum Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;
.super Ljava/lang/Enum;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Base/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VIEW_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

.field public static final enum CONTENT:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

.field public static final enum EMPTY:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

.field public static final enum ERROR:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

.field public static final enum INITIAL:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

.field public static final enum LOADING:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

.field public static final enum OFFLINE:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 27
    new-instance v0, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->INITIAL:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    new-instance v1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    const-string v3, "CONTENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->CONTENT:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    new-instance v3, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    const-string v5, "LOADING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->LOADING:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    new-instance v5, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    const-string v7, "EMPTY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->EMPTY:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    new-instance v7, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->ERROR:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    new-instance v9, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    const-string v11, "OFFLINE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->OFFLINE:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 26
    sput-object v11, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->$VALUES:[Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;
    .locals 1

    .line 26
    const-class v0, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-object p0
.end method

.method public static values()[Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;
    .locals 1

    .line 26
    sget-object v0, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->$VALUES:[Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    invoke-virtual {v0}, [Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-object v0
.end method
