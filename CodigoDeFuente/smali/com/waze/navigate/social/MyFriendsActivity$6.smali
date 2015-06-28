.class Lcom/waze/navigate/social/MyFriendsActivity$6;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity;->readSharedDriveUsers()V
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
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$6;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/FriendsListData;)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 350
    iget-object v3, p0, Lcom/waze/navigate/social/MyFriendsActivity$6;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    iput-object p1, v3, Lcom/waze/navigate/social/MyFriendsActivity;->mSharedDriveUsers:Lcom/waze/navigate/social/FriendsListData;

    .line 351
    iget-object v3, p0, Lcom/waze/navigate/social/MyFriendsActivity$6;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    #setter for: Lcom/waze/navigate/social/MyFriendsActivity;->mIdsAlreadyInSharedDrive:Landroid/util/SparseBooleanArray;
    invoke-static {v3, v4}, Lcom/waze/navigate/social/MyFriendsActivity;->access$17(Lcom/waze/navigate/social/MyFriendsActivity;Landroid/util/SparseBooleanArray;)V

    .line 352
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/waze/navigate/social/MyFriendsActivity$6;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    .line 355
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$6;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v4}, Lcom/waze/navigate/social/MyFriendsActivity;->access$2(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v4

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_NOW_SHARING_PD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 356
    iget-object v6, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 354
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v3, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v4, v3

    :goto_0
    if-lt v2, v4, :cond_1

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/waze/navigate/social/MyFriendsActivity$6;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #calls: Lcom/waze/navigate/social/MyFriendsActivity;->readFriendListData()V
    invoke-static {v2}, Lcom/waze/navigate/social/MyFriendsActivity;->access$18(Lcom/waze/navigate/social/MyFriendsActivity;)V

    .line 375
    return-void

    .line 359
    :cond_1
    aget-object v0, v3, v2

    .line 360
    .local v0, fud:Lcom/waze/user/FriendUserData;
    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity$6;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mIdsAlreadyInSharedDrive:Landroid/util/SparseBooleanArray;
    invoke-static {v5}, Lcom/waze/navigate/social/MyFriendsActivity;->access$15(Lcom/waze/navigate/social/MyFriendsActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v0}, Lcom/waze/user/FriendUserData;->getID()I

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 361
    iget v5, v0, Lcom/waze/user/FriendUserData;->mContactID:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 362
    iget v5, v0, Lcom/waze/user/FriendUserData;->mContactID:I

    invoke-static {v5}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v1

    .line 364
    .local v1, p:Lcom/waze/autocomplete/Person;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 365
    invoke-virtual {v1}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/waze/user/FriendUserData;->setImage(Ljava/lang/String;)V

    .line 369
    .end local v1           #p:Lcom/waze/autocomplete/Person;
    :cond_2
    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity$6;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
