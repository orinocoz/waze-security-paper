.class Lcom/waze/mywaze/MyWazeNativeManager$28;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->registerFailed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$bIsSuccess:Z


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$28;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-boolean p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$28;->val$bIsSuccess:Z

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 688
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$28;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #getter for: Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$43(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/profile/RegisterActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$28;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #getter for: Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$43(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/profile/RegisterActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/profile/RegisterActivity;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$28;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #getter for: Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$43(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/profile/RegisterActivity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$28;->val$bIsSuccess:Z

    invoke-virtual {v1, v2}, Lcom/waze/profile/RegisterActivity;->OnResponse(Z)V

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    instance-of v1, v1, Lcom/waze/mywaze/MyWazeNativeManager$ISetUserUpdateResult;

    if-eqz v1, :cond_2

    .line 692
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/mywaze/MyWazeNativeManager$ISetUserUpdateResult;

    .line 693
    .local v0, ifc:Lcom/waze/mywaze/MyWazeNativeManager$ISetUserUpdateResult;
    iget-boolean v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$28;->val$bIsSuccess:Z

    invoke-interface {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager$ISetUserUpdateResult;->SetUserUpdateResult(Z)V

    .line 695
    .end local v0           #ifc:Lcom/waze/mywaze/MyWazeNativeManager$ISetUserUpdateResult;
    :cond_2
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 696
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$28;->val$bIsSuccess:Z

    invoke-virtual {v1, v2}, Lcom/waze/MainActivity;->SetUserUpdateResult(Z)V

    goto :goto_0
.end method
