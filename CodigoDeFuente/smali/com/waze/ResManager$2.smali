.class Lcom/waze/ResManager$2;
.super Lcom/waze/ifs/async/RunnableCallback;
.source "ResManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ResManager;->downloadResCallback(Lcom/waze/DownloadResCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Lcom/waze/DownloadResCallback;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/waze/DownloadResCallback;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/waze/ResManager$2;->val$context:Lcom/waze/DownloadResCallback;

    .line 739
    invoke-direct {p0, p1}, Lcom/waze/ifs/async/RunnableCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 750
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadResCallback callback running in thread "

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

    .line 751
    return-void
.end method

.method public event()V
    .locals 4

    .prologue
    .line 742
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadResCallback event running in thread "

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

    .line 743
    iget-object v0, p0, Lcom/waze/ResManager$2;->val$context:Lcom/waze/DownloadResCallback;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/waze/ResManager$2;->val$context:Lcom/waze/DownloadResCallback;

    invoke-interface {v0}, Lcom/waze/DownloadResCallback;->downloadResCallback()V

    .line 746
    :cond_0
    return-void
.end method
