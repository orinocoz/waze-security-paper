.class final Lcom/waze/widget/WazeAppWidgetService$1Task;
.super Ljava/util/TimerTask;
.source "WazeAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/widget/WazeAppWidgetService;->startRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Task"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->access$0()Lcom/waze/widget/WazeAppWidgetService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->access$0()Lcom/waze/widget/WazeAppWidgetService;

    move-result-object v0

    #calls: Lcom/waze/widget/WazeAppWidgetService;->onRefreshingTimeout()V
    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetService;->access$1(Lcom/waze/widget/WazeAppWidgetService;)V

    .line 257
    :cond_0
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->access$2()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->access$2()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 259
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetService;->access$3(Ljava/util/Timer;)V

    .line 261
    :cond_1
    return-void
.end method
