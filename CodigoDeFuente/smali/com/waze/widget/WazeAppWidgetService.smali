.class public Lcom/waze/widget/WazeAppWidgetService;
.super Landroid/app/Service;
.source "WazeAppWidgetService.java"


# static fields
.field public static final APPWIDGET_ACTION_CMD_DRIVE:Ljava/lang/String; = "AppWidget Action Command Drive"

.field public static final APPWIDGET_ACTION_CMD_ENABLE:Ljava/lang/String; = "AppWidget Action Command Enable"

.field public static final APPWIDGET_ACTION_CMD_FORCE_REFRESH:Ljava/lang/String; = "AppWidget Action Command Force Refresh"

.field public static final APPWIDGET_ACTION_CMD_GRAPH:Ljava/lang/String; = "AppWidget Action Command Graph"

.field public static final APPWIDGET_ACTION_CMD_NODATA:Ljava/lang/String; = "AppWidget Action Command No Data"

.field public static final APPWIDGET_ACTION_CMD_NONE:Ljava/lang/String; = "AppWidget Action Command None"

.field public static final APPWIDGET_ACTION_CMD_REFRESH:Ljava/lang/String; = "AppWidget Action Command Refresh"

.field public static final APPWIDGET_ACTION_CMD_REFRESH_INFO:Ljava/lang/String; = "AppWidget Action Command Refresh Info"

.field public static final APPWIDGET_ACTION_CMD_REFRESH_TEST:Ljava/lang/String; = "AppWidget Action Command Refresh Test"

.field public static final APPWIDGET_ACTION_CMD_UPDATE:Ljava/lang/String; = "AppWidget Action Command Update"

.field public static final APPWIDGET_ACTION_UPDATE:Ljava/lang/String; = "AppWidget Action Update"

.field private static final INITIAL_DESTINATION:Ljava/lang/String; = "Home"

.field private static final PREFS_DB:Ljava/lang/String; = "WAZE WIDGET PREFS"

.field private static final REFRESHING_TIMEOUT:J = 0x7530L

.field public static final STATE_CURRENT_DATA_NEED_REFRESH:I = 0x3

.field public static final STATE_CURRENT_DATA_UPTODATE:I = 0x2

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_NO_DATA:I = 0x1

.field public static final STATE_REFRESHING:I = 0x4

.field public static final STATE_REFRESHING_INFO:I = 0x5

.field public static mApplicationContext:Landroid/content/Context;

.field private static mInstance:Lcom/waze/widget/WazeAppWidgetService;

.field private static mRefreshMonitor:Ljava/util/Timer;

.field private static mSDCardChecker:Ljava/util/Timer;

.field private static final mStatusData:Lcom/waze/widget/StatusData;

.field private static volatile mWidgetState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 810
    sput-object v1, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    .line 811
    sput-object v1, Lcom/waze/widget/WazeAppWidgetService;->mApplicationContext:Landroid/content/Context;

    .line 813
    new-instance v0, Lcom/waze/widget/StatusData;

    invoke-direct {v0}, Lcom/waze/widget/StatusData;-><init>()V

    sput-object v0, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    .line 815
    sput-object v1, Lcom/waze/widget/WazeAppWidgetService;->mSDCardChecker:Ljava/util/Timer;

    .line 816
    sput-object v1, Lcom/waze/widget/WazeAppWidgetService;->mRefreshMonitor:Ljava/util/Timer;

    .line 820
    const/4 v0, 0x0

    sput v0, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/waze/widget/WazeAppWidgetService;
    .locals 1

    .prologue
    .line 810
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/widget/WazeAppWidgetService;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/waze/widget/WazeAppWidgetService;->onRefreshingTimeout()V

    return-void
.end method

