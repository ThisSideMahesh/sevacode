.class Lcom/dp/sgp/tutoshowcase/TutoShowcase$3;
.super Ljava/lang/Object;
.source "TutoShowcase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/tutoshowcase/TutoShowcase;->show()Lcom/dp/sgp/tutoshowcase/TutoShowcase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase;


# direct methods
.method constructor <init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$3;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$3;->this$0:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-virtual {p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->dismiss()V

    return-void
.end method
