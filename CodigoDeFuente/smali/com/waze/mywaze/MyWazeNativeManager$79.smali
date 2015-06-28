.class Lcom/waze/mywaze/MyWazeNativeManager$79;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->setContactsSignIn(ZZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$IsConnectOnly:Z

.field private final synthetic val$LastName:Ljava/lang/String;

.field private final synthetic val$bIsForce:Z

.field private final synthetic val$firstName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$79;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-boolean p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$79;->val$bIsForce:Z

    iput-boolean p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$79;->val$IsConnectOnly:Z

    iput-object p4, p0, Lcom/waze/mywaze/MyWazeNativeManager$79;->val$firstName:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/mywaze/MyWazeNativeManager$79;->val$LastName:Ljava/lang/String;

    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$79;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-boolean v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$79;->val$bIsForce:Z

    iget-boolean v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$79;->val$IsConnectOnly:Z

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$79;->val$firstName:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/mywaze/MyWazeNativeManager$79;->val$LastName:Ljava/lang/String;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->setContactSignInNTV(ZZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/mywaze/MyWazeNativeManager;->access$78(Lcom/waze/mywaze/MyWazeNativeManager;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 1274
    return-void
.end method
