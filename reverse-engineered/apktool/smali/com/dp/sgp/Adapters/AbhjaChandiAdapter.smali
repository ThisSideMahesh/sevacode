.class public Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AbhjaChandiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private albumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/AbjachnadiData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/AbjachnadiData;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;->albumList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;->albumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;->onBindViewHolder(Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;I)V
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;->albumList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/AbjachnadiData;

    .line 65
    iget-object v0, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_date:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getAdded_on()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->releaseYear:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_value()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0935\u0948\u092f\u0915\u094d\u0924\u093f\u0915"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\u092e\u093e\u0933"

    const-string v2, "\u092a\u093e\u0930\u093e\u092f\u0923"

    const-string v3, "1"

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_type()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 84
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    const-string v0, "#3c4cac"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 88
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->releaseYear:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 91
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 92
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 94
    iget-object p1, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 95
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_1

    .line 98
    :cond_1
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    const-string v0, "#fe676e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 101
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->releaseYear:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 103
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 104
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 106
    iget-object p1, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 107
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_1

    .line 110
    :cond_2
    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "\u0915\u094c\u091f\u0942\u0902\u092c\u093f\u0915"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_type()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 113
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    const-string v0, "#941c4e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 117
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->releaseYear:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 120
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 121
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 123
    iget-object p1, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 124
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_1

    .line 128
    :cond_3
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    const-string v0, "#918500"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->releaseYear:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 133
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 134
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 136
    iget-object p1, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 137
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_1

    .line 142
    :cond_4
    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_type()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 143
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    const-string v0, "#8A52E9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 147
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->releaseYear:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 150
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 151
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 153
    iget-object p1, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 154
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    .line 156
    :cond_5
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    const-string v0, "#4caf50"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 159
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->releaseYear:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    iget-object p2, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 162
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 164
    iget-object p1, p1, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 165
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0045

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;-><init>(Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;Landroid/view/View;)V

    return-object p2
.end method
