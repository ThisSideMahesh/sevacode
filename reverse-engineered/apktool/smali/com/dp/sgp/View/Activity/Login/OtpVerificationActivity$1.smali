.class Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$1;
.super Ljava/lang/Object;
.source "OtpVerificationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 175
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 176
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
