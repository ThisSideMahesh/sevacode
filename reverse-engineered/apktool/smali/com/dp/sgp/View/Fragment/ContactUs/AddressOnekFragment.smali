.class public Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;
.super Landroid/support/v4/app/Fragment;
.source "AddressOnekFragment.java"


# instance fields
.field private DINDORI:I

.field private NASHIK:I

.field private floating_action_button:Landroid/widget/TextView;

.field markerClicked:Z

.field private rootView:Landroid/view/View;

.field private selected:I

.field private swipable:Landroid/widget/RelativeLayout;

.field private tvAddress:Landroid/widget/TextView;

.field private tvContact:Landroid/widget/TextView;

.field private tvEmail:Landroid/widget/TextView;

.field private tvHeader:Landroid/widget/TextView;

.field private tvNashik:Landroid/widget/TextView;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;->selected:I

    .line 32
    iput v0, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;->DINDORI:I

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;->NASHIK:I

    return-void
.end method

.method public static newInstance()Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;
    .locals 2

    .line 36
    new-instance v0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    invoke-virtual {v0, v1}, Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;->getArguments()Landroid/os/Bundle;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d006f

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a0089

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;->floating_action_button:Landroid/widget/TextView;

    .line 65
    new-instance p2, Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressOnekFragment;->rootView:Landroid/view/View;

    return-object p1
.end method
