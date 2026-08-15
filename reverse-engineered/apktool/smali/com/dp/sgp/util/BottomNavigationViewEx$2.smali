.class Lcom/dp/sgp/util/BottomNavigationViewEx$2;
.super Ljava/lang/Object;
.source "BottomNavigationViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/util/BottomNavigationViewEx;->setIconVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/util/BottomNavigationViewEx;

.field final synthetic val$mIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/dp/sgp/util/BottomNavigationViewEx;Landroid/widget/ImageView;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$2;->this$0:Lcom/dp/sgp/util/BottomNavigationViewEx;

    iput-object p2, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$2;->val$mIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$2;->this$0:Lcom/dp/sgp/util/BottomNavigationViewEx;

    invoke-static {v0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->access$100(Lcom/dp/sgp/util/BottomNavigationViewEx;)I

    move-result v1

    iget-object v2, p0, Lcom/dp/sgp/util/BottomNavigationViewEx$2;->val$mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setItemHeight(I)V

    return-void
.end method
