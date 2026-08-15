.class public final enum Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;
.super Ljava/lang/Enum;
.source "LovelyStandardDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

.field public static final enum HORIZONTAL:Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

.field public static final enum VERTICAL:Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;


# instance fields
.field final layoutRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 167
    new-instance v0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    const v3, 0x7f0d0065

    invoke-direct {v0, v1, v2, v3}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;->HORIZONTAL:Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

    .line 168
    new-instance v1, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

    const-string v3, "VERTICAL"

    const/4 v4, 0x1

    const v5, 0x7f0d0066

    invoke-direct {v1, v3, v4, v5}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;->VERTICAL:Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 166
    sput-object v3, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;->$VALUES:[Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput p3, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;->layoutRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;
    .locals 1

    .line 166
    const-class v0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

    return-object p0
.end method

.method public static values()[Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;
    .locals 1

    .line 166
    sget-object v0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;->$VALUES:[Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

    invoke-virtual {v0}, [Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

    return-object v0
.end method
