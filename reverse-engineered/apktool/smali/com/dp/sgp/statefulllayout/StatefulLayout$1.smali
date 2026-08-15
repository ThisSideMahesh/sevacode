.class Lcom/dp/sgp/statefulllayout/StatefulLayout$1;
.super Lcom/dp/sgp/statefulllayout/CustomAnimationListener;
.source "StatefulLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/statefulllayout/StatefulLayout;->showContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

.field final synthetic val$animCounterCopy:I


# direct methods
.method constructor <init>(Lcom/dp/sgp/statefulllayout/StatefulLayout;I)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$1;->this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    iput p2, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$1;->val$animCounterCopy:I

    invoke-direct {p0}, Lcom/dp/sgp/statefulllayout/CustomAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$1;->this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-static {p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->access$000(Lcom/dp/sgp/statefulllayout/StatefulLayout;)I

    move-result p1

    iget v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$1;->val$animCounterCopy:I

    if-eq p1, v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$1;->this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-static {p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->access$100(Lcom/dp/sgp/statefulllayout/StatefulLayout;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$1;->this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-static {p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->access$200(Lcom/dp/sgp/statefulllayout/StatefulLayout;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$1;->this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-static {p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->access$200(Lcom/dp/sgp/statefulllayout/StatefulLayout;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout$1;->this$0:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-static {v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->access$300(Lcom/dp/sgp/statefulllayout/StatefulLayout;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
