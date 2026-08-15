.class Lcom/dp/sgp/View/Activity/Home/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Home/MainActivity;->Popup()V
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

    .line 544
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/dp/sgp/iOSDialog/iOSDialog;)V
    .locals 0

    .line 547
    invoke-virtual {p1}, Lcom/dp/sgp/iOSDialog/iOSDialog;->dismiss()V

    return-void
.end method
