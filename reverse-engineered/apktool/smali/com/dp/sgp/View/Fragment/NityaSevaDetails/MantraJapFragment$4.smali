.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;
.super Ljava/lang/Object;
.source "MantraJapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->startChanting()V
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

    .line 210
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$500(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 215
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$900(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "rotationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 217
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 220
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$808(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)I

    .line 221
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$600(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$700(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Lcom/dp/sgp/Model/ChantingData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/Model/ChantingData;->getCount()I

    move-result v1

    const-string v2, ""

    if-gt v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {v3}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$600(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$602(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;I)I

    .line 224
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$800(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)I

    move-result v0

    if-lez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$400(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {v2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$800(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data
.end method
