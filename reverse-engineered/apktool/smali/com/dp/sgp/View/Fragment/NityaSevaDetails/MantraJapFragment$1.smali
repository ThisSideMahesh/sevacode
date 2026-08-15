.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$1;
.super Ljava/lang/Object;
.source "MantraJapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)V

    .line 114
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$102(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;Z)Z

    .line 115
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080168

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
