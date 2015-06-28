.class Lcom/waze/mywaze/MyWazeNativeManager$18;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->onLoginFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$18;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$18;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #getter for: Lcom/waze/mywaze/MyWazeNativeManager;->pendingLogin:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$32(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$18;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #getter for: Lcom/waze/mywaze/MyWazeNativeManager;->pendingLogin:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$32(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;->onLogin(Z)V

    .line 524
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$18;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    const/4 v1, 0x0

    #setter for: Lcom/waze/mywaze/MyWazeNativeManager;->pendingLogin:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
    invoke-static {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$33(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V

    .line 526
    :cond_0
    return-void
.end method
