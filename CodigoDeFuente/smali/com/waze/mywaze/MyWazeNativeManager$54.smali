.class Lcom/waze/mywaze/MyWazeNativeManager$54;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->twitterConnect(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$54;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$54;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$54;->val$password:Ljava/lang/String;

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$54;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$54;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$54;->val$password:Ljava/lang/String;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->twitterConnectNTV(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager;->access$60(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    return-void
.end method
