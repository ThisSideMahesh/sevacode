.class Lcom/dp/sgp/iOSDialog/iOSDialog$1;
.super Ljava/lang/Object;
.source "iOSDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/iOSDialog/iOSDialog;->initEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/iOSDialog/iOSDialog;


# direct methods
.method constructor <init>(Lcom/dp/sgp/iOSDialog/iOSDialog;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialog$1;->this$0:Lcom/dp/sgp/iOSDialog/iOSDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialog$1;->this$0:Lcom/dp/sgp/iOSDialog/iOSDialog;

    invoke-static {p1}, Lcom/dp/sgp/iOSDialog/iOSDialog;->access$000(Lcom/dp/sgp/iOSDialog/iOSDialog;)Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialog$1;->this$0:Lcom/dp/sgp/iOSDialog/iOSDialog;

    invoke-static {p1}, Lcom/dp/sgp/iOSDialog/iOSDialog;->access$000(Lcom/dp/sgp/iOSDialog/iOSDialog;)Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog$1;->this$0:Lcom/dp/sgp/iOSDialog/iOSDialog;

    invoke-interface {p1, v0}, Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;->onClick(Lcom/dp/sgp/iOSDialog/iOSDialog;)V

    :cond_0
    return-void
.end method
