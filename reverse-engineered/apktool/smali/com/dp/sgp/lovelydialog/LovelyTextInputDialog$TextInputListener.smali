.class Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;
.super Ljava/lang/Object;
.source "LovelyTextInputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextInputListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

.field private wrapped:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$OnTextInputConfirmListener;


# direct methods
.method private constructor <init>(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$OnTextInputConfirmListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;->this$0:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;->wrapped:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$OnTextInputConfirmListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$OnTextInputConfirmListener;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$1;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;-><init>(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$OnTextInputConfirmListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;->this$0:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    invoke-static {p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->access$200(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;->this$0:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    invoke-static {v0}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->access$300(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;->this$0:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    invoke-static {v0}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->access$300(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextFilter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextFilter;->check(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 169
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;->this$0:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    invoke-static {p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->access$400(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;)V

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;->wrapped:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$OnTextInputConfirmListener;

    if-eqz v0, :cond_1

    .line 175
    invoke-interface {v0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$OnTextInputConfirmListener;->onTextInputConfirmed(Ljava/lang/String;)V

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;->this$0:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    invoke-virtual {p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->dismiss()V

    return-void
.end method
