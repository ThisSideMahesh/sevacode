.class Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$1;
.super Landroid/widget/Filter;
.source "ClassicsNotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;


# direct methods
.method constructor <init>(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$1;->this$0:Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 245
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$1;->this$0:Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;

    iget-object v0, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mData:Ljava/util/List;

    iput-object v0, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    goto :goto_1

    .line 251
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    iget-object v1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$1;->this$0:Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;

    iget-object v1, v1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/Model/HomeResponse/Banner;

    .line 254
    invoke-virtual {v2}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$1;->this$0:Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;

    iput-object v0, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    .line 265
    :goto_1
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 266
    iget-object v0, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$1;->this$0:Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;

    iget-object v0, v0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 275
    iget-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$1;->this$0:Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iput-object p2, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    .line 276
    iget-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$1;->this$0:Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;

    invoke-virtual {p1}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->notifyDataSetChanged()V

    return-void
.end method
