.class Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;
.super Ljava/lang/Object;
.source "NityasevaFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 71
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 72
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewString:[Ljava/lang/String;

    aget-object p2, p2, p3

    const-string p4, "message"

    invoke-virtual {p1, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewString:[Ljava/lang/String;

    aget-object p2, p2, p3

    const-string p4, "\u0905\u092c\u094d\u091c\u091a\u0902\u0921\u0940"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p4, 0x0

    const p5, 0x7f0a008c

    if-eqz p2, :cond_0

    .line 77
    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-direct {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;-><init>()V

    .line 78
    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 81
    invoke-virtual {p1, p5, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 82
    invoke-virtual {p1, p4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 85
    :cond_0
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewString:[Ljava/lang/String;

    aget-object p2, p2, p3

    const-string v0, "\u0928\u093f\u0924\u094d\u092f\u0938\u0947\u0935\u093e"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 88
    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-direct {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;-><init>()V

    .line 89
    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 92
    invoke-virtual {p1, p5, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 93
    invoke-virtual {p1, p4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 96
    :cond_1
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewString:[Ljava/lang/String;

    aget-object p2, p2, p3

    const-string v0, "\u0936\u094d\u0930\u0940 \u0938\u094d\u0935\u093e\u092e\u0940 \u091a\u0930\u093f\u0924\u094d\u0930"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 99
    new-instance p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;

    invoke-direct {p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;-><init>()V

    .line 100
    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 103
    invoke-virtual {p1, p5, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 104
    invoke-virtual {p1, p4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 106
    :cond_2
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewString:[Ljava/lang/String;

    aget-object p2, p2, p3

    const-string v0, "\u092e\u093e\u091d\u0940 \u0938\u0947\u0935\u093e"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 109
    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;

    invoke-direct {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;-><init>()V

    .line 110
    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 113
    invoke-virtual {p1, p5, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 114
    invoke-virtual {p1, p4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 116
    :cond_3
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewString:[Ljava/lang/String;

    aget-object p2, p2, p3

    const-string v0, "\u092e\u093e\u0930\u094d\u0917\u0926\u0930\u094d\u0936\u093f\u0915\u093e"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 128
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 131
    :cond_4
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewString:[Ljava/lang/String;

    aget-object p2, p2, p3

    const-string v0, "\u0906\u0930\u0924\u0940 \u0938\u0902\u0917\u094d\u0930\u0939"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 133
    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-direct {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;-><init>()V

    .line 134
    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->setArguments(Landroid/os/Bundle;)V

    .line 136
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 138
    invoke-virtual {p1, p5, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 139
    invoke-virtual {p1, p4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 141
    :cond_5
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewString:[Ljava/lang/String;

    aget-object p2, p2, p3

    const-string v0, "\u092e\u0902\u0924\u094d\u0930 \u091c\u092a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 153
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    :cond_6
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->gridViewString:[Ljava/lang/String;

    aget-object p2, p2, p3

    const-string p3, "\u0938\u0923\u0935\u093e\u0930"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 158
    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-direct {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;-><init>()V

    .line 159
    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->setArguments(Landroid/os/Bundle;)V

    .line 160
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 162
    invoke-virtual {p1, p5, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 163
    invoke-virtual {p1, p4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_7
    :goto_0
    return-void
.end method
