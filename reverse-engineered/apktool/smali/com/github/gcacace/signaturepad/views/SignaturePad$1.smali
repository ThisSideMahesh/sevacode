.class Lcom/github/gcacace/signaturepad/views/SignaturePad$1;
.super Ljava/lang/Object;
.source "SignaturePad.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/gcacace/signaturepad/views/SignaturePad;->setSignatureBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/gcacace/signaturepad/views/SignaturePad;

.field final synthetic val$signature:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/github/gcacace/signaturepad/views/SignaturePad;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad$1;->this$0:Lcom/github/gcacace/signaturepad/views/SignaturePad;

    iput-object p2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad$1;->val$signature:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad$1;->this$0:Lcom/github/gcacace/signaturepad/views/SignaturePad;

    invoke-virtual {v0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/github/gcacace/signaturepad/view/ViewTreeObserverCompat;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 274
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad$1;->this$0:Lcom/github/gcacace/signaturepad/views/SignaturePad;

    iget-object v1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad$1;->val$signature:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->setSignatureBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
