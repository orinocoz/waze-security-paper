.class Lcom/waze/NativeManager$1;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$1;->this$0:Lcom/waze/NativeManager;

    .line 3616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3620
    iget-object v1, p0, Lcom/waze/NativeManager$1;->this$0:Lcom/waze/NativeManager;

    new-instance v2, Lcom/waze/SessionTrafficStats;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/waze/SessionTrafficStats;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/waze/NativeManager;->mTrafficStats:Lcom/waze/SessionTrafficStats;

    .line 3622
    invoke-static {}, Lcom/waze/NativeManager;->access$0()Lcom/waze/utils/Stopwatch;

    move-result-object v1

    const-string v2, "START"

    invoke-virtual {v1, v2, v4}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 3623
    iget-object v1, p0, Lcom/waze/NativeManager$1;->this$0:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->InitNativeManager()V

    .line 3625
    const-string v1, "AppStartNTV"

    invoke-static {v1}, Lcom/waze/utils/Stopwatch;->create(Ljava/lang/String;)Lcom/waze/utils/Stopwatch;

    move-result-object v0

    .line 3626
    .local v0, sw:Lcom/waze/utils/Stopwatch;
    invoke-virtual {v0}, Lcom/waze/utils/Stopwatch;->start()V

    .line 3633
    invoke-static {}, Lcom/waze/MapView;->isOglDataInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3635
    iget-object v1, p0, Lcom/waze/NativeManager$1;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->waitOglData()V
    invoke-static {v1}, Lcom/waze/NativeManager;->access$1(Lcom/waze/NativeManager;)V

    .line 3638
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->access$2()Lcom/waze/NativeCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeCanvas;->CanvasConfigure()V

    .line 3640
    iget-object v1, p0, Lcom/waze/NativeManager$1;->this$0:Lcom/waze/NativeManager;

    invoke-static {}, Lcom/waze/AppService;->getUrl()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/waze/NativeManager;->AppStartNTV(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/waze/NativeManager;->access$3(Lcom/waze/NativeManager;Ljava/lang/String;)V

    .line 3642
    iget-object v1, p0, Lcom/waze/NativeManager$1;->this$0:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/waze/IntentManager;->HandleIntent(Landroid/app/Activity;Z)V

    .line 3644
    const-string v1, "AppStart TIME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 3647
    iget-object v1, p0, Lcom/waze/NativeManager$1;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->WarnGpsDisabled()V
    invoke-static {v1}, Lcom/waze/NativeManager;->access$4(Lcom/waze/NativeManager;)V

    .line 3650
    iget-object v1, p0, Lcom/waze/NativeManager$1;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->postOnAppStartedEvents()V
    invoke-static {v1}, Lcom/waze/NativeManager;->access$5(Lcom/waze/NativeManager;)V

    .line 3652
    invoke-static {}, Lcom/waze/NativeManager;->access$0()Lcom/waze/utils/Stopwatch;

    move-result-object v1

    const-string v2, "START ENDED"

    invoke-virtual {v1, v2, v4}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 3654
    invoke-static {v4}, Lcom/waze/NativeManager;->access$6(Z)V

    .line 3658
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3659
    and-int/lit8 v2, v2, 0x2

    .line 3658
    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_1

    .line 3661
    iget-object v1, p0, Lcom/waze/NativeManager$1;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->runTests()V
    invoke-static {v1}, Lcom/waze/NativeManager;->access$7(Lcom/waze/NativeManager;)V

    .line 3663
    :cond_1
    return-void
.end method
