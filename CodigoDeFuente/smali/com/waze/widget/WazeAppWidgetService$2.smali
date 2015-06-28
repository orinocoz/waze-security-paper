.class Lcom/waze/widget/WazeAppWidgetService$2;
.super Ljava/util/TimerTask;
.source "WazeAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/widget/WazeAppWidgetService;->enableCmdHandler()V
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
    iput-object p1, p0, Lcom/waze/widget/WazeAppWidgetService$2;->this$0:Lcom/waze/widget/WazeAppWidgetService;

    iput-object p2, p0, Lcom/waze/widget/WazeAppWidgetService$2;->val$file:Ljava/io/File;

    .line 328
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/waze/widget/WazeAppWidgetService$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/widget/WazeAppWidgetService$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "SD Card is available. Setting state to the STATUS_NEW_WIDGET. Cancelling the timer."

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 334
    const/16 v0, 0x8

    invoke-static {v0, v2}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 335
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->access$4()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 336
    invoke-static {}, Lcom/waze/widget/WidgetManager;->loadWazeConfig()V

    .line 337
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetService;->access$5(I)V

    .line 338
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->access$6()Lcom/waze/widget/StatusData;

    move-result-object v0

    new-instance v1, Lcom/waze/widget/StatusData;

    invoke-direct {v1}, Lcom/waze/widget/StatusData;-><init>()V

    invoke-virtual {v0, v1}, Lcom/waze/widget/StatusData;->copy(Lcom/waze/widget/StatusData;)V

    .line 339
    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetService;->access$7(Ljava/util/Timer;)V

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string v0, "SD Card is not available. Scheduling next check in 30 seconds"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->w(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->access$4()Ljava/util/Timer;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
