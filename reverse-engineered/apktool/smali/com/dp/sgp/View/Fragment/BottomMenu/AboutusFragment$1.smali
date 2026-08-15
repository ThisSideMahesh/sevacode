.class Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment$1;
.super Ljava/lang/Object;
.source "AboutusFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 60
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->gridViewString:[Ljava/lang/String;

    aget-object p1, p1, p3

    const-string p2, "\u0967\u096e \u0935\u093f\u092d\u093e\u0917 \u0909\u092a\u0915\u094d\u0930\u092e"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;

    new-instance p2, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-direct {p2}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;-><init>()V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->fragment:Landroid/support/v4/app/Fragment;

    .line 63
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;

    iget-object p2, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->access$000(Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p3, 0x1

    .line 69
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 70
    iget-object p4, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;

    iget-object p4, p4, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->gridViewString:[Ljava/lang/String;

    aget-object p4, p4, p3

    const-string p5, "message"

    invoke-virtual {p2, p5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p4, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;

    iget-object p4, p4, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->gridViewString:[Ljava/lang/String;

    aget-object p3, p4, p3

    const-string p4, "subtitle"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "pos"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p1, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;-><init>()V

    .line 74
    invoke-virtual {p1, p2}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 77
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const p3, 0x7f0a008c

    .line 78
    invoke-virtual {p2, p3, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method
