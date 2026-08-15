.class Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$HideErrorOnTextChanged;
.super Ljava/lang/Object;
.source "LovelyTextInputDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideErrorOnTextChanged"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;


# direct methods
.method private constructor <init>(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$HideErrorOnTextChanged;->this$0:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$1;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$HideErrorOnTextChanged;-><init>(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$HideErrorOnTextChanged;->this$0:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    invoke-static {p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->access$500(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;)V

    return-void
.end method
