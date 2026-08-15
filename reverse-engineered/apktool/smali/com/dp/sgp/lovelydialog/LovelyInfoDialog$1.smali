.class Lcom/dp/sgp/lovelydialog/LovelyInfoDialog$1;
.super Ljava/lang/Object;
.source "LovelyInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->setNotShowAgainOptionEnabled(I)Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;


# direct methods
.method constructor <init>(Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog$1;->this$0:Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 49
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog$1;->this$0:Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;

    invoke-static {p1}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->access$000(Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 50
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog$1;->this$0:Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;

    invoke-virtual {v0}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->access$200(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog$1;->this$0:Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;

    invoke-static {v1}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->access$100(Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog$1;->this$0:Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;

    invoke-virtual {p1}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->dismiss()V

    return-void
.end method
