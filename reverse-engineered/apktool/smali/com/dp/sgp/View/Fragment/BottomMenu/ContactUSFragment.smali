.class public Lcom/dp/sgp/View/Fragment/BottomMenu/ContactUSFragment;
.super Landroid/support/v4/app/Fragment;
.source "ContactUSFragment.java"


# instance fields
.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0076

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ContactUSFragment;->v:Landroid/view/View;

    .line 26
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ContactUSFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0906\u092e\u091a\u094d\u092f\u093e\u0936\u0940 \u0938\u0902\u092a\u0930\u094d\u0915 \u0938\u093e\u0927\u093e"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ContactUSFragment;->v:Landroid/view/View;

    return-object p1
.end method
