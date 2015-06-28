.class Lcom/waze/navigate/social/AddFromActivity$10;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


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
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$10;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/FriendsListData;)V
    .locals 7
    .parameter "aData"

    .prologue
    .line 475
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$10;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    new-instance v3, Landroid/util/SparseIntArray;

    iget-object v4, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v4, v4

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    #setter for: Lcom/waze/navigate/social/AddFromActivity;->mCurFriendsUids:Landroid/util/SparseIntArray;
    invoke-static {v2, v3}, Lcom/waze/navigate/social/AddFromActivity;->access$12(Lcom/waze/navigate/social/AddFromActivity;Landroid/util/SparseIntArray;)V

    .line 477
    const/4 v0, 0x1

    .line 478
    .local v0, nonZeroPosition:I
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 479
    iget-object v3, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_2

    .line 485
    :cond_0
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$10;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/waze/navigate/social/AddFromActivity;->mHasReadCurFriends:Z

    .line 486
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$10;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    iget-boolean v2, v2, Lcom/waze/navigate/social/AddFromActivity;->mHasReadUidMap:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$10;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    iget-boolean v2, v2, Lcom/waze/navigate/social/AddFromActivity;->mHasReadAddressBook:Z

    if-eqz v2, :cond_1

    .line 487
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$10;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    invoke-virtual {v2}, Lcom/waze/navigate/social/AddFromActivity;->readAddressBook()V

    .line 489
    :cond_1
    return-void

    .line 479
    :cond_2
    aget-object v1, v3, v2

    .line 480
    .local v1, p:Lcom/waze/user/PersonBase;
    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$10;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mCurFriendsUids:Landroid/util/SparseIntArray;
    invoke-static {v5}, Lcom/waze/navigate/social/AddFromActivity;->access$13(Lcom/waze/navigate/social/AddFromActivity;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 481
    add-int/lit8 v0, v0, 0x1

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
