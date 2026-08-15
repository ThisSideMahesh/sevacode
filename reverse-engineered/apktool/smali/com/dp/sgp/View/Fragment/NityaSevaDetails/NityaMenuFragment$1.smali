.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$1;
.super Ljava/lang/Object;
.source "NityaMenuFragment.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 3

    .line 153
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "subtitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    const-string v1, "\u092e\u0902\u0924\u094d\u0930 \u0935\u093f\u092d\u093e\u0917"

    .line 157
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u0928\u093f\u0924\u094d\u092f\u0938\u0947\u0935\u093e"

    .line 158
    sput-object p1, Lcom/dp/sgp/glvars/GlVars;->Title:Ljava/lang/String;

    .line 159
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "Data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "position"

    .line 160
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    new-instance p1, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieFragment;-><init>()V

    .line 163
    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieFragment;->setArguments(Landroid/os/Bundle;)V

    .line 165
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 166
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f0a008c

    .line 167
    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 168
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
