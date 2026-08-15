.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$1;
.super Ljava/lang/Object;
.source "AartiSangrahaFragment.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 3

    .line 144
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "subtitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    const-string v1, "\u0906\u0930\u0924\u0940 \u0938\u0902\u0917\u094d\u0930\u0939"

    .line 148
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sput-object v1, Lcom/dp/sgp/glvars/GlVars;->Title:Ljava/lang/String;

    .line 150
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "Data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "position"

    .line 151
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    new-instance p1, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieFragment;-><init>()V

    .line 154
    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieFragment;->setArguments(Landroid/os/Bundle;)V

    .line 156
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 157
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f0a008c

    .line 158
    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 159
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
