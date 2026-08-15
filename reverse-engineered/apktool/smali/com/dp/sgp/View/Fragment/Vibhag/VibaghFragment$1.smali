.class Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$1;
.super Ljava/lang/Object;
.source "VibaghFragment.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 3

    .line 212
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->access$000(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    .line 214
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 216
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 217
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

    .line 218
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getImage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "selected_image"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->access$000(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v0, "Data"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "position"

    .line 222
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    new-instance p1, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;-><init>()V

    .line 225
    invoke-virtual {p1, v1}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 227
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 228
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f0a008c

    .line 229
    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 230
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
