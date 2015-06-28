.class Lcom/waze/mywaze/MyWazeNativeManager$32;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->SetallowPM(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$allow:Z


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$32;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-boolean p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$32;->val$allow:Z

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$32;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-boolean v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$32;->val$allow:Z

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->setAllowPMNTV(Z)V
    invoke-static {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$47(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    .line 748
    return-void
.end method
