.class public Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;
.super Landroid/support/v4/app/Fragment;
.source "UpkramFragment.java"


# instance fields
.field androidGridView:Landroid/widget/GridView;

.field fragment:Landroid/support/v4/app/Fragment;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field gridViewImageId:[I

.field gridViewString:[Ljava/lang/String;

.field progressDialog:Landroid/app/ProgressDialog;

.field transaction:Landroid/support/v4/app/FragmentTransaction;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "\u0906\u092f\u0941\u0930\u094d\u0935\u0947\u0926\u093f\u0915 \u0939\u0949\u0938\u094d\u092a\u093f\u091f\u0932"

    const-string v1, "\u0917\u094b\u0938\u0947\u0935\u093e"

    const-string v2, "\u0936\u094d\u0930\u0940 \u092a\u094d\u0930\u0938\u093e\u0926\u093e\u0932\u092f"

    const-string v3, "\u0936\u094d\u0930\u0940 \u0917\u0941\u0930\u0941\u092a\u0940\u0920"

    const-string v4, "\u0936\u094d\u0930\u0940 \u091c\u0928\u0915\u0932\u094d\u092f\u093e\u0923"

    const-string v5, "\u0936\u094d\u0930\u0940 \u0926\u0924\u094d\u0924\u0927\u093e\u092e"

    .line 26
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->gridViewString:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 30
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->gridViewImageId:[I

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->fragment:Landroid/support/v4/app/Fragment;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800ae
        0x7f0800ab
        0x7f0800b1
        0x7f0800af
        0x7f0800b0
        0x7f0800a9
    .end array-data
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->loadFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private loadFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0a008c

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 87
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 88
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0097

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->v:Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0909\u092a\u0915\u094d\u0930\u092e"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    new-instance p1, Lcom/dp/sgp/Adapters/NewUpakramAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->gridViewString:[Ljava/lang/String;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->gridViewImageId:[I

    invoke-direct {p1, p2, p3, v0}, Lcom/dp/sgp/Adapters/NewUpakramAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[I)V

    .line 48
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->v:Landroid/view/View;

    const p3, 0x7f0a008f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->androidGridView:Landroid/widget/GridView;

    .line 49
    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->androidGridView:Landroid/widget/GridView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;->v:Landroid/view/View;

    return-object p1
.end method
