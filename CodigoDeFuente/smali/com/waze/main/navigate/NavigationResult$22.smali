.class Lcom/waze/main/navigate/NavigationResult$22;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->loadMySharedDriveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/main/navigate/NavigationResult;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/main/navigate/NavigationResult$22;)Lcom/waze/main/navigate/NavigationResult;
    .locals 1
    .parameter

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    return-object v0
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/FriendsListData;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 1536
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1596
    :goto_0
    return-void

    .line 1538
    :cond_0
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mFreqFriendsLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$26(Lcom/waze/main/navigate/NavigationResult;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1540
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0904ad

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1542
    .local v10, view:Landroid/view/View;
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isFollowActiveNTV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1544
    const v0, 0x7f090698

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 1545
    .local v8, ib:Landroid/widget/ImageButton;
    invoke-virtual {v8, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1546
    new-instance v0, Lcom/waze/main/navigate/NavigationResult$22$1;

    invoke-direct {v0, p0}, Lcom/waze/main/navigate/NavigationResult$22$1;-><init>(Lcom/waze/main/navigate/NavigationResult$22;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1559
    .end local v8           #ib:Landroid/widget/ImageButton;
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    if-eqz v0, :cond_2

    .line 1560
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mAlreadyShared:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/waze/main/navigate/NavigationResult;->access$28(Lcom/waze/main/navigate/NavigationResult;Ljava/util/ArrayList;)V

    .line 1564
    iget-object v1, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v2, v1

    move v0, v4

    :goto_1
    if-lt v0, v2, :cond_3

    .line 1575
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mAlreadyShared:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$29(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1577
    invoke-virtual {v10}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v11

    .line 1578
    .local v11, vto:Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/waze/main/navigate/NavigationResult$22$2;

    invoke-direct {v0, p0}, Lcom/waze/main/navigate/NavigationResult$22$2;-><init>(Lcom/waze/main/navigate/NavigationResult$22;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1595
    .end local v11           #vto:Landroid/view/ViewTreeObserver;
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->friendsListInsertAddMore()V
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$30(Lcom/waze/main/navigate/NavigationResult;)V

    goto :goto_0

    .line 1564
    :cond_3
    aget-object v7, v1, v0

    .line 1565
    .local v7, fud:Lcom/waze/user/FriendUserData;
    iget v3, v7, Lcom/waze/user/FriendUserData;->mContactID:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    .line 1566
    iget v3, v7, Lcom/waze/user/FriendUserData;->mContactID:I

    invoke-static {v3}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v9

    .line 1568
    .local v9, mPerson:Lcom/waze/autocomplete/Person;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1569
    invoke-virtual {v9}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/waze/user/FriendUserData;->setImage(Ljava/lang/String;)V

    .line 1572
    .end local v9           #mPerson:Lcom/waze/autocomplete/Person;
    :cond_4
    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mAlreadyShared:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/waze/main/navigate/NavigationResult;->access$29(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1564
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1591
    .end local v7           #fud:Lcom/waze/user/FriendUserData;
    :cond_5
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$23(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mFreqFriendsLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$26(Lcom/waze/main/navigate/NavigationResult;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    .line 1592
    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/waze/main/navigate/NavigationResult;->access$31(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->miFriendSelected:Lcom/waze/share/ShareUtility$IFriendSelected;
    invoke-static {v5}, Lcom/waze/main/navigate/NavigationResult;->access$32(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/share/ShareUtility$IFriendSelected;

    move-result-object v6

    move v5, v4

    .line 1591
    invoke-static/range {v0 .. v6}, Lcom/waze/share/ShareUtility;->shareComponentPopulate(Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/waze/share/ShareUtility$IFriendSelected;)V

    goto :goto_2
.end method
