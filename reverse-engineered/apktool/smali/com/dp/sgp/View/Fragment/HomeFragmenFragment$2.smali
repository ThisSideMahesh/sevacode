.class Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$2;
.super Ljava/lang/Object;
.source "HomeFragmenFragment.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 2

    .line 274
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->vibhag:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/Vibhag;

    .line 276
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "pos"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->getDescription()Ljava/lang/String;

    move-result-object p2

    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->getImage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "selected_image"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string p2, "title"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance p1, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;-><init>()V

    .line 284
    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 286
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 287
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f0a008c

    .line 288
    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 289
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
