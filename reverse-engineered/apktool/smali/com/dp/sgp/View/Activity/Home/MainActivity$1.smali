.class Lcom/dp/sgp/View/Activity/Home/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/View/Activity/Home/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Home/MainActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 103
    :pswitch_0
    new-instance p1, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/UpkramFragment;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-static {v1, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->access$000(Lcom/dp/sgp/View/Activity/Home/MainActivity;Landroid/support/v4/app/Fragment;)V

    return v0

    .line 99
    :pswitch_1
    new-instance p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-static {v1, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->access$000(Lcom/dp/sgp/View/Activity/Home/MainActivity;Landroid/support/v4/app/Fragment;)V

    return v0

    .line 94
    :pswitch_2
    new-instance p1, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/NityasevaFragment;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-static {v1, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->access$000(Lcom/dp/sgp/View/Activity/Home/MainActivity;Landroid/support/v4/app/Fragment;)V

    return v0

    .line 108
    :pswitch_3
    new-instance p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-static {v1, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->access$000(Lcom/dp/sgp/View/Activity/Home/MainActivity;Landroid/support/v4/app/Fragment;)V

    return v0

    .line 90
    :pswitch_4
    new-instance p1, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/AboutusFragment;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-static {v1, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->access$000(Lcom/dp/sgp/View/Activity/Home/MainActivity;Landroid/support/v4/app/Fragment;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a012a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
