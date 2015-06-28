.class Lcom/waze/mywaze/MyWazeNativeManager$12;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->getUserCar(Lcom/waze/mywaze/MyWazeNativeManager$UserCarCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field selection:Ljava/lang/String;

.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$cb:Lcom/waze/mywaze/MyWazeNativeManager$UserCarCallback;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$UserCarCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$12;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$12;->val$cb:Lcom/waze/mywaze/MyWazeNativeManager$UserCarCallback;

    .line 448
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$12;->val$cb:Lcom/waze/mywaze/MyWazeNativeManager$UserCarCallback;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$12;->selection:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager$UserCarCallback;->onUserCar(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public event()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$12;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getUserCarNTV()Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$26(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$12;->selection:Ljava/lang/String;

    .line 454
    return-void
.end method
