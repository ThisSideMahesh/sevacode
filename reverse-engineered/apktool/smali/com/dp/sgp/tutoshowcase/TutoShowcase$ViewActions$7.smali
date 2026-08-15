.class Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$7;
.super Ljava/lang/Object;
.source "TutoShowcase.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->addCircle(F)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

.field final synthetic val$additionalRadiusRatio:F


# direct methods
.method constructor <init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;F)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$7;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    iput p2, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$7;->val$additionalRadiusRatio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$7;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    iget v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$7;->val$additionalRadiusRatio:F

    invoke-static {v0, v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->access$1500(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;F)V

    .line 387
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$7;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-static {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->access$800(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    return v0
.end method
