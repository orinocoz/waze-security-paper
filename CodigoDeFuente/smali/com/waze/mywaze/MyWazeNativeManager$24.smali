.class Lcom/waze/mywaze/MyWazeNativeManager$24;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->setVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$24;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$24;->val$value:I

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$24;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$24;->val$value:I

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->setUserVisibilityNTV(I)V
    invoke-static {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$39(Lcom/waze/mywaze/MyWazeNativeManager;I)V

    .line 639
    return-void
.end method
