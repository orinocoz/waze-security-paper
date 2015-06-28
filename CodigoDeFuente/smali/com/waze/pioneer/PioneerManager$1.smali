.class Lcom/waze/pioneer/PioneerManager$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "PioneerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/pioneer/PioneerManager;->create()Lcom/waze/pioneer/PioneerManager;
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
    .line 56
    invoke-direct {p0, p1}, Lcom/waze/ifs/async/RunnableExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 1
    return-void
.end method


# virtual methods
.method public event()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/waze/pioneer/PioneerManager;->start()V

    .line 60
    return-void
.end method