.method static synthetic access$2()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 816
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mRefreshMonitor:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3(Ljava/util/Timer;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    sput-object p0, Lcom/waze/widget/WazeAppWidgetService;->mRefreshMonitor:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$4()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 815
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mSDCardChecker:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$5(I)V
    .locals 0
    .parameter

    .prologue
    .line 820
    sput p0, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    return-void
.end method

.method static synthetic access$6()Lcom/waze/widget/StatusData;
    .locals 1

    .prologue
    .line 813
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    return-object v0
.end method

.method static synthetic access$7(Ljava/util/Timer;)V
    .locals 0
    .parameter

    .prologue
    .line 815
    sput-object p0, Lcom/waze/widget/WazeAppWidgetService;->mSDCardChecker:Ljava/util/Timer;

    return-void
.end method

.method public static alertUser(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 177
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 179
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 181
    .local v0, activeActivity:Lcom/waze/ifs/ui/ActivityBase;
    if-eqz v0, :cond_0

    .line 182
    new-instance v1, Lcom/waze/widget/WazeAppWidgetService$1;

    invoke-direct {v1, p0}, Lcom/waze/widget/WazeAppWidgetService$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/ActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    .end local v0           #activeActivity:Lcom/waze/ifs/ui/ActivityBase;
    :cond_0
    return-void
.end method

.method public static destroy()V
    .locals 3

    .prologue
    .line 214
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    if-eqz v2, :cond_0

    .line 215
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    invoke-direct {v2}, Lcom/waze/widget/WazeAppWidgetService;->saveState()V

    .line 216
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    invoke-virtual {v2}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 217
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    .line 218
    const-class v2, Lcom/waze/widget/WazeAppWidgetService;

    .line 217
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v1, destroyIntent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 221
    :cond_0
    return-void
.end method

.method private driveCmdHandler()V
    .locals 4

    .prologue
    .line 489
    const-string v2, "Drive command handler"

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 491
    sget v2, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 492
    sget v2, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 494
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting waze waze://?favorite="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->destination()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 494
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 497
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 498
    const-class v3, Lcom/waze/MainActivity;

    .line 497
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 500
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "waze://?favorite="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->destination()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 501
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 503
    const/high16 v2, 0x1800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 505
    const-string v2, "driveCmdHandler - starting waze"

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 510
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 508
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "driveCmdHandler invalid state"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableCmdHandler()V
    .locals 5

    .prologue
    .line 316
    const-string v2, "enable command handler"

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    const-string v2, "SD Card is available. Setting state to the STATUS_NEW_WIDGET."

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 324
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mSDCardChecker:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 327
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    sput-object v2, Lcom/waze/widget/WazeAppWidgetService;->mSDCardChecker:Ljava/util/Timer;

    .line 328
    new-instance v1, Lcom/waze/widget/WazeAppWidgetService$2;

    invoke-direct {v1, p0, v0}, Lcom/waze/widget/WazeAppWidgetService$2;-><init>(Lcom/waze/widget/WazeAppWidgetService;Ljava/io/File;)V

    .line 347
    .local v1, task:Ljava/util/TimerTask;
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mSDCardChecker:Ljava/util/Timer;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private forceRefreshCmdHandler()V
    .locals 2

    .prologue
    .line 459
    const-string v0, "force refresh command handler"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x3

    sput v0, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 461
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 462
    return-void
.end method

.method private graphCmdHandler()V
    .locals 5

    .prologue
    .line 434
    const-string v1, "Graph command handler"

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 436
    sget v1, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 437
    sget v1, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 438
    :cond_0
    new-instance v1, Lcom/waze/widget/WazeAppWidgetChart;

    invoke-direct {v1}, Lcom/waze/widget/WazeAppWidgetChart;-><init>()V

    .line 439
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v2}, Lcom/waze/widget/StatusData;->getRoutingRespnse()Lcom/waze/widget/routing/RoutingResponse;

    move-result-object v2

    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->timeStamp()J

    move-result-wide v3

    .line 438
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/waze/widget/WazeAppWidgetChart;->execute(Landroid/content/Context;Lcom/waze/widget/routing/RoutingResponse;J)Landroid/content/Intent;

    move-result-object v0

    .line 442
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x5000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 444
    invoke-virtual {p0}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 449
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 446
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Graph command handler called but state is ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    sget v2, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isDataExpired()Z
    .locals 4

    .prologue
    .line 752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v2}, Lcom/waze/widget/StatusData;->timeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 753
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->AllowRefreshTimer()J

    move-result-wide v2

    .line 752
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadState()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x10

    const/4 v11, 0x2

    .line 675
    const-string v8, "loadState "

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 677
    const-string v9, "WAZE WIDGET PREFS"

    const/4 v10, 0x0

    .line 676
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 678
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v8, "State"

    sget v9, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 679
    const-string v8, "Destination"

    .line 680
    sget-object v9, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v9}, Lcom/waze/widget/StatusData;->destination()Ljava/lang/String;

    move-result-object v9

    .line 679
    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, destination:Ljava/lang/String;
    const-string v8, "TimeToDestination"

    .line 682
    sget-object v9, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v9}, Lcom/waze/widget/StatusData;->timeToDest()I

    move-result v9

    .line 681
    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 683
    .local v7, timeToDest:I
    const-string v8, "TimeStamp"

    sget-object v9, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v9}, Lcom/waze/widget/StatusData;->timeStamp()J

    move-result-wide v9

    invoke-interface {v1, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 684
    .local v5, timeStamp:J
    const-string v8, "TimesArray"

    const-string v9, ""

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, routingResultStr:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "destination: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " timeToDest: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 690
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 692
    :try_start_0
    new-instance v3, Lcom/waze/widget/routing/RoutingResponse;

    invoke-direct {v3, v2}, Lcom/waze/widget/routing/RoutingResponse;-><init>(Ljava/lang/String;)V

    .line 694
    .local v3, rrsp:Lcom/waze/widget/routing/RoutingResponse;
    invoke-virtual {v3}, Lcom/waze/widget/routing/RoutingResponse;->getAveragetTime()I

    move-result v8

    .line 693
    invoke-static {v7, v8}, Lcom/waze/widget/routing/RouteScore;->getScore(II)Lcom/waze/widget/routing/RouteScoreType;

    move-result-object v4

    .line 695
    .local v4, score:Lcom/waze/widget/routing/RouteScoreType;
    sget-object v8, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    new-instance v9, Lcom/waze/widget/StatusData;

    .line 696
    invoke-direct {v9, v0, v7, v4, v3}, Lcom/waze/widget/StatusData;-><init>(Ljava/lang/String;ILcom/waze/widget/routing/RouteScoreType;Lcom/waze/widget/routing/RoutingResponse;)V

    .line 695
    invoke-virtual {v8, v9}, Lcom/waze/widget/StatusData;->copy(Lcom/waze/widget/StatusData;)V

    .line 697
    sget-object v8, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v8, v5, v6}, Lcom/waze/widget/StatusData;->setTimeStamp(J)V

    .line 698
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Last loaded Routing Reposne: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v3}, Lcom/waze/widget/routing/RoutingResponse;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " timestamp= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 698
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    .end local v3           #rrsp:Lcom/waze/widget/routing/RoutingResponse;
    .end local v4           #score:Lcom/waze/widget/routing/RouteScoreType;
    :goto_0
    sget v8, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    if-ne v8, v11, :cond_2

    .line 710
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->isDataExpired()Z

    move-result v8

    if-nez v8, :cond_1

    .line 711
    const-string v8, "loaded state: data is not expired"

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 722
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Last loaded state: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 723
    return-void

    .line 705
    :cond_0
    sget-object v8, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    .line 706
    new-instance v9, Lcom/waze/widget/StatusData;

    invoke-direct {v9, v0, v7, v5, v6}, Lcom/waze/widget/StatusData;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {v8, v9}, Lcom/waze/widget/StatusData;->copy(Lcom/waze/widget/StatusData;)V

    goto :goto_0

    .line 713
    :cond_1
    const-string v8, "loaded state: data is expired"

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 714
    invoke-static {v12, v13}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    goto :goto_1

    .line 717
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Last loaded state was: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 718
    sput v11, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 719
    invoke-static {v12, v13}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    goto :goto_1

    .line 700
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private noDataCmdHandler()V
    .locals 3

    .prologue
    .line 472
    const-string v1, "NoData command handler"

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 475
    const-class v2, Lcom/waze/widget/WazeAppWidgetNoDataActivity;

    .line 474
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 479
    return-void
