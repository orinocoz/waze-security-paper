.class Lcom/waze/widget/WidgetManager$1;
.super Ljava/lang/Object;
.source "WidgetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/widget/WidgetManager;->executeResponse(Lcom/waze/widget/routing/RoutingResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$rrsp:Lcom/waze/widget/routing/RoutingResponse;


# direct methods
.method constructor <init>(Lcom/waze/widget/routing/RoutingResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/widget/WidgetManager$1;->val$rrsp:Lcom/waze/widget/routing/RoutingResponse;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 108
    iget-object v1, p0, Lcom/waze/widget/WidgetManager$1;->val$rrsp:Lcom/waze/widget/routing/RoutingResponse;

    if-nez v1, :cond_0

    .line 109
    const/high16 v1, 0x10

    new-instance v2, Lcom/waze/widget/StatusData;

    invoke-static {}, Lcom/waze/widget/WidgetManager;->access$0()Lcom/waze/widget/Destination;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/widget/Destination;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    sget-object v5, Lcom/waze/widget/routing/RouteScoreType;->NONE:Lcom/waze/widget/routing/RouteScoreType;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/waze/widget/StatusData;-><init>(Ljava/lang/String;ILcom/waze/widget/routing/RouteScoreType;Lcom/waze/widget/routing/RoutingResponse;)V

    invoke-static {v1, v2}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/waze/widget/WidgetManager$1;->val$rrsp:Lcom/waze/widget/routing/RoutingResponse;

    invoke-virtual {v1}, Lcom/waze/widget/routing/RoutingResponse;->getTime()I

    move-result v1

    iget-object v2, p0, Lcom/waze/widget/WidgetManager$1;->val$rrsp:Lcom/waze/widget/routing/RoutingResponse;

    invoke-virtual {v2}, Lcom/waze/widget/routing/RoutingResponse;->getAveragetTime()I

    move-result v2

    invoke-static {v1, v2}, Lcom/waze/widget/routing/RouteScore;->getScore(II)Lcom/waze/widget/routing/RouteScoreType;

    move-result-object v0

    .line 113
    .local v0, score:Lcom/waze/widget/routing/RouteScoreType;
    const/4 v1, 0x1

    new-instance v2, Lcom/waze/widget/StatusData;

    invoke-static {}, Lcom/waze/widget/WidgetManager;->access$0()Lcom/waze/widget/Destination;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/widget/Destination;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/widget/WidgetManager$1;->val$rrsp:Lcom/waze/widget/routing/RoutingResponse;

    invoke-virtual {v4}, Lcom/waze/widget/routing/RoutingResponse;->getTime()I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/waze/widget/WidgetManager$1;->val$rrsp:Lcom/waze/widget/routing/RoutingResponse;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/waze/widget/StatusData;-><init>(Ljava/lang/String;ILcom/waze/widget/routing/RouteScoreType;Lcom/waze/widget/routing/RoutingResponse;)V

    invoke-static {v1, v2}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    goto :goto_0
.end method
