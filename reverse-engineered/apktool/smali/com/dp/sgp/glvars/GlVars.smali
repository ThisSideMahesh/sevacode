.class public Lcom/dp/sgp/glvars/GlVars;
.super Ljava/lang/Object;
.source "GlVars.java"


# static fields
.field public static Printed_Date:Ljava/lang/String;

.field public static Printed_Name:Ljava/lang/String;

.field public static RESULT_COUNT:I

.field public static Title:Ljava/lang/String;

.field public static User_Code:Ljava/lang/String;

.field private static final instance:Lcom/dp/sgp/glvars/GlVars;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/dp/sgp/glvars/GlVars;

    invoke-direct {v0}, Lcom/dp/sgp/glvars/GlVars;-><init>()V

    sput-object v0, Lcom/dp/sgp/glvars/GlVars;->instance:Lcom/dp/sgp/glvars/GlVars;

    const/4 v0, 0x0

    .line 8
    sput v0, Lcom/dp/sgp/glvars/GlVars;->RESULT_COUNT:I

    const-string v0, ""

    .line 9
    sput-object v0, Lcom/dp/sgp/glvars/GlVars;->Title:Ljava/lang/String;

    .line 10
    sput-object v0, Lcom/dp/sgp/glvars/GlVars;->User_Code:Ljava/lang/String;

    .line 11
    sput-object v0, Lcom/dp/sgp/glvars/GlVars;->Printed_Name:Ljava/lang/String;

    .line 12
    sput-object v0, Lcom/dp/sgp/glvars/GlVars;->Printed_Date:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Instance()Lcom/dp/sgp/glvars/GlVars;
    .locals 1

    .line 5
    sget-object v0, Lcom/dp/sgp/glvars/GlVars;->instance:Lcom/dp/sgp/glvars/GlVars;

    return-object v0
.end method
