.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;
.super Ljava/lang/Object;
.source "MantraJapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 143
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$102(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;Z)Z

    .line 144
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Z

    move-result p1

    const-string v0, "chanting_round_bookmark"

    const-string v1, "chanting_count_bookmark"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const v3, 0x7f080166

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    :try_start_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {v3}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$400(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    :catch_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const v3, 0x7f080168

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 161
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0, v2}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 162
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->access$400(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
