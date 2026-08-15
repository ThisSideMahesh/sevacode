.class Lcom/dp/sgp/countrypicker/CountryPickerDialog$2;
.super Ljava/lang/Object;
.source "CountryPickerDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/countrypicker/CountryPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/countrypicker/CountryPickerDialog;


# direct methods
.method constructor <init>(Lcom/dp/sgp/countrypicker/CountryPickerDialog;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog$2;->this$0:Lcom/dp/sgp/countrypicker/CountryPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 79
    iget-object p1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog$2;->this$0:Lcom/dp/sgp/countrypicker/CountryPickerDialog;

    invoke-virtual {p1}, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->hide()V

    .line 80
    iget-object p1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog$2;->this$0:Lcom/dp/sgp/countrypicker/CountryPickerDialog;

    invoke-static {p1}, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->access$000(Lcom/dp/sgp/countrypicker/CountryPickerDialog;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/countrypicker/Country;

    .line 81
    iget-object p2, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog$2;->this$0:Lcom/dp/sgp/countrypicker/CountryPickerDialog;

    invoke-static {p2}, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->access$100(Lcom/dp/sgp/countrypicker/CountryPickerDialog;)Lcom/dp/sgp/countrypicker/CountryPickerCallbacks;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog$2;->this$0:Lcom/dp/sgp/countrypicker/CountryPickerDialog;

    invoke-virtual {p3}, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {p1}, Lcom/dp/sgp/countrypicker/Country;->getIsoCode()Ljava/lang/String;

    move-result-object p5

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p5, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "_flag"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 81
    invoke-static {p3, p4}, Lcom/dp/sgp/countrypicker/Utils;->getMipmapResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/dp/sgp/countrypicker/CountryPickerCallbacks;->onCountrySelected(Lcom/dp/sgp/countrypicker/Country;I)V

    return-void
.end method
