.class public Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ClassicsNotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewsViewHolder"
.end annotation


# instance fields
.field container:Landroid/widget/RelativeLayout;

.field imag_url:Landroid/widget/ImageView;

.field img_user:Landroid/widget/ImageView;

.field layoutDate:Landroid/widget/FrameLayout;

.field publishedAt:Landroid/widget/TextView;

.field releaseYear:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;

.field tv_content:Landroid/widget/TextView;

.field tv_date:Landroid/widget/TextView;

.field tv_title:Landroid/widget/TextView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;Landroid/view/View;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->this$0:Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;

    .line 293
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a00d2

    .line 294
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->layoutDate:Landroid/widget/FrameLayout;

    const p1, 0x7f0a0052

    .line 295
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->container:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0232

    .line 296
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->tv_title:Landroid/widget/TextView;

    const p1, 0x7f0a0161

    .line 297
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->releaseYear:Landroid/widget/TextView;

    const p1, 0x7f0a0225

    .line 298
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->tv_content:Landroid/widget/TextView;

    const p1, 0x7f0a0220

    .line 299
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->tv_date:Landroid/widget/TextView;

    const p1, 0x7f0a0159

    .line 300
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->publishedAt:Landroid/widget/TextView;

    const p1, 0x7f0a00b7

    .line 301
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->img_user:Landroid/widget/ImageView;

    const p1, 0x7f0a00a3

    .line 302
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->imag_url:Landroid/widget/ImageView;

    const p1, 0x7f0a0269

    .line 303
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;)Landroid/webkit/WebView;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->webView:Landroid/webkit/WebView;

    return-object p0
.end method
