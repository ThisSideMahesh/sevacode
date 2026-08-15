.class public Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;
.super Landroid/support/design/widget/BottomSheetDialogFragment;
.source "SimpleTextBottomSheet.java"


# static fields
.field public static final DPU:Ljava/lang/String; = "dpu"

.field public static final MUHURTA:Ljava/lang/String; = "muhurta"

.field public static final SANVAR:Ljava/lang/String; = "sanvar"

.field public static final SHUBA_SHUBH:Ljava/lang/String; = "shubha_shubh"


# instance fields
.field private MONTH_OFFSET:I

.field private month:I

.field muhurathModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/MuhurathModel;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private rootView:Landroid/view/View;

.field private tvData:Landroid/widget/TextView;

.field private tvHeader:Landroid/widget/TextView;

.field private type:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->MONTH_OFFSET:I

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;
    .locals 1

    .line 46
    new-instance v0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;

    invoke-direct {v0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;-><init>()V

    .line 47
    invoke-virtual {v0, p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->type:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "YEAR"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->year:I

    .line 57
    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MONTH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->month:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const p3, 0x7f0d00d3

    .line 71
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->rootView:Landroid/view/View;

    const p2, 0x7f0a015f

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    .line 75
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->rootView:Landroid/view/View;

    const p2, 0x7f0a00c0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet$1;-><init>(Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->rootView:Landroid/view/View;

    const p2, 0x7f0a0219

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvHeader:Landroid/widget/TextView;

    .line 84
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->rootView:Landroid/view/View;

    const p2, 0x7f0a01fe

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvData:Landroid/widget/TextView;

    .line 86
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->type:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "muhurta"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string p2, "shubha_shubh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string p2, "dpu"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string p2, "sanvar"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const-string p1, " "

    const-string p2, "DatabaseResponse"

    const-string v1, " -->"

    const v2, 0x7f11010a

    const-string v3, "\\n\\n"

    const-string v4, ""

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_c

    .line 89
    :pswitch_0
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1100de

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvData:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v3, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->year:I

    iget v4, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->month:I

    invoke-static {v0, v3, v4}, Lcom/dp/sgp/database/DatabaseUtils;->getMuhurta(Landroid/content/Context;II)Lcom/dp/sgp/calendar/CalenderData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v2, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->year:I

    iget v3, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->month:I

    invoke-static {v0, v2, v3}, Lcom/dp/sgp/database/DatabaseUtils;->getMuhurta(Landroid/content/Context;II)Lcom/dp/sgp/calendar/CalenderData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvData:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    const-string v2, "\\r\\n\\r\\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_5

    .line 97
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 104
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "\r\n"

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 110
    new-instance v4, Lcom/dp/sgp/Model/MuhurathModel;

    invoke-direct {v4}, Lcom/dp/sgp/Model/MuhurathModel;-><init>()V

    .line 112
    invoke-virtual {v4, p1}, Lcom/dp/sgp/Model/MuhurathModel;->setName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v4, v3}, Lcom/dp/sgp/Model/MuhurathModel;->setTime(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 119
    :cond_5
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    if-eqz p1, :cond_f

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 125
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 126
    iget-object p3, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    invoke-virtual {p1, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance p1, Lcom/dp/sgp/Adapters/MuhurathaAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/MuhurathaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 130
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 131
    iget-object p3, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 132
    iget-object p2, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto/16 :goto_c

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100ec

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvData:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget v6, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->year:I

    iget v7, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->month:I

    invoke-static {v5, v6, v7}, Lcom/dp/sgp/database/DatabaseUtils;->getShubhaShubh(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v5, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->year:I

    iget v6, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->month:I

    invoke-static {v2, v5, v6}, Lcom/dp/sgp/database/DatabaseUtils;->getShubhaShubh(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvData:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 245
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_f

    .line 247
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    .line 255
    :cond_7
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v6, Lcom/dp/sgp/Model/MuhurathModel;

    invoke-direct {v6}, Lcom/dp/sgp/Model/MuhurathModel;-><init>()V

    .line 265
    invoke-virtual {v6, v5}, Lcom/dp/sgp/Model/MuhurathModel;->setName(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v6, v0}, Lcom/dp/sgp/Model/MuhurathModel;->setTime(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :goto_5
    iget-object v0, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 274
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 276
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 277
    iget-object v5, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Lcom/dp/sgp/Adapters/MuhurathaAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    invoke-direct {v0, v5, v6}, Lcom/dp/sgp/Adapters/MuhurathaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 282
    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 283
    iget-object v6, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 284
    iget-object v5, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_4

    .line 187
    :pswitch_2
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f110071

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvData:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v5, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->year:I

    invoke-static {v0, v5}, Lcom/dp/sgp/database/DatabaseUtils;->getDPU(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v2, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->year:I

    invoke-static {v0, v2}, Lcom/dp/sgp/database/DatabaseUtils;->getDPU(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvData:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    const-string v2, "\\r\\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_f

    .line 194
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_8

    .line 200
    :cond_a
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 203
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v5, "-"

    invoke-direct {v2, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 208
    new-instance v5, Lcom/dp/sgp/Model/MuhurathModel;

    invoke-direct {v5}, Lcom/dp/sgp/Model/MuhurathModel;-><init>()V

    .line 210
    invoke-virtual {v5, v2}, Lcom/dp/sgp/Model/MuhurathModel;->setName(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v5, p1}, Lcom/dp/sgp/Model/MuhurathModel;->setTime(Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :goto_8
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    if-eqz p1, :cond_b

    .line 219
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 221
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 222
    iget-object v2, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance p1, Lcom/dp/sgp/Adapters/MuhurathaAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v5, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    invoke-direct {p1, v2, v5}, Lcom/dp/sgp/Adapters/MuhurathaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 227
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 228
    iget-object v5, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 229
    iget-object v2, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_7

    .line 139
    :pswitch_3
    iget-object v0, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f11015b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvData:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget v6, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->year:I

    iget v7, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->month:I

    invoke-static {v5, v6, v7}, Lcom/dp/sgp/database/DatabaseUtils;->getSanvar(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_c
    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v5, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->year:I

    iget v6, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->month:I

    invoke-static {v2, v5, v6}, Lcom/dp/sgp/database/DatabaseUtils;->getSanvar(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->tvData:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_f

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_b

    .line 152
    :cond_d
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v6, Lcom/dp/sgp/Model/MuhurathModel;

    invoke-direct {v6}, Lcom/dp/sgp/Model/MuhurathModel;-><init>()V

    .line 162
    invoke-virtual {v6, v5}, Lcom/dp/sgp/Model/MuhurathModel;->setName(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v6, v0}, Lcom/dp/sgp/Model/MuhurathModel;->setTime(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_b
    iget-object v0, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 173
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 174
    iget-object v5, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Lcom/dp/sgp/Adapters/MuhurathaAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->muhurathModelList:Ljava/util/List;

    invoke-direct {v0, v5, v6}, Lcom/dp/sgp/Adapters/MuhurathaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 178
    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 179
    iget-object v6, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 180
    iget-object v5, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_e
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_a

    .line 293
    :cond_f
    :goto_c
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->rootView:Landroid/view/View;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x363800b9 -> :sswitch_3
        0x18569 -> :sswitch_2
        0x40d1c3e2 -> :sswitch_1
        0x539eb18a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
