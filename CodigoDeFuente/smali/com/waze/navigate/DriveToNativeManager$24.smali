.class Lcom/waze/navigate/DriveToNativeManager$24;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/navigate/DriveToSearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field rc:I

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$callback:Lcom/waze/navigate/DriveToSearchCallback;

.field private final synthetic val$category:Ljava/lang/String;

.field private final synthetic val$initialSearch:Z

.field private final synthetic val$provider:Ljava/lang/String;

.field private final synthetic val$searchStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/DriveToSearchCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$24;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-boolean p2, p0, Lcom/waze/navigate/DriveToNativeManager$24;->val$initialSearch:Z

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$24;->val$category:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/navigate/DriveToNativeManager$24;->val$provider:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/navigate/DriveToNativeManager$24;->val$searchStr:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/navigate/DriveToNativeManager$24;->val$callback:Lcom/waze/navigate/DriveToSearchCallback;

    .line 821
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 834
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "search callback running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 835
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 834
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$24;->val$callback:Lcom/waze/navigate/DriveToSearchCallback;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$24;->val$callback:Lcom/waze/navigate/DriveToSearchCallback;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$24;->rc:I

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToSearchCallback;->searchCallback(I)V

    .line 838
    :cond_0
    return-void
.end method

.method public event()V
    .locals 5

    .prologue
    .line 826
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "search event running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 827
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 826
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$24;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-boolean v1, p0, Lcom/waze/navigate/DriveToNativeManager$24;->val$initialSearch:Z

    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$24;->val$category:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/navigate/DriveToNativeManager$24;->val$provider:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/navigate/DriveToNativeManager$24;->val$searchStr:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->searchNTV(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->access$23(Lcom/waze/navigate/DriveToNativeManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/waze/navigate/DriveToNativeManager$24;->rc:I

    .line 829
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "search rc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/waze/navigate/DriveToNativeManager$24;->rc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return-void
.end method
