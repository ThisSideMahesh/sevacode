.class Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;
.super Ljava/lang/Object;
.source "TutoShowcase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/tutoshowcase/TutoShowcase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewActionsSettings"
.end annotation


# instance fields
.field private animated:Z

.field private delay:Ljava/lang/Integer;

.field private duration:Ljava/lang/Integer;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private withBorder:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->animated:Z

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->withBorder:Z

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->delay:Ljava/lang/Integer;

    const/16 v0, 0x12c

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->duration:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$1;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->withBorder:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;Z)Z
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->withBorder:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->animated:Z

    return p0
.end method

.method static synthetic access$302(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;Z)Z
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->animated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Ljava/lang/Integer;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->duration:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->duration:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Ljava/lang/Integer;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->delay:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$502(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->delay:Ljava/lang/Integer;

    return-object p1
.end method
