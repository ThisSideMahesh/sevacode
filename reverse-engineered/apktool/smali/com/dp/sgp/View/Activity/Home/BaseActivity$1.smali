.class Lcom/dp/sgp/View/Activity/Home/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Home/BaseActivity;->setHeader(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Home/BaseActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Home/BaseActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/BaseActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Home/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/BaseActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Home/BaseActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;->finish()V

    return-void
.end method
