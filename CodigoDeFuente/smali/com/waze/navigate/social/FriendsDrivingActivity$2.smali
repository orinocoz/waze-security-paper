.class Lcom/waze/navigate/social/FriendsDrivingActivity$2;
.super Ljava/lang/Object;
.source "FriendsDrivingActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/FriendsDrivingActivity;->readFriend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/FriendsDrivingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$2;->this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/EndDriveData;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 122
    iget-object v2, p1, Lcom/waze/navigate/social/EndDriveData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 125
    return-void

    .line 122
    :cond_0
    aget-object v0, v2, v1

    .line 123
    .local v0, fud:Lcom/waze/user/FriendUserData;
    iget-object v4, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$2;->this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;

    #calls: Lcom/waze/navigate/social/FriendsDrivingActivity;->AddFriend(Lcom/waze/user/FriendUserData;)V
    invoke-static {v4, v0}, Lcom/waze/navigate/social/FriendsDrivingActivity;->access$0(Lcom/waze/navigate/social/FriendsDrivingActivity;Lcom/waze/user/FriendUserData;)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
