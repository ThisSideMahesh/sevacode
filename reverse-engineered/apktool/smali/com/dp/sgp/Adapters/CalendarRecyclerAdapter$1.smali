.class Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "CalendarRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;I)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;->this$0:Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;

    iput p2, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 151
    iget-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;->this$0:Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;

    invoke-static {p1}, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->access$000(Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;)Lcom/dp/sgp/listener/OnRecyclerItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;->this$0:Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;

    invoke-static {p1}, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->access$100(Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;->this$0:Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;

    iget v0, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;->val$position:I

    invoke-static {p1, v0}, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->access$202(Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;I)I

    .line 155
    iget-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;->this$0:Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;

    invoke-virtual {p1}, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->notifyDataSetChanged()V

    .line 156
    iget-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;->this$0:Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;

    invoke-static {p1}, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->access$000(Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;)Lcom/dp/sgp/listener/OnRecyclerItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;->val$position:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/dp/sgp/listener/OnRecyclerItemClickListener;->onRecyclerItemClick(II)V

    :cond_0
    return-void
.end method
