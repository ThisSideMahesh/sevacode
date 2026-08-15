.class Lcom/dp/sgp/statefulllayout/StatefulLayout$3;
.super Lcom/dp/sgp/statefulllayout/CustomAnimationListener;
.source "StatefulLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/statefulllayout/StatefulLayout;->showCustom(Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

.field final synthetic val$animCounterCopy:I

.field final synthetic val$options:Lcom/dp/sgp/statefulllayout/CustomStateOptions;


# direct methods
.method constructor <init>(Lcom/dp/sgp/statefulllayout/StatefulLayout;ILcom/dp/sgp/statefulllayout/CustomStateOptions;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$3;->this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    iput p2, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$3;->val$animCounterCopy:I

    iput-object p3, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$3;->val$options:Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    invoke-direct {p0}, Lcom/dp/sgp/statefulllayout/CustomAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 268
    iget p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$3;->val$animCounterCopy:I

    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$3;->this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-static {v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->access$000(Lcom/dp/sgp/statefulllayout/StatefulLayout;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$3;->this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$3;->val$options:Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    invoke-static {p1, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->access$400(Lcom/dp/sgp/statefulllayout/StatefulLayout;Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V

    .line 271
    iget-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$3;->this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-static {p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->access$100(Lcom/dp/sgp/statefulllayout/StatefulLayout;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$3;->this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-static {v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->access$300(Lcom/dp/sgp/statefulllayout/StatefulLayout;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
