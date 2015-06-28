.class Lcom/waze/navigate/social/MyFriendsActivity$7;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity;->readFriendSuggestions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$7;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/AddFriendsData;)V
    .locals 6
    .parameter "aData"

    .prologue
    .line 384
    iget-object v2, p0, Lcom/waze/navigate/social/MyFriendsActivity$7;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    iput-object p1, v2, Lcom/waze/navigate/social/MyFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    .line 387
    iget-object v2, p0, Lcom/waze/navigate/social/MyFriendsActivity$7;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    iget-object v2, v2, Lcom/waze/navigate/social/MyFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    iget-object v2, v2, Lcom/waze/navigate/social/AddFriendsData;->WaitingForApprovalFriends:[Lcom/waze/user/FriendUserData;

    array-length v1, v2

    .line 388
    .local v1, numWaitingMyApproval:I
    if-lez v1, :cond_0

    .line 389
    iget-object v2, p0, Lcom/waze/navigate/social/MyFriendsActivity$7;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/navigate/social/MyFriendsActivity$7;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v3}, Lcom/waze/navigate/social/MyFriendsActivity;->access$2(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v3

    .line 390
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_WAITING_FOR_MY_APPROVAL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v2, p0, Lcom/waze/navigate/social/MyFriendsActivity$7;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    iget-object v2, v2, Lcom/waze/navigate/social/MyFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    iget-object v3, v2, Lcom/waze/navigate/social/AddFriendsData;->WaitingForApprovalFriends:[Lcom/waze/user/FriendUserData;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/waze/navigate/social/MyFriendsActivity$7;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #calls: Lcom/waze/navigate/social/MyFriendsActivity;->readSharedDriveUsers()V
    invoke-static {v2}, Lcom/waze/navigate/social/MyFriendsActivity;->access$19(Lcom/waze/navigate/social/MyFriendsActivity;)V

    .line 396
    return-void

    .line 391
    :cond_1
    aget-object v0, v3, v2

    .line 392
    .local v0, fud:Lcom/waze/user/FriendUserData;
    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity$7;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
