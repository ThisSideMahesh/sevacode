.class Lcom/dp/sgp/Adapters/DataAdapter$1;
.super Landroid/widget/Filter;
.source "DataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/Adapters/DataAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/Adapters/DataAdapter;


# direct methods
.method constructor <init>(Lcom/dp/sgp/Adapters/DataAdapter;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/dp/sgp/Adapters/DataAdapter$1;->this$0:Lcom/dp/sgp/Adapters/DataAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .line 74
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object p1, p0, Lcom/dp/sgp/Adapters/DataAdapter$1;->this$0:Lcom/dp/sgp/Adapters/DataAdapter;

    invoke-static {p1}, Lcom/dp/sgp/Adapters/DataAdapter;->access$100(Lcom/dp/sgp/Adapters/DataAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dp/sgp/Adapters/DataAdapter;->access$002(Lcom/dp/sgp/Adapters/DataAdapter;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 81
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/dp/sgp/Adapters/DataAdapter$1;->this$0:Lcom/dp/sgp/Adapters/DataAdapter;

    invoke-static {v1}, Lcom/dp/sgp/Adapters/DataAdapter;->access$100(Lcom/dp/sgp/Adapters/DataAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/countrypicker/NewCountry;

    .line 84
    invoke-virtual {v2}, Lcom/dp/sgp/countrypicker/NewCountry;->getDialingCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    invoke-virtual {v2}, Lcom/dp/sgp/countrypicker/NewCountry;->getDialingCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 86
    invoke-virtual {v2}, Lcom/dp/sgp/countrypicker/NewCountry;->getIsoCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 87
    invoke-virtual {v2}, Lcom/dp/sgp/countrypicker/NewCountry;->getCcName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/Adapters/DataAdapter$1;->this$0:Lcom/dp/sgp/Adapters/DataAdapter;

    invoke-static {p1, v0}, Lcom/dp/sgp/Adapters/DataAdapter;->access$002(Lcom/dp/sgp/Adapters/DataAdapter;Ljava/util/List;)Ljava/util/List;

    .line 98
    :goto_1
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 99
    iget-object v0, p0, Lcom/dp/sgp/Adapters/DataAdapter$1;->this$0:Lcom/dp/sgp/Adapters/DataAdapter;

    invoke-static {v0}, Lcom/dp/sgp/Adapters/DataAdapter;->access$000(Lcom/dp/sgp/Adapters/DataAdapter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/dp/sgp/Adapters/DataAdapter$1;->this$0:Lcom/dp/sgp/Adapters/DataAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/dp/sgp/Adapters/DataAdapter;->access$002(Lcom/dp/sgp/Adapters/DataAdapter;Ljava/util/List;)Ljava/util/List;

    .line 106
    iget-object p1, p0, Lcom/dp/sgp/Adapters/DataAdapter$1;->this$0:Lcom/dp/sgp/Adapters/DataAdapter;

    invoke-virtual {p1}, Lcom/dp/sgp/Adapters/DataAdapter;->notifyDataSetChanged()V

    return-void
.end method
