.class public Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "VibaghDetailsFragment.java"


# instance fields
.field backdrop:Landroid/widget/ImageView;

.field lStrText:Ljava/lang/String;

.field strtext:Ljava/lang/String;

.field textView:Landroid/widget/TextView;

.field textView2:Landroid/widget/TextView;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "The Dindori Pranit model of service for the downtrodden was laid down directly by Bhagvan Shree Swami Samarth Maharaj (1149-1878). This work was carried forward by Sadguru Narayandasji Pithle Maharaj (1878-1974), Sadguru Moredada (1922-1988) and is being run now by His Holiness His Holiness Gurumauli well over four decades now.\n\n  For the past two decades, His Holiness Gurmauli has been executing a unique 18-point Rural Development Programme (RDP) from Shree Gurupeeth, Trimbakeshwar, that conducts practical workshops, study tours, seminars and training for one and all, free of cost, all over India.\n\n  The aim is to raise a new Indian, proud of his or her culture and with a scientific bent of mind and confident to face the future. The SevaMarg has achieved this to a great extent and hundreds of social and non-governmental organizations have recognized this work and honoured His Holiness His Holiness Gurumauli for the achievements.\n\n  This counselling sessions that are essentially a man-&-mind healing technique run across more than 5000 centres of Dindori Pranit in India and abroad take into consideration the spiritual, social, educational and ancestral background of the troubled and unhappy solution seeker and suggests him or her simple easy-to-do self-help techniques in the above fields.\n\n\n  Millions of distressed souls visit these centres every day. Some want to quit alcohol or other vices,  others a matrimonial match while some others are desperately trying to save a home that is falling apart. A huge number is of highly educated youth who find themselves lacking in contentment despite the perks of an elite modern-day life. There are others who want success in services as also an equally high number that wants to pull-out loss-making industries from the pit.\n\n  The link that unites these all is faith & spirituality. And the missing link is direction, self-esteem and a sense of purpose in life. His Holiness His Holiness Gurumauli believes that all human beings, including those with virtues & vices are essentially noble souls; it\u2019s the lack of direction, self-esteem and the sense of purpose in life that divides them in shades of grey. Depending on what way one chooses while leading one\u2019s life, the choice also gets divided between peace, happiness & contentment or decay, disease and disenchantment.\n\n  Dindori Pranit has showered bliss in the lives of millions over the past 100 years by imbibing value education in young minds raising an entire generation free from vice and abuse, trained millions of farmers into organic farming & modern techniques of agriculture, built bonds of communal harmony by enhancing interpersonal faith and mutual respect through various activities, conducted successful research to find cure for dreaded diseases like cancer, conducted millions of no-dowry marriages and de-addicted an equally large number of people."

    .line 19
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->lStrText:Ljava/lang/String;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->strtext:Ljava/lang/String;

    return-void
.end method

.method private initCollapsingToolbar(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a004f

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v1, " "

    .line 81
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0027

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x1

    .line 83
    invoke-virtual {p1, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 86
    new-instance v1, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {p1, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0099

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a002c

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->backdrop:Landroid/widget/ImageView;

    .line 51
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01cb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->textView:Landroid/widget/TextView;

    .line 52
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01c6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->textView2:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->v:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->initCollapsingToolbar(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "message"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->strtext:Ljava/lang/String;

    .line 59
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->strtext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_1

    .line 64
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->textView2:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->lStrText:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->textView2:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->lStrText:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->v:Landroid/view/View;

    return-object p1
.end method
