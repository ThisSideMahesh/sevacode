.class Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private nameTextView:Landroid/widget/TextView;

.field title_lag:Landroid/widget/ImageView;

.field private txt_left:Landroid/widget/TextView;

.field private txt_right:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dp/sgp/Adapters/MyAdapter$1;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->txt_left:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->txt_left:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->txt_right:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->txt_right:Landroid/widget/TextView;

    return-object p1
.end method
