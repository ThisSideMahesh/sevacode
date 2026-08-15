.class Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;
.super Ljava/lang/Object;
.source "OfflineSwamiCharitraDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 204
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->RefereshData()V

    .line 206
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget p1, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    .line 207
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v1, v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    .line 208
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v0, v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iput v1, v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v0, v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    const-string v2, "\u0905\u0927\u094d\u092f\u093e\u092f \u0935\u093e\u091a\u0928 \u092a\u0941\u0930\u094d\u0923 \u091d\u093e\u0932\u0947 \u0928\u093e\u0939\u0940. \u0935\u093e\u091a\u0928 \u092a\u0941\u0930\u094d\u0923 \u0915\u0930\u0941\u0928 \u092c\u0941\u0915\u092e\u093e\u0930\u094d\u0915 \u0935\u0930 \u0915\u094d\u0932\u093f\u0915 \u0915\u0930\u093e"

    if-ltz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v3, v3, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 223
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 225
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v0, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->BookmarkFilldata(I)V

    goto :goto_0

    :cond_1
    const-string v3, "2"

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 233
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 234
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v0, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->BookmarkFilldata(I)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iput p1, v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    .line 243
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iput p1, v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    .line 248
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method
