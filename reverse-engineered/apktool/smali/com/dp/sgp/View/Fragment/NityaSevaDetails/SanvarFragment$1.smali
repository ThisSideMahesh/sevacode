.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$1;
.super Ljava/lang/Object;
.source "SanvarFragment.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 3

    .line 148
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sanwar:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    .line 150
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pos"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getImage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "selected_image"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sanwar:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    const-string v0, "Data"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "position"

    .line 159
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    new-instance p1, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;-><init>()V

    .line 161
    invoke-virtual {p1, v1}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 163
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 164
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f0a008c

    .line 165
    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 166
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
