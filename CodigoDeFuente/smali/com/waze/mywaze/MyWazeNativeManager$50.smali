.class Lcom/waze/mywaze/MyWazeNativeManager$50;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->refreshFacebookConnection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$connected:Z


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$50;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-boolean p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$50;->val$connected:Z

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$50;->val$connected:Z

    invoke-static {v0}, Lcom/waze/mywaze/social/FacebookActivity;->refreshStatus(Z)V

    .line 990
    return-void
.end method
