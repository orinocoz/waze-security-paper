.class Lcom/waze/mywaze/MyWazeNativeManager$29;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->openWelcome()V
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
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$29;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$29;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #getter for: Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$43(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/profile/RegisterActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$29;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #getter for: Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$43(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/profile/RegisterActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/profile/RegisterActivity;->openWelcome()V

    .line 717
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$29;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    const/4 v1, 0x0

    #setter for: Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;
    invoke-static {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$44(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/profile/RegisterActivity;)V

    .line 719
    :cond_0
    return-void
.end method
