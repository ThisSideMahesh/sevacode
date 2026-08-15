.class public Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;
.super Landroid/support/v4/app/Fragment;
.source "AboutusFragment.java"


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
    .locals 4

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "\u0936\u094d\u0930\u0940 \u0917\u0941\u0930\u0941\u092a\u0940\u0920"

    const-string v1, "\u0926\u093f\u0902\u0921\u094b\u0930\u0940 \u092a\u094d\u0930\u0923\u093f\u0924 \u0938\u0947\u0935\u093e \u092e\u093e\u0930\u094d\u0917"

    const-string v2, "\u0917\u0941\u0930\u0941\u092a\u094d\u0930\u0923\u093e\u0932\u0940"

    const-string v3, "\u0967\u096e \u0935\u093f\u092d\u093e\u0917 \u0909\u092a\u0915\u094d\u0930\u092e"

    .line 27
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->gridViewString:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 31
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->gridViewImageId:[I

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->fragment:Landroid/support/v4/app/Fragment;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800af
        0x7f0800aa
        0x7f0800ac
        0x7f08011e
    .end array-data
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->loadFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private loadFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0a008c

    .line 95
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 96
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 97
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d006e

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->v:Landroid/view/View;

    .line 48
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0906\u092e\u091a\u094d\u092f\u093e\u0935\u093f\u0937\u092f\u0940"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    new-instance p1, Lcom/dp/sgp/Adapters/UpakramGridViewActivity;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->gridViewString:[Ljava/lang/String;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->gridViewImageId:[I

    invoke-direct {p1, p2, p3, v0}, Lcom/dp/sgp/Adapters/UpakramGridViewActivity;-><init>(Landroid/content/Context;[Ljava/lang/String;[I)V

    .line 51
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->v:Landroid/view/View;

    const p3, 0x7f0a008f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->androidGridView:Landroid/widget/GridView;

    .line 53
    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->androidGridView:Landroid/widget/GridView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->v:Landroid/view/View;

    return-object p1
.end method
