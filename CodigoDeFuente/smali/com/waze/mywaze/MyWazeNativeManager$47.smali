.class Lcom/waze/mywaze/MyWazeNativeManager$47;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->skipSignup()V
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
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$47;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$47;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->skipSignupNTV()V
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$55(Lcom/waze/mywaze/MyWazeNativeManager;)V

    .line 914
    return-void
.end method
