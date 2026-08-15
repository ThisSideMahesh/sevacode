.class public final Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter;
.super Ljava/lang/Object;
.source "SignaturePadBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;,
        Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;,
        Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOnSignedListener(Lcom/github/gcacace/signaturepad/views/SignaturePad;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-static {p0, v0, v0, p1}, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter;->setOnSignedListener(Lcom/github/gcacace/signaturepad/views/SignaturePad;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;)V

    return-void
.end method

.method public static setOnSignedListener(Lcom/github/gcacace/signaturepad/views/SignaturePad;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-static {p0, v0, p1, v0}, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter;->setOnSignedListener(Lcom/github/gcacace/signaturepad/views/SignaturePad;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;)V

    return-void
.end method

.method public static setOnSignedListener(Lcom/github/gcacace/signaturepad/views/SignaturePad;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, p1, v0, v0}, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter;->setOnSignedListener(Lcom/github/gcacace/signaturepad/views/SignaturePad;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;)V

    return-void
.end method

.method public static setOnSignedListener(Lcom/github/gcacace/signaturepad/views/SignaturePad;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$1;-><init>(Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnStartSigningListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnSignedListener;Lcom/github/gcacace/signaturepad/utils/SignaturePadBindingAdapter$OnClearListener;)V

    invoke-virtual {p0, v0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->setOnSignedListener(Lcom/github/gcacace/signaturepad/views/SignaturePad$OnSignedListener;)V

    return-void
.end method
