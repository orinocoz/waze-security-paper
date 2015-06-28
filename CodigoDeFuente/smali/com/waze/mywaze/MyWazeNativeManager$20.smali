.class Lcom/waze/mywaze/MyWazeNativeManager$20;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$nickname:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$20;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$20;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$20;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/mywaze/MyWazeNativeManager$20;->val$nickname:Ljava/lang/String;

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 550
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$20;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$20;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$20;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$20;->val$nickname:Ljava/lang/String;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->doLoginNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/mywaze/MyWazeNativeManager;->access$34(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method
