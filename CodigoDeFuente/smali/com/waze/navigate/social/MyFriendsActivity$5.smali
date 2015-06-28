.class Lcom/waze/navigate/social/MyFriendsActivity$5;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity;->readFriendListData()V
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
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/FriendsListData;)V
    .locals 16
    .parameter "aData"

    .prologue
    .line 247
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsListData:Lcom/waze/navigate/social/FriendsListData;

    .line 248
    const/4 v4, 0x0

    .line 250
    .local v4, numFriends:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    iget-object v8, v8, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsListData:Lcom/waze/navigate/social/FriendsListData;

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    iget-object v8, v8, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsListData:Lcom/waze/navigate/social/FriendsListData;

    iget-object v8, v8, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v8, v8

    if-lez v8, :cond_0

    .line 251
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    iget-object v8, v8, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsListData:Lcom/waze/navigate/social/FriendsListData;

    iget-object v8, v8, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    new-instance v9, Lcom/waze/navigate/social/MyFriendsActivity$5$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/waze/navigate/social/MyFriendsActivity$5$1;-><init>(Lcom/waze/navigate/social/MyFriendsActivity$5;)V

    invoke-static {v8, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, bPendingHeaderAdded:Z
    const/4 v2, 0x1

    .line 286
    .local v2, bShouldAddFriendsHeader:Z
    const/4 v7, -0x1

    .line 289
    .local v7, whereToPutNumFriends:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    iget-object v8, v8, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsListData:Lcom/waze/navigate/social/FriendsListData;

    iget-object v9, v8, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_2

    .line 319
    if-ltz v7, :cond_0

    .line 320
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    .line 321
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v9}, Lcom/waze/navigate/social/MyFriendsActivity;->access$2(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v9

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_ALL_FRIENDS_PD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 320
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 324
    .end local v1           #bPendingHeaderAdded:Z
    .end local v2           #bShouldAddFriendsHeader:Z
    .end local v7           #whereToPutNumFriends:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v8}, Lcom/waze/navigate/social/MyFriendsActivity;->access$2(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/waze/NativeManager;->getNumberOfFriendsToStopShowingFriendSuggestions()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 325
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    iget-object v8, v8, Lcom/waze/navigate/social/MyFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    if-eqz v8, :cond_1

    .line 327
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    iget-object v8, v8, Lcom/waze/navigate/social/MyFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    iget-object v8, v8, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    array-length v5, v8

    .line 328
    .local v5, numSuggestions:I
    if-lez v5, :cond_1

    .line 329
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v9}, Lcom/waze/navigate/social/MyFriendsActivity;->access$2(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v9

    .line 330
    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_WAZERS_YOU_MAY_KNOW_PD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 329
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    iget-object v8, v8, Lcom/waze/navigate/social/MyFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    iget-object v9, v8, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v10, :cond_8

    .line 338
    .end local v5           #numSuggestions:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #calls: Lcom/waze/navigate/social/MyFriendsActivity;->getAddressBookAndFriendsData()V
    invoke-static {v8}, Lcom/waze/navigate/social/MyFriendsActivity;->access$16(Lcom/waze/navigate/social/MyFriendsActivity;)V

    .line 339
    return-void

    .line 289
    .restart local v1       #bPendingHeaderAdded:Z
    .restart local v2       #bShouldAddFriendsHeader:Z
    .restart local v7       #whereToPutNumFriends:I
    :cond_2
    aget-object v3, v9, v8

    .line 290
    .local v3, fud:Lcom/waze/user/FriendUserData;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mIdsAlreadyInSharedDrive:Landroid/util/SparseBooleanArray;
    invoke-static {v11}, Lcom/waze/navigate/social/MyFriendsActivity;->access$15(Lcom/waze/navigate/social/MyFriendsActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v11

    invoke-virtual {v3}, Lcom/waze/user/FriendUserData;->getID()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 289
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 294
    :cond_3
    iget-boolean v11, v3, Lcom/waze/user/FriendUserData;->mIsPendingFriend:Z

    if-eqz v11, :cond_6

    .line 295
    if-nez v1, :cond_4

    .line 296
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v12}, Lcom/waze/navigate/social/MyFriendsActivity;->access$2(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v12

    .line 297
    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_PENDING_FRIENDS_APPROVAL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    .line 296
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    const/4 v1, 0x1

    .line 310
    :cond_4
    :goto_3
    iget v11, v3, Lcom/waze/user/FriendUserData;->mContactID:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 311
    iget v11, v3, Lcom/waze/user/FriendUserData;->mContactID:I

    invoke-static {v11}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v6

    .line 313
    .local v6, p:Lcom/waze/autocomplete/Person;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 314
    invoke-virtual {v6}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/waze/user/FriendUserData;->setImage(Ljava/lang/String;)V

    .line 317
    .end local v6           #p:Lcom/waze/autocomplete/Person;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 301
    :cond_6
    if-eqz v2, :cond_7

    .line 302
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 303
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v11

    .line 304
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v12}, Lcom/waze/navigate/social/MyFriendsActivity;->access$2(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v12

    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_ALL_FRIENDS_PD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 303
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    const/4 v2, 0x0

    .line 307
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 331
    .end local v1           #bPendingHeaderAdded:Z
    .end local v2           #bShouldAddFriendsHeader:Z
    .end local v3           #fud:Lcom/waze/user/FriendUserData;
    .end local v7           #whereToPutNumFriends:I
    .restart local v5       #numSuggestions:I
    :cond_8
    aget-object v3, v9, v8

    .line 332
    .restart local v3       #fud:Lcom/waze/user/FriendUserData;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/waze/navigate/social/MyFriendsActivity$5;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mSuggested:Landroid/util/SparseArray;
    invoke-static {v11}, Lcom/waze/navigate/social/MyFriendsActivity;->access$0(Lcom/waze/navigate/social/MyFriendsActivity;)Landroid/util/SparseArray;

    move-result-object v11

    iget v12, v3, Lcom/waze/user/FriendUserData;->mID:I

    invoke-virtual {v11, v12, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method
