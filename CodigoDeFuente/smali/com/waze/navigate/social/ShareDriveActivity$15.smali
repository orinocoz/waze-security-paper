.class Lcom/waze/navigate/social/ShareDriveActivity$15;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$15;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/FriendsListData;)V
    .locals 6
    .parameter "aData"

    .prologue
    .line 473
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$15;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    new-instance v2, Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v3, v3

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    #setter for: Lcom/waze/navigate/social/ShareDriveActivity;->mCurFriendsUids:Landroid/util/SparseArray;
    invoke-static {v1, v2}, Lcom/waze/navigate/social/ShareDriveActivity;->access$22(Lcom/waze/navigate/social/ShareDriveActivity;Landroid/util/SparseArray;)V

    .line 475
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 476
    iget-object v2, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 480
    :cond_0
    return-void

    .line 476
    :cond_1
    aget-object v0, v2, v1

    .line 477
    .local v0, fud:Lcom/waze/user/FriendUserData;
    iget-object v4, p0, Lcom/waze/navigate/social/ShareDriveActivity$15;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mCurFriendsUids:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/waze/navigate/social/ShareDriveActivity;->access$23(Lcom/waze/navigate/social/ShareDriveActivity;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v0}, Lcom/waze/user/FriendUserData;->getID()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
