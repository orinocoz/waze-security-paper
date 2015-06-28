.class Lcom/waze/install/InstallNativeManager$10;
.super Lcom/waze/ifs/async/RunnableCallback;
.source "InstallNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallNativeManager;->openWayToGo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/waze/ifs/async/RunnableCallback;-><init>(Ljava/util/concurrent/Executor;)V

    .line 1
    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 327
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openWayToGo callback running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public event()V
    .locals 6

    .prologue
    .line 319
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "openWayToGo event running in thread "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 321
    .local v0, currentActivity:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/waze/install/WayToGoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 323
    return-void
.end method