.end method

.method private onRefreshingTimeout()V
    .locals 2

    .prologue
    .line 286
    const-string v0, "Refresh timeout. Reset state."

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 287
    const/high16 v0, 0x20

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 295
    return-void
.end method

.method private static printDbg(Ljava/lang/String;I)V
    .locals 2
    .parameter "aStr"
    .parameter "aStatus"

    .prologue
    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG PRINT. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 761
    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 762
    const-string v1, ". Current status data: ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v1}, Lcom/waze/widget/StatusData;->destination()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 763
    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v1}, Lcom/waze/widget/StatusData;->timeToDest()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 764
    sget-object v1, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v1}, Lcom/waze/widget/StatusData;->score()Lcom/waze/widget/routing/RouteScoreType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/widget/routing/RouteScoreType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method private refreshCmdHandler(Z)V
    .locals 2
    .parameter "aShowNoDataInfo"

    .prologue
    const/4 v1, 0x0

    .line 403
    const-string v0, "Refresh command handler"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 405
    if-eqz p1, :cond_0

    .line 406
    const/16 v0, 0x40

    invoke-static {v0, v1}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 409
    :goto_0
    return-void

    .line 408
    :cond_0
    const/16 v0, 0x20

    invoke-static {v0, v1}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    goto :goto_0
