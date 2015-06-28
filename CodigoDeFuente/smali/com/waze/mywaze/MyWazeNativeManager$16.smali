.class Lcom/waze/mywaze/MyWazeNativeManager$16;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->setSelectedGroup(Lcom/waze/mywaze/Group;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$group:Lcom/waze/mywaze/Group;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/Group;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$16;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$16;->val$group:Lcom/waze/mywaze/Group;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$16;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$16;->val$group:Lcom/waze/mywaze/Group;

    iget-object v1, v1, Lcom/waze/mywaze/Group;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$16;->val$group:Lcom/waze/mywaze/Group;

    iget-object v2, v2, Lcom/waze/mywaze/Group;->icon:Ljava/lang/String;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->setSelectedGroupNTV(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager;->access$30(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void
.end method
