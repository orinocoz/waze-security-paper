.class public Lcom/waze/widget/WazeAppWidgetManager;
.super Ljava/lang/Object;
.source "WazeAppWidgetManager.java"


# static fields
.field private static mInstance:Lcom/waze/widget/WazeAppWidgetManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/widget/WazeAppWidgetManager;->mInstance:Lcom/waze/widget/WazeAppWidgetManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/widget/WazeAppWidgetManager;->mContext:Landroid/content/Context;

    .line 75
    iput-object p1, p0, Lcom/waze/widget/WazeAppWidgetManager;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/waze/widget/WazeAppWidgetManager;
    .locals 1
    .parameter "aContext"

    .prologue
    .line 18
    sget-object v0, Lcom/waze/widget/WazeAppWidgetManager;->mInstance:Lcom/waze/widget/WazeAppWidgetManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/waze/widget/WazeAppWidgetManager;

    invoke-direct {v0, p0}, Lcom/waze/widget/WazeAppWidgetManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waze/widget/WazeAppWidgetManager;->mInstance:Lcom/waze/widget/WazeAppWidgetManager;

    .line 22
    :cond_0
    sget-object v0, Lcom/waze/widget/WazeAppWidgetManager;->mInstance:Lcom/waze/widget/WazeAppWidgetManager;

    return-object v0
.end method

.method public static getInstance()Lcom/waze/widget/WazeAppWidgetManager;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/waze/widget/WazeAppWidgetManager;->mInstance:Lcom/waze/widget/WazeAppWidgetManager;

    return-object v0
.end method

.method public static refreshHandler(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 35
    const-string v0, "refreshHandler"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/waze/widget/WidgetManager;->RouteRequest()V

    .line 40
    return-void
.end method

.method public static setRequestInProcess(Z)V
    .locals 0
    .parameter "aValue"

    .prologue
    .line 57
    return-void
.end method

.method public static shutDownApp()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method


# virtual methods
.method public RequestRefresh()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/waze/widget/WazeAppWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetService;->requestRefresh(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public RouteRequestCallback(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "aStatusCode"
    .parameter "aErrDesc"
    .parameter "aDestDescription"
    .parameter "aTimeToDest"

    .prologue
    .line 52
    return-void
.end method
