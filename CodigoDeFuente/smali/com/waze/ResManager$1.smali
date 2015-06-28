.class Lcom/waze/ResManager$1;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "ResManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ResManager;->downloadRes(ILjava/lang/String;Lcom/waze/DownloadResCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/waze/DownloadResCallback;

.field private final synthetic val$res:Ljava/lang/String;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/waze/DownloadResCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput p1, p0, Lcom/waze/ResManager$1;->val$type:I

    iput-object p2, p0, Lcom/waze/ResManager$1;->val$res:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/ResManager$1;->val$cb:Lcom/waze/DownloadResCallback;

    .line 721
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 730
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadRes callback running in thread "

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

    .line 731
    return-void
.end method

.method public event()V
    .locals 4

    .prologue
    .line 724
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadRes event running in thread "

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

    .line 725
    invoke-static {}, Lcom/waze/ResManager;->getInstance()Lcom/waze/ResManager;

    move-result-object v0

    iget v1, p0, Lcom/waze/ResManager$1;->val$type:I

    iget-object v2, p0, Lcom/waze/ResManager$1;->val$res:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/ResManager$1;->val$cb:Lcom/waze/DownloadResCallback;

    #calls: Lcom/waze/ResManager;->DownloadResNTV(ILjava/lang/String;Lcom/waze/DownloadResCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/ResManager;->access$0(Lcom/waze/ResManager;ILjava/lang/String;Lcom/waze/DownloadResCallback;)V

    .line 726
    return-void
.end method
