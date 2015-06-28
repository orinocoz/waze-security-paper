.class Lcom/waze/mywaze/MyWazeNativeManager$38;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->socialFriendsAddedOrRemoved()V
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
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$38;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 818
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$38;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, v1, Lcom/waze/mywaze/MyWazeNativeManager;->mFriendsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 821
    return-void

    .line 818
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;

    .line 819
    .local v0, listener:Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;
    invoke-interface {v0}, Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;->onFriendsChanged()V

    goto :goto_0
.end method
