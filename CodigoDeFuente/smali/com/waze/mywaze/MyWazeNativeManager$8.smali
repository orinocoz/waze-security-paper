.class Lcom/waze/mywaze/MyWazeNativeManager$8;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->getFoursquareSettings(Lcom/waze/mywaze/MyWazeNativeManager$FoursquareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field settings:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;

.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$cb:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareCallback;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$FoursquareCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$8;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$8;->val$cb:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareCallback;

    .line 370
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "WAZE"

    const-string v1, "getFoursquareSettings - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$8;->val$cb:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareCallback;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$8;->settings:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;

    invoke-interface {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareCallback;->onFoursquareSettings(Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;)V

    .line 386
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 374
    const-string v0, "WAZE"

    const-string v1, "getFoursquareSettings - event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;

    invoke-direct {v0}, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;-><init>()V

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$8;->settings:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;

    .line 376
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$8;->settings:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$8;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getFoursquareLoggedInNTV()Z
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$21(Lcom/waze/mywaze/MyWazeNativeManager;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;->loggedIn:Z

    .line 377
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$8;->settings:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$8;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getFoursquareEnableTweetLoginNTV()Z
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$22(Lcom/waze/mywaze/MyWazeNativeManager;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;->enableTweetLogin:Z

    .line 378
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$8;->settings:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$8;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getFoursquareEnableTweetBadgeNTV()Z
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$23(Lcom/waze/mywaze/MyWazeNativeManager;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;->enableTweetBadge:Z

    .line 379
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$8;->settings:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;->checkInAfterLogin:Z

    .line 380
    return-void
.end method
