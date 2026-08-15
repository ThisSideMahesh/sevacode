.class public Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "NityaSevaMenuFragment.java"


# instance fields
.field lyt_offline_mode:Landroid/widget/RelativeLayout;

.field lyt_online_mode:Landroid/widget/RelativeLayout;

.field rootview:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0087

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->rootview:Landroid/view/View;

    .line 32
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0936\u094d\u0930\u0940 \u0938\u094d\u0935\u093e\u092e\u0940 \u091a\u0930\u093f\u0924\u094d\u0930"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a00f6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->lyt_online_mode:Landroid/widget/RelativeLayout;

    .line 34
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a00f5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->lyt_offline_mode:Landroid/widget/RelativeLayout;

    .line 37
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->lyt_online_mode:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->lyt_offline_mode:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment$2;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->rootview:Landroid/view/View;

    return-object p1
.end method
