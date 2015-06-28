.class Lcom/waze/mywaze/MyWazeNativeManager$7;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterSettings(Lcom/waze/mywaze/MyWazeNativeManager$TwitterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field settings:Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;

.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$cb:Lcom/waze/mywaze/MyWazeNativeManager$TwitterCallback;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$TwitterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->val$cb:Lcom/waze/mywaze/MyWazeNativeManager$TwitterCallback;

    .line 334
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 349
    const-string v0, "WAZE"

    const-string v1, "getTwitterSettings - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->val$cb:Lcom/waze/mywaze/MyWazeNativeManager$TwitterCallback;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->settings:Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;

    invoke-interface {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager$TwitterCallback;->onTwitterSettings(Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;)V

    .line 351
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 338
    const-string v0, "WAZE"

    const-string v1, "getTwitterSettings - event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;

    invoke-direct {v0}, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;-><init>()V

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->settings:Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;

    .line 340
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->settings:Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterLoggedInNTV()Z
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$16(Lcom/waze/mywaze/MyWazeNativeManager;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;->loggedIn:Z

    .line 341
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->settings:Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterPostReportsNTV()Z
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$17(Lcom/waze/mywaze/MyWazeNativeManager;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;->postReports:Z

    .line 342
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->settings:Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterPostDrivingModeNTV()I
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$18(Lcom/waze/mywaze/MyWazeNativeManager;)I

    move-result v1

    iput v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;->postDriving:I

    .line 343
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->settings:Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterPostMunchingNTV()Z
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$19(Lcom/waze/mywaze/MyWazeNativeManager;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;->postMunching:Z

    .line 344
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->settings:Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$7;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterShowMunchingNTV()Z
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$20(Lcom/waze/mywaze/MyWazeNativeManager;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;->showMunching:Z

    .line 345
    return-void
.end method
