.class Lcom/waze/mywaze/MyWazeNativeManager$4;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field settings:Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;

.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$cb:Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$4;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$4;->val$cb:Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;

    .line 210
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "WAZE"

    const-string v1, "getFacebookSettings - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$4;->val$cb:Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$4;->settings:Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;

    invoke-interface {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;->onFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;)V

    .line 222
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "WAZE"

    const-string v1, "getFacebookSettings - event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$4;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookSettings()Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$5(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$4;->settings:Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;

    .line 216
    return-void
.end method
