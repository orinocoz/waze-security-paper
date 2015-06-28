.class Lcom/waze/navigate/DriveToNativeManager$5;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getNumberOfFriendsDriving(Lcom/waze/navigate/DriveToNativeManager$NumberOfFriendsDrivingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private nFriends:I

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$NumberOfFriendsDrivingListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$NumberOfFriendsDrivingListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$5;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$5;->val$listener:Lcom/waze/navigate/DriveToNativeManager$NumberOfFriendsDrivingListener;

    .line 404
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$5;->val$listener:Lcom/waze/navigate/DriveToNativeManager$NumberOfFriendsDrivingListener;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$5;->nFriends:I

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$NumberOfFriendsDrivingListener;->onComplete(I)V

    .line 419
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$5;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getNumberOfFriendsDrivingNTV()I
    invoke-static {v1}, Lcom/waze/navigate/DriveToNativeManager;->access$4(Lcom/waze/navigate/DriveToNativeManager;)I

    move-result v1

    iput v1, p0, Lcom/waze/navigate/DriveToNativeManager$5;->nFriends:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    iput v1, p0, Lcom/waze/navigate/DriveToNativeManager$5;->nFriends:I

    goto :goto_0
.end method
