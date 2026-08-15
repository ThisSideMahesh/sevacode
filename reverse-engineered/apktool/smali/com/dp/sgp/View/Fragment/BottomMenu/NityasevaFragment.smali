.class public Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;
.super Landroid/support/v4/app/Fragment;
.source "NityasevaFragment.java"


# instance fields
.field androidGridView:Landroid/widget/GridView;

.field gridViewImageId:[I

.field gridViewString:[Ljava/lang/String;

.field private gridview1:Landroid/widget/GridView;

.field private maplist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "\u0928\u093f\u0924\u094d\u092f\u0938\u0947\u0935\u093e"

    const-string v1, "\u0906\u0930\u0924\u0940 \u0938\u0902\u0917\u094d\u0930\u0939"

    const-string v2, "\u0936\u094d\u0930\u0940 \u0938\u094d\u0935\u093e\u092e\u0940 \u091a\u0930\u093f\u0924\u094d\u0930"

    const-string v3, "\u092e\u0902\u0924\u094d\u0930 \u091c\u092a"

    const-string v4, "\u0938\u0923\u0935\u093e\u0930"

    const-string v5, "\u0905\u092c\u094d\u091c\u091a\u0902\u0921\u0940"

    const-string v6, "\u092e\u093e\u0930\u094d\u0917\u0926\u0930\u094d\u0936\u093f\u0915\u093e"

    const-string v7, "\u092e\u093e\u091d\u0940 \u0938\u0947\u0935\u093e"

    .line 36
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewString:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 41
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewImageId:[I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->maplist:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 4
        0x7f080242
        0x7f08023d
        0x7f080248
        0x7f080240
        0x7f080247
        0x7f08023c
        0x7f080241
        0x7f08023f
    .end array-data
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0088

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->v:Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0928\u093f\u0924\u094d\u092f\u0938\u0947\u0935\u093e"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    new-instance p1, Lcom/dp/sgp/Adapters/BottomNityaSevaAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewString:[Ljava/lang/String;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewImageId:[I

    invoke-direct {p1, p2, p3, v0}, Lcom/dp/sgp/Adapters/BottomNityaSevaAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[I)V

    .line 62
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->v:Landroid/view/View;

    const p3, 0x7f0a008f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->androidGridView:Landroid/widget/GridView;

    .line 63
    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->androidGridView:Landroid/widget/GridView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->v:Landroid/view/View;

    return-object p1
.end method
