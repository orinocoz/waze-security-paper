.class Lcom/waze/navigate/social/AddFromActivity$8;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFromActivity;->getFriendsDataFromAddressBook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFromActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFromActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$8;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/AddFriendsData;)V
    .locals 7
    .parameter "aData"

    .prologue
    .line 440
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$8;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/waze/navigate/social/AddFromActivity;->access$8(Lcom/waze/navigate/social/AddFromActivity;Ljava/util/ArrayList;)V

    .line 441
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$8;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    new-instance v3, Landroid/util/SparseIntArray;

    iget-object v4, p1, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    array-length v4, v4

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    #setter for: Lcom/waze/navigate/social/AddFromActivity;->mSuggestionsUids:Landroid/util/SparseIntArray;
    invoke-static {v2, v3}, Lcom/waze/navigate/social/AddFromActivity;->access$9(Lcom/waze/navigate/social/AddFromActivity;Landroid/util/SparseIntArray;)V

    .line 443
    const/4 v0, 0x1

    .line 444
    .local v0, nonZeroPosition:I
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$8;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    iget-object v3, p1, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    array-length v3, v3

    #setter for: Lcom/waze/navigate/social/AddFromActivity;->mNumSuggestions:I
    invoke-static {v2, v3}, Lcom/waze/navigate/social/AddFromActivity;->access$6(Lcom/waze/navigate/social/AddFromActivity;I)V

    .line 446
    iget-object v3, p1, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_2

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$8;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/waze/navigate/social/AddFromActivity;->mHasReadAddressBook:Z

    .line 453
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$8;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    iget-boolean v2, v2, Lcom/waze/navigate/social/AddFromActivity;->mHasReadUidMap:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$8;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    iget-boolean v2, v2, Lcom/waze/navigate/social/AddFromActivity;->mHasReadCurFriends:Z

    if-eqz v2, :cond_1

    .line 454
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$8;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    invoke-virtual {v2}, Lcom/waze/navigate/social/AddFromActivity;->readAddressBook()V

    .line 456
    :cond_1
    return-void

    .line 446
    :cond_2
    aget-object v1, v3, v2

    .line 447
    .local v1, p:Lcom/waze/user/PersonBase;
    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$8;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/waze/navigate/social/AddFromActivity;->access$10(Lcom/waze/navigate/social/AddFromActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$8;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mSuggestionsUids:Landroid/util/SparseIntArray;
    invoke-static {v5}, Lcom/waze/navigate/social/AddFromActivity;->access$11(Lcom/waze/navigate/social/AddFromActivity;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 449
    add-int/lit8 v0, v0, 0x1

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
