.class public Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CalendarRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;
    }
.end annotation


# static fields
.field public static final ITEM_VIEW:I


# instance fields
.field private isSaturdays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/IsSaturday;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/calendar/CalenderData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private recyclerItemClickListener:Lcom/dp/sgp/listener/OnRecyclerItemClickListener;

.field private selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/calendar/CalenderData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/IsSaturday;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->selectedPosition:I

    .line 42
    iput-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->list:Ljava/util/ArrayList;

    .line 44
    iput-object p3, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->isSaturdays:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 45
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 46
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dp/sgp/calendar/CalenderData;

    invoke-virtual {p3}, Lcom/dp/sgp/calendar/CalenderData;->getTodaysDate()I

    move-result p3

    if-lez p3, :cond_0

    .line 47
    iput p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->selectedPosition:I

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;)Lcom/dp/sgp/listener/OnRecyclerItemClickListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->recyclerItemClickListener:Lcom/dp/sgp/listener/OnRecyclerItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->list:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->selectedPosition:I

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;

    iget-object v1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->mTvDate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/CalenderData;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/CalenderData;->getDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 69
    iget-object v1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Amavasya"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f080129

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Pournima"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f0801ad

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Chaturthi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f08016c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Meeting"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    iget-object v1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f0801b5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Saptah"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    iget-object v1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f0801ca

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 84
    :cond_4
    iget-object v1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 90
    :cond_5
    iget-object v1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :goto_0
    iget v1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->selectedPosition:I

    if-ne p2, v1, :cond_6

    .line 102
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 103
    iget-object p1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->mTvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a7

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object p1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->mTvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0600f0

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->recyclerItemClickListener:Lcom/dp/sgp/listener/OnRecyclerItemClickListener;

    invoke-interface {p1, p2, v2}, Lcom/dp/sgp/listener/OnRecyclerItemClickListener;->onRecyclerItemClick(II)V

    goto :goto_1

    .line 110
    :cond_6
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 111
    iget-object p1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->mTvDate:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 113
    iget-object p1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->mTvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060041

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 116
    :cond_7
    iget-object p1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->mTvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060082

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    :goto_1
    iget-object p1, v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$1;-><init>(Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter$CustomViewHolder;-><init>(Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnRecyclerItemClickListener(Lcom/dp/sgp/listener/OnRecyclerItemClickListener;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->recyclerItemClickListener:Lcom/dp/sgp/listener/OnRecyclerItemClickListener;

    return-void
.end method
