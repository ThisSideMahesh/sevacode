.class Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet$1;
.super Ljava/lang/Object;
.source "SimpleTextBottomSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;


# direct methods
.method constructor <init>(Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet$1;->this$0:Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet$1;->this$0:Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;

    invoke-virtual {p1}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->dismiss()V

    return-void
.end method
