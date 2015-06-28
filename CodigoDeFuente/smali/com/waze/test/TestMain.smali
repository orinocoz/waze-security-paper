.class public final Lcom/waze/test/TestMain;
.super Ljava/lang/Object;
.source "TestMain.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scheduleStart()V
    .locals 2

    .prologue
    .line 13
    const/4 v1, 0x0

    .line 14
    .local v1, executor:Ljava/util/concurrent/Executor;
    new-instance v0, Lcom/waze/test/TestMain$1;

    invoke-direct {v0, v1}, Lcom/waze/test/TestMain$1;-><init>(Ljava/util/concurrent/Executor;)V

    .line 22
    .local v0, event:Lcom/waze/ifs/async/RunnableExecutor;
    invoke-static {v0}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 23
    return-void
.end method

.method public static start()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/waze/test/BgTest;->startPeriodicTest()V

    .line 28
    return-void
.end method
