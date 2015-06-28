.class Lcom/waze/mywaze/MyWazeNativeManager$17;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->doLoginOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$allowPings:Z

.field private final synthetic val$nickname:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$17;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$17;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$17;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/mywaze/MyWazeNativeManager$17;->val$nickname:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/waze/mywaze/MyWazeNativeManager$17;->val$allowPings:Z

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 514
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$17;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$17;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$17;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$17;->val$nickname:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/waze/mywaze/MyWazeNativeManager$17;->val$allowPings:Z

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->doLoginOkNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/mywaze/MyWazeNativeManager;->access$31(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 515
    return-void
.end method
