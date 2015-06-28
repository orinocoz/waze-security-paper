.class Lcom/waze/mywaze/MyWazeNativeManager$51;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->facebookDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$51;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 998
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$51;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->facebookDisconnectNTV()V
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$57(Lcom/waze/mywaze/MyWazeNativeManager;)V

    .line 1000
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 1001
    const-string v1, "FACEBOOK_DISCONNECT"

    .line 1000
    invoke-virtual {v0, v1, v2, v2}, Lcom/waze/NativeManager;->logAnalytics(Ljava/lang/String;ZZ)V

    .line 1002
    return-void
.end method
