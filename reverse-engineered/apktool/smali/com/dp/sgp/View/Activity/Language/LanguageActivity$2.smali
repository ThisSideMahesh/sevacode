.class Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;
.super Ljava/lang/Object;
.source "LanguageActivity.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Language/LanguageActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 3

    .line 89
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->access$000(Lcom/dp/sgp/View/Activity/Language/LanguageActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/LanguageModel;

    if-eqz p1, :cond_2

    .line 93
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/LanguageModel;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->lStrCode:Ljava/lang/String;

    .line 94
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/LanguageModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->lStrSelectedLang:Ljava/lang/String;

    .line 96
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->lStrCode:Ljava/lang/String;

    const-string v0, "\u0905"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 98
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Language selected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dp/sgp/Model/LanguageModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 100
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->lStrCode:Ljava/lang/String;

    const-string v0, "lang"

    invoke-virtual {p1, v0, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "DialingCode"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "91"

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const p2, 0x7f010012

    const v0, 0x7f010011

    if-eqz p1, :cond_0

    .line 106
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    const-class v2, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    invoke-virtual {v1, p1}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    invoke-virtual {p1, v0, p2}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->overridePendingTransition(II)V

    .line 109
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->finish()V

    goto :goto_0

    .line 113
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    const-class v2, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    invoke-virtual {v1, p1}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    invoke-virtual {p1, v0, p2}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->overridePendingTransition(II)V

    .line 116
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->finish()V

    goto :goto_0

    .line 121
    :cond_1
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sorry Selected Language "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dp/sgp/Model/LanguageModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " Will Come Soon"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
