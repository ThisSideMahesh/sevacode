.class Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$1;
.super Ljava/lang/Object;
.source "CountryOtpVerificationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 178
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 179
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Landroid/widget/EditText;

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
