.class Lcom/waze/view/popups/FriendsOnlinePopUp$2$1;
.super Ljava/lang/Object;
.source "FriendsOnlinePopUp.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/FriendsOnlinePopUp$2;->onComplete(Lcom/waze/navigate/social/FriendsListData;)V
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
.field final synthetic this$1:Lcom/waze/view/popups/FriendsOnlinePopUp$2;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/FriendsOnlinePopUp$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$2$1;->this$1:Lcom/waze/view/popups/FriendsOnlinePopUp$2;

    .line 373
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

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 376
    iget-boolean v3, p1, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-nez v3, :cond_1

    iget-boolean v3, p2, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-eqz v3, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 379
    :cond_1
    iget-boolean v3, p1, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p2, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-nez v3, :cond_2

    move v0, v1

    .line 380
    goto :goto_0

    .line 382
    :cond_2
    iget v3, p1, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    if-nez v3, :cond_3

    iget v3, p2, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    if-nez v3, :cond_3

    move v0, v2

    .line 383
    goto :goto_0

    .line 385
    :cond_3
    iget v3, p1, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    if-eqz v3, :cond_0

    .line 388
    iget v3, p2, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    if-nez v3, :cond_4

    move v0, v1

    .line 389
    goto :goto_0

    .line 391
    :cond_4
    iget v3, p1, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    iget v4, p2, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    if-ge v3, v4, :cond_5

    move v0, v1

    .line 392
    goto :goto_0

    .line 394
    :cond_5
    iget v1, p1, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    iget v3, p2, Lcom/waze/user/FriendUserData;->mStatusTimeInSeconds:I

    if-gt v1, v3, :cond_0

    move v0, v2

    .line 397
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

    invoke-virtual {p0, p1, p2}, Lcom/waze/view/popups/FriendsOnlinePopUp$2$1;->compare(Lcom/waze/user/FriendUserData;Lcom/waze/user/FriendUserData;)I

    move-result v0

    return v0
.end method
