.class Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;
.super Ljava/lang/Object;
.source "UpdateProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 132
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrUserName:Ljava/lang/String;

    .line 133
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$100(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrEmailID:Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$200(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrCountry:Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$300(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrPassword:Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$400(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrConfirmPassword:Ljava/lang/String;

    .line 139
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrUserName:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter First Name"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$500(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$500(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter Middle Name"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$600(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$600(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter Last Name"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 147
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrEmailID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 148
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$600(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$100(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter EmailId"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 151
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object v2, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrEmailID:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$700(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 152
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$100(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter valid Email address !"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 153
    :cond_4
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 154
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$100(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$200(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter State/City/Country"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 170
    :cond_5
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$100(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$200(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$300(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$300(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$600(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$500(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 179
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {v2}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$500(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$600(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrUserName:Ljava/lang/String;

    .line 180
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setCity(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrEmailID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setEmail(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setDevice_token(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    const-string v0, "123456"

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setPassword(Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$800(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setMobile(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->lStrUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setName(Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$900(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Lcom/dp/sgp/DataHolder/DataHandler;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setUser_id(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->access$1000(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 195
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->profile_update()V

    .line 196
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    const v0, 0x7f110038

    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WELCOME TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " APPLICATION"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/dp/sgp/util/ErrorResponseDailogs;->customToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_6
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
