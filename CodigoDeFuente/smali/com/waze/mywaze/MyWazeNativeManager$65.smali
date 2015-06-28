.class Lcom/waze/mywaze/MyWazeNativeManager$65;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->foursquareSetTweetBadge(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$mode:Z


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$65;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-boolean p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$65;->val$mode:Z

    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$65;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-boolean v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$65;->val$mode:Z

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->foursquareSetTweetBadgeNTV(Z)V
    invoke-static {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$69(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    .line 1138
    return-void
.end method
