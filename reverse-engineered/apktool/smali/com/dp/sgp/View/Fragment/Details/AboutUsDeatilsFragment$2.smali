.class Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$2;
.super Ljava/lang/Object;
.source "AboutUsDeatilsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 288
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->shareText()V

    return-void
.end method
