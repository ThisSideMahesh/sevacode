.class Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;
.super Ljava/lang/Object;
.source "AbjaaSevaAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;->onBindViewHolder(Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;I)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;->this$0:Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;

    iput p2, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;->this$0:Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;->lStrSSS:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;->this$0:Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;

    iget-object p1, p1, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;->lStrSSS:Ljava/lang/String;

    const-string v0, "0"

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;->this$0:Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;

    invoke-static {p1}, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;->access$100(Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;)Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;->val$i:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/SevaNivad;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SevaNivad;->setQty(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;->this$0:Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;

    iget-object p1, p1, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;->lStrSSS:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;->this$0:Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;

    invoke-static {p1}, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;->access$100(Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;)Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;->val$i:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/SevaNivad;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SevaNivad;->setQty(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;->this$0:Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;

    invoke-static {p1}, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;->access$100(Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;->val$i:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/SevaNivad;

    iget-object v0, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$1;->this$0:Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;

    iget-object v0, v0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;->lStrSSS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SevaNivad;->setQty(Ljava/lang/String;)V

    :goto_0
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
