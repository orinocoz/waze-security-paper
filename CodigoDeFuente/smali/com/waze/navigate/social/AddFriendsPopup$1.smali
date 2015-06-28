.class Lcom/waze/navigate/social/AddFriendsPopup$1;
.super Ljava/lang/Object;
.source "AddFriendsPopup.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFriendsPopup;->readFriendSuggestions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFriendsPopup;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFriendsPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsPopup$1;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/AddFriendsData;)V
    .locals 8
    .parameter "aData"

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v3, p0, Lcom/waze/navigate/social/AddFriendsPopup$1;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #setter for: Lcom/waze/navigate/social/AddFriendsPopup;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;
    invoke-static {v3, p1}, Lcom/waze/navigate/social/AddFriendsPopup;->access$0(Lcom/waze/navigate/social/AddFriendsPopup;Lcom/waze/navigate/social/AddFriendsData;)V

    .line 57
    iget-object v3, p0, Lcom/waze/navigate/social/AddFriendsPopup$1;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFriendsPopup;->access$1(Lcom/waze/navigate/social/AddFriendsPopup;)Lcom/waze/navigate/social/AddFriendsData;

    move-result-object v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    return-void

    .line 61
    :cond_1
    const/4 v1, 0x0

    .line 62
    .local v1, nShown:I
    iget-object v3, p0, Lcom/waze/navigate/social/AddFriendsPopup$1;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFriendsPopup;->access$1(Lcom/waze/navigate/social/AddFriendsPopup;)Lcom/waze/navigate/social/AddFriendsData;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    if-eqz v3, :cond_2

    .line 64
    iget-object v3, p0, Lcom/waze/navigate/social/AddFriendsPopup$1;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFriendsPopup;->access$1(Lcom/waze/navigate/social/AddFriendsPopup;)Lcom/waze/navigate/social/AddFriendsData;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    array-length v3, v3

    add-int/2addr v1, v3

    .line 66
    :cond_2
    iget-object v3, p0, Lcom/waze/navigate/social/AddFriendsPopup$1;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFriendsPopup;->access$1(Lcom/waze/navigate/social/AddFriendsPopup;)Lcom/waze/navigate/social/AddFriendsData;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/navigate/social/AddFriendsData;->WaitingForApprovalFriends:[Lcom/waze/user/FriendUserData;

    if-eqz v3, :cond_3

    .line 68
    iget-object v3, p0, Lcom/waze/navigate/social/AddFriendsPopup$1;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFriendsPopup;->access$1(Lcom/waze/navigate/social/AddFriendsPopup;)Lcom/waze/navigate/social/AddFriendsData;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/navigate/social/AddFriendsData;->WaitingForApprovalFriends:[Lcom/waze/user/FriendUserData;

    array-length v3, v3

    add-int/2addr v1, v3

    .line 71
    :cond_3
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 72
    const-string v4, "ADD_FRIENDS_POPUP_SHOWN"

    const-string v5, "VAUE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 71
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    iget-object v3, p0, Lcom/waze/navigate/social/AddFriendsPopup$1;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->mFriendsSuggestionLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFriendsPopup;->access$2(Lcom/waze/navigate/social/AddFriendsPopup;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 76
    iget-object v3, p0, Lcom/waze/navigate/social/AddFriendsPopup$1;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFriendsPopup;->access$1(Lcom/waze/navigate/social/AddFriendsPopup;)Lcom/waze/navigate/social/AddFriendsData;

    move-result-object v3

    iget-object v4, v3, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_4

    .line 79
    iget-object v3, p0, Lcom/waze/navigate/social/AddFriendsPopup$1;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFriendsPopup;->access$1(Lcom/waze/navigate/social/AddFriendsPopup;)Lcom/waze/navigate/social/AddFriendsData;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/navigate/social/AddFriendsData;->WaitingForApprovalFriends:[Lcom/waze/user/FriendUserData;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 80
    .local v0, friend:Lcom/waze/user/FriendUserData;
    iget-object v5, p0, Lcom/waze/navigate/social/AddFriendsPopup$1;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #calls: Lcom/waze/navigate/social/AddFriendsPopup;->AddFriendInLayout(Lcom/waze/user/FriendUserData;)V
    invoke-static {v5, v0}, Lcom/waze/navigate/social/AddFriendsPopup;->access$3(Lcom/waze/navigate/social/AddFriendsPopup;Lcom/waze/user/FriendUserData;)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    .end local v0           #friend:Lcom/waze/user/FriendUserData;
    :cond_4
    aget-object v0, v4, v3

    .line 77
    .restart local v0       #friend:Lcom/waze/user/FriendUserData;
    iget-object v6, p0, Lcom/waze/navigate/social/AddFriendsPopup$1;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #calls: Lcom/waze/navigate/social/AddFriendsPopup;->AddFriendInLayout(Lcom/waze/user/FriendUserData;)V
    invoke-static {v6, v0}, Lcom/waze/navigate/social/AddFriendsPopup;->access$3(Lcom/waze/navigate/social/AddFriendsPopup;Lcom/waze/user/FriendUserData;)V

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