.end method

.method private refreshTestCmdHandler()V
    .locals 2

    .prologue
    .line 419
    const-string v0, "RefreshTest command handler"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->isDataExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 424
    :cond_0
    return-void
.end method

.method public static requestRefresh(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    .line 231
    const-class v1, Lcom/waze/widget/WazeAppWidgetService;

    .line 230
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v0, requestRefreshIntent:Landroid/content/Intent;
    const-string v1, "AppWidget Action Command Refresh"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 234
    return-void
.end method

.method private saveState()V
    .locals 5

    .prologue
    .line 647
    const-string v2, "saveState "

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 649
    const-string v3, "WAZE WIDGET PREFS"

    const/4 v4, 0x0

    .line 648
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 650
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 651
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "State"

    sget v3, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 652
    const-string v2, "Destination"

    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->destination()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 653
    const-string v2, "TimeToDestination"

    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->timeToDest()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 654
    const-string v2, "TimeStamp"

    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->timeStamp()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 656
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v2}, Lcom/waze/widget/StatusData;->getRoutingRespnse()Lcom/waze/widget/routing/RoutingResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 658
    const-string v2, "TimesArray"

    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->getRoutingRespnse()Lcom/waze/widget/routing/RoutingResponse;

    move-result-object v3

    .line 659
    invoke-virtual {v3}, Lcom/waze/widget/routing/RoutingResponse;->toString()Ljava/lang/String;

    move-result-object v3

    .line 658
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Saving last Routing Reposne: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 661
    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->getRoutingRespnse()Lcom/waze/widget/routing/RoutingResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/widget/routing/RoutingResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 660
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last saved state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timestamp= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 663
    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->timeStamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 662
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 665
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 666
    return-void
.end method

.method public static setState(ILcom/waze/widget/StatusData;)V
    .locals 0
    .parameter "aStatusCode"
    .parameter "aStatusData"

    .prologue
    .line 165
    invoke-static {p0, p1}, Lcom/waze/widget/WazeAppWidgetService;->stateHandler(ILcom/waze/widget/StatusData;)V

    .line 174
    return-void
.end method

.method private static startNoDataActivity()V
    .locals 9

    .prologue
    .line 733
    const-string v4, "Request to show NO DATA Activity"

    invoke-static {v4}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 735
    sget-object v4, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    invoke-virtual {v4}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 737
    .local v1, ctx:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/waze/widget/WazeAppWidgetNoDataActivity;

    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 738
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1800

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 740
    const/4 v4, 0x0

    .line 741
    const/high16 v5, 0x4000

    .line 740
    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 743
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 742
    check-cast v0, Landroid/app/AlarmManager;

    .line 744
    .local v0, alarms:Landroid/app/AlarmManager;
    const/4 v4, 0x3

    .line 745
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x12c

    add-long/2addr v5, v7

    .line 744
    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 746
    return-void
.end method

.method private static startRefresh()V
    .locals 4

    .prologue
    .line 244
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mRefreshMonitor:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "startRefresh - Refresh timer is active - cancelling"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mRefreshMonitor:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 249
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/waze/widget/WazeAppWidgetService;->mRefreshMonitor:Ljava/util/Timer;

    .line 250
    const-string v0, "startRefresh timer"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mRefreshMonitor:Ljava/util/Timer;

    new-instance v1, Lcom/waze/widget/WazeAppWidgetService$1Task;

    invoke-direct {v1}, Lcom/waze/widget/WazeAppWidgetService$1Task;-><init>()V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 265
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    .line 266
    invoke-virtual {v0}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetProvider;->setRefreshingState(Landroid/content/Context;)V

    .line 267
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    invoke-virtual {v0}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetManager;->refreshHandler(Landroid/content/Context;)V

    .line 268
    return-void
