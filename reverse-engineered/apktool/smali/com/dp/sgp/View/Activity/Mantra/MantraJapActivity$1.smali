.class Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity$1;
.super Ljava/lang/Object;
.source "MantraJapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;->finish()V

    return-void
.end method
