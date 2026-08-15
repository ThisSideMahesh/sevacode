.class Lcom/dp/sgp/util/BottomNavigationViewEx$1;
.super Ljava/lang/Object;
.source "BottomNavigationViewEx.java"

# interfaces
.implements Landroid/support/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/util/BottomNavigationViewEx;->addAnimationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/util/BottomNavigationViewEx;


# direct methods
.method constructor <init>(Lcom/dp/sgp/util/BottomNavigationViewEx;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$1;->this$0:Lcom/dp/sgp/util/BottomNavigationViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/support/transition/Transition;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$1;->this$0:Lcom/dp/sgp/util/BottomNavigationViewEx;

    invoke-static {p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->access$000(Lcom/dp/sgp/util/BottomNavigationViewEx;)V

    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$1;->this$0:Lcom/dp/sgp/util/BottomNavigationViewEx;

    invoke-static {p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->access$000(Lcom/dp/sgp/util/BottomNavigationViewEx;)V

    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/Transition;)V
    .locals 0

    return-void
.end method
