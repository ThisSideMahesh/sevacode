.class Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;
.super Ljava/lang/Object;
.source "TutoShowcase.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->displaySwipable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

.field final synthetic val$hand:Landroid/widget/ImageView;

.field final synthetic val$left:Z

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;Landroid/graphics/Rect;Landroid/widget/ImageView;Z)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    iput-object p2, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$rect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$hand:Landroid/widget/ImageView;

    iput-boolean p4, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$left:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$hand:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 249
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$hand:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 251
    iget-object v2, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$hand:Landroid/widget/ImageView;

    int-to-float v1, v1

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 252
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$hand:Landroid/widget/ImageView;

    int-to-float v0, v0

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 254
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-static {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->access$200(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$300(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    iget-boolean v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$left:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 261
    :goto_0
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$hand:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    .line 262
    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->access$200(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    move-result-object v1

    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$500(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->access$200(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    move-result-object v1

    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$500(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x1f4

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    .line 263
    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->access$200(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    move-result-object v1

    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$400(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->access$200(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    move-result-object v1

    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$400(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x258

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 264
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;->val$hand:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    return v0
.end method
