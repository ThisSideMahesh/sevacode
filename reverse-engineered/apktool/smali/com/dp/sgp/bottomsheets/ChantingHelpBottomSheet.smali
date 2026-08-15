.class public Lcom/dp/sgp/bottomsheets/ChantingHelpBottomSheet;
.super Landroid/support/design/widget/BottomSheetDialogFragment;
.source "ChantingHelpBottomSheet.java"


# instance fields
.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0d004e

    .line 21
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/bottomsheets/ChantingHelpBottomSheet;->rootView:Landroid/view/View;

    const p2, 0x7f0a00c0

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/dp/sgp/bottomsheets/ChantingHelpBottomSheet$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/bottomsheets/ChantingHelpBottomSheet$1;-><init>(Lcom/dp/sgp/bottomsheets/ChantingHelpBottomSheet;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/ChantingHelpBottomSheet;->rootView:Landroid/view/View;

    return-object p1
.end method
