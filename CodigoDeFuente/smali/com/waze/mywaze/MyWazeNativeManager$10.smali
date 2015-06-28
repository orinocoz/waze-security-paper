.class Lcom/waze/mywaze/MyWazeNativeManager$10;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->getActiveGroup(Lcom/waze/mywaze/MyWazeNativeManager$ActiveGroupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field group:Lcom/waze/mywaze/Group;

.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$listener:Lcom/waze/mywaze/MyWazeNativeManager$ActiveGroupListener;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$ActiveGroupListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$10;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$10;->val$listener:Lcom/waze/mywaze/MyWazeNativeManager$ActiveGroupListener;

    .line 413
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$10;->val$listener:Lcom/waze/mywaze/MyWazeNativeManager$ActiveGroupListener;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$10;->group:Lcom/waze/mywaze/Group;

    invoke-interface {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager$ActiveGroupListener;->onComplete(Lcom/waze/mywaze/Group;)V

    .line 423
    return-void
.end method

.method public event()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$10;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getActiveGroupNTV()Lcom/waze/mywaze/Group;
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$24(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/mywaze/Group;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$10;->group:Lcom/waze/mywaze/Group;

    .line 418
    return-void
.end method
