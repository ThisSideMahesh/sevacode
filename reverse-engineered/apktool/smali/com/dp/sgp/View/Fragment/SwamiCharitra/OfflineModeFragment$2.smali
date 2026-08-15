.class Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "OfflineModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 145
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$300(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {v2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {v3}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$400(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {v3}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "parayan"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {v4}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {v3}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v1, v3}, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$502(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;)Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

    .line 149
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$600(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$500(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 150
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$600(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 152
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$500(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

    move-result-object p1

    new-instance p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2$1;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;)V

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->setOnRecyclerItemClickListener(Lcom/dp/sgp/listener/OnRecyclerItemClickListener;)V

    return-void
.end method
