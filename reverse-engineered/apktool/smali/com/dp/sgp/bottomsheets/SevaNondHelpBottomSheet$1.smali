.class Lcom/dp/sgp/bottomsheets/SevaNondHelpBottomSheet$1;
.super Ljava/lang/Object;
.source "SevaNondHelpBottomSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/bottomsheets/SevaNondHelpBottomSheet;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/bottomsheets/SevaNondHelpBottomSheet;


# direct methods
.method constructor <init>(Lcom/dp/sgp/bottomsheets/SevaNondHelpBottomSheet;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/dp/sgp/bottomsheets/SevaNondHelpBottomSheet$1;->this$0:Lcom/dp/sgp/bottomsheets/SevaNondHelpBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SevaNondHelpBottomSheet$1;->this$0:Lcom/dp/sgp/bottomsheets/SevaNondHelpBottomSheet;

    invoke-virtual {p1}, Lcom/dp/sgp/bottomsheets/SevaNondHelpBottomSheet;->dismiss()V

    return-void
.end method
