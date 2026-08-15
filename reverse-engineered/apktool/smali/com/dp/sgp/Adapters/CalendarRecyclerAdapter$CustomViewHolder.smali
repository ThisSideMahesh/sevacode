.class public Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CalendarRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field lyt_main:Landroid/widget/LinearLayout;

.field mTvDate:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->this$0:Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;

    .line 178
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a00f3

    .line 180
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->lyt_main:Landroid/widget/LinearLayout;

    const p1, 0x7f0a01ff

    .line 181
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->mTvDate:Landroid/widget/TextView;

    const p1, 0x7f0a00c2

    .line 182
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method
