.class public Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;
.super Landroid/support/v4/app/Fragment;
.source "AddressTwoFragment.java"


# instance fields
.field Appstatus:Z

.field private DINDORI:I

.field private NASHIK:I

.field SubCourseid:Ljava/lang/String;

.field connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field courseid:Ljava/lang/String;

.field coursename:Ljava/lang/String;

.field private emoji_id:Ljava/lang/Integer;

.field floating_action_button:Landroid/widget/TextView;

.field fromwhere:Ljava/lang/String;

.field lStrCaptureImageSend:Ljava/lang/String;

.field lStrMSPIN:Ljava/lang/String;

.field lStrToken:Ljava/lang/String;

.field markerClicked:Z

.field private rootView:Landroid/view/View;

.field private selected:I

.field private swipable:Landroid/widget/RelativeLayout;

.field totalSize:J

.field private tvAddress:Landroid/widget/TextView;

.field private tvContact:Landroid/widget/TextView;

.field private tvDindori:Landroid/widget/TextView;

.field private tvEmail:Landroid/widget/TextView;

.field private tvHeader:Landroid/widget/TextView;

.field private tvNashik:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->selected:I

    .line 29
    iput v0, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->DINDORI:I

    const/4 v1, 0x1

    .line 30
    iput v1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->NASHIK:I

    const-string v1, ""

    .line 34
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->lStrMSPIN:Ljava/lang/String;

    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->fromwhere:Ljava/lang/String;

    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->courseid:Ljava/lang/String;

    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->SubCourseid:Ljava/lang/String;

    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->coursename:Ljava/lang/String;

    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->lStrToken:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->lStrCaptureImageSend:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 36
    iput-wide v1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->totalSize:J

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->emoji_id:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0070

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a0089

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->floating_action_button:Landroid/widget/TextView;

    .line 122
    new-instance p2, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/ContactUs/AddressTwoFragment;->rootView:Landroid/view/View;

    return-object p1
.end method
