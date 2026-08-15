.class Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemSelectedAdapter;
.super Ljava/lang/Object;
.source "LovelyChoiceDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemSelectedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private adaptee:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;


# direct methods
.method private constructor <init>(Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemSelectedAdapter;->this$0:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemSelectedAdapter;->adaptee:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$1;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemSelectedAdapter;-><init>(Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 174
    iget-object p2, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemSelectedAdapter;->adaptee:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;->onItemSelected(ILjava/lang/Object;)V

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemSelectedAdapter;->this$0:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    invoke-virtual {p1}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->dismiss()V

    return-void
.end method
