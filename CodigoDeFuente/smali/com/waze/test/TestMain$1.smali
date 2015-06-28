.class Lcom/waze/test/TestMain$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "TestMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/test/TestMain;->scheduleStart()V
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
    .line 14
    invoke-direct {p0, p1}, Lcom/waze/ifs/async/RunnableExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 1
    return-void
.end method


# virtual methods
.method public event()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/waze/AppService;->isFirstRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/waze/test/TestMain;->start()V

    .line 19
    :cond_0
    return-void
.end method
