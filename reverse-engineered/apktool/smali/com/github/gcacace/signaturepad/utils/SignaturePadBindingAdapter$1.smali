.class final Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$1;
.super Ljava/lang/Object;
.source "SignaturePadBindingAdapter.java"

# interfaces
.implements Lcom/github/gcacace/signaturepad/views/SignaturePad$OnSignedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter;->setOnSignedListener(Lcom/github/gcacace/signaturepad/views/SignaturePad;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onClearListener:Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;

.field final synthetic val$onSignedListener:Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;

.field final synthetic val$onStartSigningListener:Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;


# direct methods
.method constructor <init>(Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$1;->val$onStartSigningListener:Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;

    iput-object p2, p0, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$1;->val$onSignedListener:Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;

    iput-object p3, p0, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$1;->val$onClearListener:Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$1;->val$onClearListener:Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;->onClear()V

    :cond_0
    return-void
.end method

.method public onSigned()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$1;->val$onSignedListener:Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;->onSigned()V

    :cond_0
    return-void
.end method

.method public onStartSigning()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$1;->val$onStartSigningListener:Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;->onStartSigning()V

    :cond_0
    return-void
.end method
