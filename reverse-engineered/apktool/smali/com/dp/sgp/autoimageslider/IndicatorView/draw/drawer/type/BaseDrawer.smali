.class Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BaseDrawer;
.super Ljava/lang/Object;
.source "BaseDrawer.java"


# instance fields
.field indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

.field paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BaseDrawer;->paint:Landroid/graphics/Paint;

    .line 16
    iput-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BaseDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    return-void
.end method
