.class Lcom/waze/navigate/social/MyFriendsActivity$5$1;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity$5;->onComplete(Lcom/waze/navigate/social/FriendsListData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/waze/user/FriendUserData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/MyFriendsActivity$5;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$5$1;->this$1:Lcom/waze/navigate/social/MyFriendsActivity$5;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/waze/user/FriendUserData;Lcom/waze/user/FriendUserData;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 255
    iget-boolean v3, p1, Lcom/waze/user/FriendUserData;->mIsPendingFriend:Z

    if-nez v3, :cond_1

    iget-boolean v3, p2, Lcom/waze/user/FriendUserData;->mIsPendingFriend:Z

    if-eqz v3, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    iget-boolean v3, p1, Lcom/waze/user/FriendUserData;->mIsPendingFriend:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p2, Lcom/waze/user/FriendUserData;->mIsPendingFriend:Z

    if-nez v3, :cond_2

    move v0, v1

    .line 259
    goto :goto_0

    .line 262
    :cond_2
    iget-boolean v3, p1, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-nez v3, :cond_3

    iget-boolean v3, p2, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-eqz v3, :cond_3

    move v0, v1

    .line 263
    goto :goto_0

    .line 265
    :cond_3
    iget-boolean v3, p1, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p2, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-eqz v3, :cond_0

    .line 269
    :cond_4
    iget v3, p1, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    if-nez v3, :cond_5

    iget v3, p2, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    if-nez v3, :cond_5

    move v0, v2

    goto :goto_0

    .line 271
    :cond_5
    iget v3, p1, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    if-nez v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 273
    :cond_6
    iget v3, p2, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    if-eqz v3, :cond_0

    .line 275
    iget v3, p1, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    iget v4, p2, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    if-lt v3, v4, :cond_0

    .line 278
    iget v0, p1, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    iget v3, p2, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    if-le v0, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    .line 280
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/waze/user/FriendUserData;

    check-cast p2, Lcom/waze/user/FriendUserData;

    invoke-virtual {p0, p1, p2}, Lcom/waze/navigate/social/MyFriendsActivity$5$1;->compare(Lcom/waze/user/FriendUserData;Lcom/waze/user/FriendUserData;)I

    move-result v0

    return v0
.end method
