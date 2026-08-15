.class public Lcom/dp/sgp/countrypicker/CountryListAdapter$Item;
.super Ljava/lang/Object;
.source "CountryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/countrypicker/CountryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/dp/sgp/countrypicker/CountryListAdapter$Item;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/dp/sgp/countrypicker/CountryListAdapter$Item;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public setIcon(Landroid/widget/ImageView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/dp/sgp/countrypicker/CountryListAdapter$Item;->icon:Landroid/widget/ImageView;

    return-void
.end method

.method public setName(Landroid/widget/TextView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/dp/sgp/countrypicker/CountryListAdapter$Item;->name:Landroid/widget/TextView;

    return-void
.end method
