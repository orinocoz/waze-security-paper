.class Lcom/waze/widget/WazeAppWidgetService$3;
.super Ljava/util/TimerTask;
.source "WazeAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/widget/WazeAppWidgetService;->updateCmdHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/widget/WazeAppWidgetService;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/waze/widget/WazeAppWidgetService;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/widget/WazeAppWidgetService$3;->this$0:Lcom/waze/widget/WazeAppWidgetService;

    iput-object p2, p0, Lcom/waze/widget/WazeAppWidgetService$3;->val$file:Ljava/io/File;

    .line 373
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-object v0, p0, Lcom/waze/widget/WazeAppWidgetService$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/widget/WazeAppWidgetService$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "SD Card is available. Setting state to the STATUS_NEW_WIDGET. Cancelling the timer."

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 379
    const/16 v0, 0x8

    invoke-static {v0, v1}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 380
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->access$4()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 381
    invoke-static {}, Lcom/waze/widget/WidgetManager;->loadWazeConfig()V

    .line 382
    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetService;->access$7(Ljava/util/Timer;)V

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_0
    const-string v0, "SD Card is not available. Scheduling next check in 30 seconds"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->w(Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->access$4()Ljava/util/Timer;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
