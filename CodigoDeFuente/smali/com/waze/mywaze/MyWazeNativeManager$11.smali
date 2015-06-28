.class Lcom/waze/mywaze/MyWazeNativeManager$11;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->getGroups(Lcom/waze/mywaze/MyWazeNativeManager$GetGroupsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field groups:[Lcom/waze/mywaze/Group;

.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$listener:Lcom/waze/mywaze/MyWazeNativeManager$GetGroupsListener;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$GetGroupsListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$11;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$11;->val$listener:Lcom/waze/mywaze/MyWazeNativeManager$GetGroupsListener;

    .line 428
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$11;->val$listener:Lcom/waze/mywaze/MyWazeNativeManager$GetGroupsListener;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$11;->groups:[Lcom/waze/mywaze/Group;

    invoke-interface {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager$GetGroupsListener;->onComplete([Lcom/waze/mywaze/Group;)V

    .line 438
    return-void
.end method

.method public event()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$11;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getGroupsNTV()[Lcom/waze/mywaze/Group;
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$25(Lcom/waze/mywaze/MyWazeNativeManager;)[Lcom/waze/mywaze/Group;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$11;->groups:[Lcom/waze/mywaze/Group;

    .line 433
    return-void
.end method
