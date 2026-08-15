.class Lcom/dp/sgp/tutoshowcase/TutoShowcase$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "TutoShowcase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/tutoshowcase/TutoShowcase;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase;


# direct methods
.method constructor <init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$1;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;->onAnimationEnd(Landroid/view/View;)V

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 109
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$1;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-static {p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->access$000(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$Listener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$1;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-static {p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->access$000(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$Listener;->onDismissed()V

    :cond_1
    return-void
.end method
