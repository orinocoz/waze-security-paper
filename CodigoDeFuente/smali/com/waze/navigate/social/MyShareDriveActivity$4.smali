.class Lcom/waze/navigate/social/MyShareDriveActivity$4;
.super Ljava/lang/Object;
.source "MyShareDriveActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyShareDriveActivity;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyShareDriveActivity$4;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/FriendsListData;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 164
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$4;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #setter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsListData:Lcom/waze/navigate/social/FriendsListData;
    invoke-static {v2, p1}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$5(Lcom/waze/navigate/social/MyShareDriveActivity;Lcom/waze/navigate/social/FriendsListData;)V

    .line 166
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$4;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$6(Lcom/waze/navigate/social/MyShareDriveActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 167
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$4;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$7(Lcom/waze/navigate/social/MyShareDriveActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 169
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$4;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsListData:Lcom/waze/navigate/social/FriendsListData;
    invoke-static {v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$8(Lcom/waze/navigate/social/MyShareDriveActivity;)Lcom/waze/navigate/social/FriendsListData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$4;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsListData:Lcom/waze/navigate/social/FriendsListData;
    invoke-static {v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$8(Lcom/waze/navigate/social/MyShareDriveActivity;)Lcom/waze/navigate/social/FriendsListData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$4;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsListData:Lcom/waze/navigate/social/FriendsListData;
    invoke-static {v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$8(Lcom/waze/navigate/social/MyShareDriveActivity;)Lcom/waze/navigate/social/FriendsListData;

    move-result-object v2

    iget-object v3, v2, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_2

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$4;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #calls: Lcom/waze/navigate/social/MyShareDriveActivity;->friendsListPopulateFriends()V
    invoke-static {v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$9(Lcom/waze/navigate/social/MyShareDriveActivity;)V

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$4;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #calls: Lcom/waze/navigate/social/MyShareDriveActivity;->addAddMoreFriends()V
    invoke-static {v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$10(Lcom/waze/navigate/social/MyShareDriveActivity;)V

    .line 189
    return-void

    .line 173
    :cond_2
    aget-object v0, v3, v2

    .line 174
    .local v0, fud:Lcom/waze/user/FriendUserData;
    iget v5, v0, Lcom/waze/user/FriendUserData;->mContactID:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 175
    iget v5, v0, Lcom/waze/user/FriendUserData;->mContactID:I

    invoke-static {v5}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v1

    .line 177
    .local v1, mPerson:Lcom/waze/autocomplete/Person;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 178
    invoke-virtual {v1}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/waze/user/FriendUserData;->setImage(Ljava/lang/String;)V

    .line 182
    .end local v1           #mPerson:Lcom/waze/autocomplete/Person;
    :cond_3
    iget-object v5, p0, Lcom/waze/navigate/social/MyShareDriveActivity$4;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$6(Lcom/waze/navigate/social/MyShareDriveActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
