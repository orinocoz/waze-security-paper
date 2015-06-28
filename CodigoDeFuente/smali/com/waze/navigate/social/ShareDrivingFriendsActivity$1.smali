.class Lcom/waze/navigate/social/ShareDrivingFriendsActivity$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "ShareDrivingFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/social/ShareDrivingFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$1;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    .line 218
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$1;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->IsSetMeeting:Z
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$0(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$1;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    iget-object v1, v1, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->sMeeting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->setMeeting(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$1;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->IsSetMeeting:Z
    invoke-static {v0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$1(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Z)V

    .line 226
    :cond_0
    return-void
.end method