.end method

.method private static stateHandler(ILcom/waze/widget/StatusData;)V
    .locals 7
    .parameter "aStatusCode"
    .parameter "aStatusData"

    .prologue
    const/16 v6, 0x8

    const/16 v5, 0x40

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 524
    if-eqz p1, :cond_0

    .line 525
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v2, p1}, Lcom/waze/widget/StatusData;->copy(Lcom/waze/widget/StatusData;)V

    .line 527
    :cond_0
    sget v2, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    packed-switch v2, :pswitch_data_0

    .line 638
    :cond_1
    :goto_0
    return-void

    .line 529
    :pswitch_0
    const-string v2, "STATE_NONE: "

    invoke-static {v2, p0}, Lcom/waze/widget/WazeAppWidgetService;->printDbg(Ljava/lang/String;I)V

    .line 532
    if-ne p0, v6, :cond_2

    .line 533
    sput v3, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 534
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->startRefresh()V

    goto :goto_0

    .line 537
    :cond_2
    sput v3, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 538
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->startRefresh()V

    goto :goto_0

    .line 545
    :pswitch_1
    const-string v2, "STATE_NO_DATA: "

    invoke-static {v2, p0}, Lcom/waze/widget/WazeAppWidgetService;->printDbg(Ljava/lang/String;I)V

    .line 546
    const/16 v2, 0x20

    if-ne p0, v2, :cond_3

    .line 547
    sput v3, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 548
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->startRefresh()V

    .line 550
    :cond_3
    if-ne p0, v5, :cond_1

    .line 551
    sput v4, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 552
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->startRefresh()V

    goto :goto_0

    .line 558
    :pswitch_2
    const-string v2, "STATE_CURRENT_DATA_UPTODATE: "

    invoke-static {v2, p0}, Lcom/waze/widget/WazeAppWidgetService;->printDbg(Ljava/lang/String;I)V

    .line 559
    if-ne p0, v6, :cond_4

    .line 561
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    invoke-virtual {v2}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 562
    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->destination()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v4}, Lcom/waze/widget/StatusData;->timeToDest()I

    move-result v4

    .line 563
    sget-object v5, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v5}, Lcom/waze/widget/StatusData;->score()Lcom/waze/widget/routing/RouteScoreType;

    move-result-object v5

    .line 560
    invoke-static {v2, v3, v4, v5}, Lcom/waze/widget/WazeAppWidgetProvider;->setUptodateState(Landroid/content/Context;Ljava/lang/String;ILcom/waze/widget/routing/RouteScoreType;)V

    .line 565
    :cond_4
    const/16 v2, 0x10

    if-ne p0, v2, :cond_1

    .line 566
    const/4 v2, 0x3

    sput v2, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 567
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v4, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    .line 568
    invoke-virtual {v4}, Lcom/waze/widget/StatusData;->timeStamp()J

    move-result-wide v4

    .line 567
    sub-long/2addr v2, v4

    .line 568
    const-wide/32 v4, 0x6ddd00

    .line 567
    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 570
    .local v0, isOldData:Z
    :goto_1
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    invoke-virtual {v2}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 571
    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->destination()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v4}, Lcom/waze/widget/StatusData;->timeToDest()I

    move-result v4

    .line 569
    invoke-static {v2, v3, v4, v0}, Lcom/waze/widget/WazeAppWidgetProvider;->setNeedRefreshState(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 567
    .end local v0           #isOldData:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 578
    :pswitch_3
    const-string v2, "STATE_CURRENT_DATA_NEED_REFRESH: "

    invoke-static {v2, p0}, Lcom/waze/widget/WazeAppWidgetService;->printDbg(Ljava/lang/String;I)V

    .line 579
    const/16 v2, 0x20

    if-eq p0, v2, :cond_6

    .line 580
    if-ne p0, v5, :cond_1

    .line 581
    :cond_6
    sput v3, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 582
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->startRefresh()V

    goto/16 :goto_0

    .line 588
    :pswitch_4
    const-string v2, "STATE_REFRESHING: "

    invoke-static {v2, p0}, Lcom/waze/widget/WazeAppWidgetService;->printDbg(Ljava/lang/String;I)V

    .line 589
    if-ne p0, v0, :cond_7

    .line 590
    const/4 v2, 0x2

    sput v2, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 592
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    invoke-virtual {v2}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 593
    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->destination()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v4}, Lcom/waze/widget/StatusData;->timeToDest()I

    move-result v4

    .line 594
    sget-object v5, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v5}, Lcom/waze/widget/StatusData;->score()Lcom/waze/widget/routing/RouteScoreType;

    move-result-object v5

    .line 591
    invoke-static {v2, v3, v4, v5}, Lcom/waze/widget/WazeAppWidgetProvider;->setUptodateState(Landroid/content/Context;Ljava/lang/String;ILcom/waze/widget/routing/RouteScoreType;)V

    .line 595
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    if-eqz v2, :cond_1

    .line 596
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    invoke-direct {v2}, Lcom/waze/widget/WazeAppWidgetService;->saveState()V

    goto/16 :goto_0

    .line 600
    :cond_7
    const/high16 v2, 0x20

    if-eq p0, v2, :cond_8

    .line 601
    const/high16 v2, 0x10

    if-eq p0, v2, :cond_8

    .line 602
    const/high16 v2, 0x4

    if-ne p0, v2, :cond_9

    .line 603
    :cond_8
    sput v0, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 605
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    invoke-virtual {v2}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "No Data"

    .line 604
    invoke-static {v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setNoDataState(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 611
    :cond_9
    const/high16 v2, 0x8

    invoke-static {p0, v2}, Lcom/waze/widget/WazeAppWidgetService;->testStatus(II)Z

    move-result v2

    if-nez v2, :cond_a

    .line 612
    const/high16 v2, 0x2

    invoke-static {p0, v2}, Lcom/waze/widget/WazeAppWidgetService;->testStatus(II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 613
    :cond_a
    sget v2, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    if-ne v2, v4, :cond_c

    .line 614
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 615
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/waze/MainActivity;->IsRunning()Z

    move-result v2

    if-nez v2, :cond_c

    .line 616
    :cond_b
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->startNoDataActivity()V

    .line 619
    .end local v1           #mainActivity:Lcom/waze/MainActivity;
    :cond_c
    sput v0, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 620
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    invoke-virtual {v2}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 621
    sget-object v3, Lcom/waze/widget/WazeAppWidgetService;->mStatusData:Lcom/waze/widget/StatusData;

    invoke-virtual {v3}, Lcom/waze/widget/StatusData;->destination()Ljava/lang/String;

    move-result-object v3

    .line 620
    invoke-static {v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setNoDataState(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 624
    :cond_d
    if-ne p0, v5, :cond_e

    .line 625
    sput v4, Lcom/waze/widget/WazeAppWidgetService;->mWidgetState:I

    .line 626
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->startRefresh()V

    .line 630
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal status for STATE_REFRESHING: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 630
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static stopRefreshMonitor()V
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mRefreshMonitor:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "stopRefreshMonitor - Refresh timer is active - cancelling"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mRefreshMonitor:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 281
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/widget/WazeAppWidgetService;->mRefreshMonitor:Ljava/util/Timer;

    .line 283
    :cond_0
    return-void
.end method

.method private static testStatus(II)Z
    .locals 1
    .parameter "aLhs"
    .parameter "aRhs"

    .prologue
    .line 771
    and-int v0, p0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCmdHandler()V
    .locals 5

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 361
    const-string v3, "Home"

    .line 360
    invoke-static {v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setNoDataState(Landroid/content/Context;Ljava/lang/String;)V

    .line 362
    const-string v2, "Update command handler"

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    const-string v2, "SD Card is available. Setting state to the STATUS_NEW_WIDGET."

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 369
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mSDCardChecker:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 372
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    sput-object v2, Lcom/waze/widget/WazeAppWidgetService;->mSDCardChecker:Ljava/util/Timer;

    .line 373
    new-instance v1, Lcom/waze/widget/WazeAppWidgetService$3;

    invoke-direct {v1, p0, v0}, Lcom/waze/widget/WazeAppWidgetService$3;-><init>(Lcom/waze/widget/WazeAppWidgetService;Ljava/io/File;)V

    .line 390
    .local v1, task:Ljava/util/TimerTask;
    sget-object v2, Lcom/waze/widget/WazeAppWidgetService;->mSDCardChecker:Ljava/util/Timer;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Widget service instance is created: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 62
    sput-object p0, Lcom/waze/widget/WazeAppWidgetService;->mInstance:Lcom/waze/widget/WazeAppWidgetService;

    .line 63
    invoke-virtual {p0}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/waze/widget/WazeAppWidgetService;->mApplicationContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/waze/widget/WazeAppWidgetService;->loadState()V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Widget service instance is destroyed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 143
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 144
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .parameter "aIntent"
    .parameter "aStartId"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 77
    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Widget service instance is started. Intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, command:Ljava/lang/String;
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 89
    invoke-static {p0}, Lcom/waze/widget/WidgetManager;->init(Landroid/app/Service;)V

    .line 94
    const-string v1, "AppWidget Action Command Enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    invoke-direct {p0}, Lcom/waze/widget/WazeAppWidgetService;->enableCmdHandler()V

    .line 97
    :cond_2
    const-string v1, "AppWidget Action Command Update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    invoke-direct {p0}, Lcom/waze/widget/WazeAppWidgetService;->updateCmdHandler()V

    .line 100
    :cond_3
    const-string v1, "AppWidget Action Command Refresh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    const-string v1, "WIDGET_CLICK"

    .line 102
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ACTION"

    aput-object v3, v2, v5

    const-string v3, "REFRESH"

    aput-object v3, v2, v4

    .line 101
    invoke-static {p0, v1, v2}, Lcom/waze/utils/OfflineStats;->SendStats(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, v5}, Lcom/waze/widget/WazeAppWidgetService;->refreshCmdHandler(Z)V

    .line 105
    :cond_4
    const-string v1, "AppWidget Action Command Refresh Info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    const-string v1, "WIDGET_CLICK"

    .line 107
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ACTION"

    aput-object v3, v2, v5

    const-string v3, "REFRESH_INFO"

    aput-object v3, v2, v4

    .line 106
    invoke-static {p0, v1, v2}, Lcom/waze/utils/OfflineStats;->SendStats(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 108
    const-string v1, "APPWIDGET_ACTION_CMD_REFRESH_INFO command"

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v4}, Lcom/waze/widget/WazeAppWidgetService;->refreshCmdHandler(Z)V

    .line 112
    :cond_5
    const-string v1, "AppWidget Action Command No Data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 113
    invoke-static {}, Lcom/waze/widget/WidgetManager;->hasHomeOrWork()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 114
    invoke-direct {p0, v4}, Lcom/waze/widget/WazeAppWidgetService;->refreshCmdHandler(Z)V

    .line 119
    :cond_6
    :goto_1
    const-string v1, "AppWidget Action Command Refresh Test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 120
    invoke-direct {p0}, Lcom/waze/widget/WazeAppWidgetService;->refreshTestCmdHandler()V

    .line 122
    :cond_7
    const-string v1, "AppWidget Action Command Drive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 123
    const-string v1, "WIDGET_CLICK"

    .line 124
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ACTION"

    aput-object v3, v2, v5

    const-string v3, "DRIVE"

    aput-object v3, v2, v4

    .line 123
    invoke-static {p0, v1, v2}, Lcom/waze/utils/OfflineStats;->SendStats(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/waze/widget/WazeAppWidgetService;->driveCmdHandler()V

    .line 127
    :cond_8
    const-string v1, "AppWidget Action Command Graph"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 128
    const-string v1, "WIDGET_CLICK"

    .line 129
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ACTION"

    aput-object v3, v2, v5

    const-string v3, "GRAPH"

    aput-object v3, v2, v4

    .line 128
    invoke-static {p0, v1, v2}, Lcom/waze/utils/OfflineStats;->SendStats(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/waze/widget/WazeAppWidgetService;->graphCmdHandler()V

    .line 132
    :cond_9
    const-string v1, "AppWidget Action Command None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    const-string v1, "AppWidget Action Command Force Refresh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/waze/widget/WazeAppWidgetService;->forceRefreshCmdHandler()V

    goto/16 :goto_0

    .line 116
    :cond_a
    invoke-direct {p0}, Lcom/waze/widget/WazeAppWidgetService;->noDataCmdHandler()V

    goto :goto_1
.end method
