.class Lcom/waze/mywaze/MyWazeNativeManager$22;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->getPrivacySettings(Lcom/waze/mywaze/MyWazeNativeManager$PrivacyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field settings:Lcom/waze/mywaze/MyWazeNativeManager$PrivacySettings;

.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$cb:Lcom/waze/mywaze/MyWazeNativeManager$PrivacyCallback;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$PrivacyCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$22;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$22;->val$cb:Lcom/waze/mywaze/MyWazeNativeManager$PrivacyCallback;

    .line 591
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 603
    const-string v0, "WAZE"

    const-string v1, "ProfileSettings - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$22;->val$cb:Lcom/waze/mywaze/MyWazeNativeManager$PrivacyCallback;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$22;->settings:Lcom/waze/mywaze/MyWazeNativeManager$PrivacySettings;

    invoke-interface {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager$PrivacyCallback;->onPrivacySettings(Lcom/waze/mywaze/MyWazeNativeManager$PrivacySettings;)V

    .line 605
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 595
    const-string v0, "WAZE"

    const-string v1, "PrivacySettings - event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$PrivacySettings;

    invoke-direct {v0}, Lcom/waze/mywaze/MyWazeNativeManager$PrivacySettings;-><init>()V

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$22;->settings:Lcom/waze/mywaze/MyWazeNativeManager$PrivacySettings;

    .line 597
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$22;->settings:Lcom/waze/mywaze/MyWazeNativeManager$PrivacySettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$22;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getUserVisibilityNTV()I
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$36(Lcom/waze/mywaze/MyWazeNativeManager;)I

    move-result v1

    iput v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$PrivacySettings;->visibility:I

    .line 598
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$22;->settings:Lcom/waze/mywaze/MyWazeNativeManager$PrivacySettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$22;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterShowProfNTV()I
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$37(Lcom/waze/mywaze/MyWazeNativeManager;)I

    move-result v1

    iput v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$PrivacySettings;->twitterShowProf:I

    .line 599
    return-void
.end method
