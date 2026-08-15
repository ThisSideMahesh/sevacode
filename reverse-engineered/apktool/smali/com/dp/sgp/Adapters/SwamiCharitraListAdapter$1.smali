.class Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$1;
.super Ljava/lang/Object;
.source "SwamiCharitraListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;I)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$1;->this$0:Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

    iput p2, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 71
    iget-object p1, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$1;->this$0:Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

    invoke-static {p1}, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->access$000(Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;)Lcom/dp/sgp/listener/OnRecyclerItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$1;->val$position:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/dp/sgp/listener/OnRecyclerItemClickListener;->onRecyclerItemClick(II)V

    return-void
.end method
