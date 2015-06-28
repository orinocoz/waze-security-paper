.class Lcom/waze/navigate/DriveToNativeManager$3;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getAddFriendsData(Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:Lcom/waze/navigate/social/AddFriendsData;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$3;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$3;->val$listener:Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;

    .line 215
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$3;->val$listener:Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$3;->data:Lcom/waze/navigate/social/AddFriendsData;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;->onComplete(Lcom/waze/navigate/social/AddFriendsData;)V

    .line 230
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$3;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getAddFriendsDataNTV()Lcom/waze/navigate/social/AddFriendsData;
    invoke-static {v1}, Lcom/waze/navigate/DriveToNativeManager;->access$2(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/navigate/social/AddFriendsData;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$3;->data:Lcom/waze/navigate/social/AddFriendsData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$3;->data:Lcom/waze/navigate/social/AddFriendsData;

    goto :goto_0
.end method
