.class Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;
.super Ljava/lang/Object;
.source "UpdateEmailProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 134
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrUserName:Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$100(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrEmailID:Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$200(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrCountry:Ljava/lang/String;

    .line 137
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$300(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrPassword:Ljava/lang/String;

    .line 138
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$400(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrConfirmPassword:Ljava/lang/String;

    .line 141
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrUserName:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter First Name"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$500(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

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

    .line 145
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$500(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter Middle Name"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$600(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

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

    .line 148
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$600(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter Last Name"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrEmailID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 151
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$600(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$100(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter EmailId"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object v2, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrEmailID:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$700(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 154
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$100(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter valid Email address !"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 155
    :cond_4
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 157
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$100(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$200(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter State/City/Country"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 174
    :cond_5
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$100(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$200(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$300(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$300(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 179
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$600(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 180
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$500(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 183
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

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

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {v2}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$500(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

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

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$600(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;

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

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrUserName:Ljava/lang/String;

    .line 184
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setCity(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrEmailID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setEmail(Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setDevice_token(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    const-string v0, "123456"

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setPassword(Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$800(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setMobile(Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setName(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$900(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Lcom/dp/sgp/DataHolder/DataHandler;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendProfileBody;->setUser_id(Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$1000(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 198
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->profile_update()V

    .line 199
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    const v0, 0x7f110038

    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

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

    .line 204
    :cond_6
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->getResources()Landroid/content/res/Resources;

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
