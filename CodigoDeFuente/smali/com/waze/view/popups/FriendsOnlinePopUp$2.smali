.class Lcom/waze/view/popups/FriendsOnlinePopUp$2;
.super Ljava/lang/Object;
.source "FriendsOnlinePopUp.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/FriendsOnlinePopUp;->fillPopUpData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/FriendsOnlinePopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$2;->this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/FriendsListData;)V
    .locals 5
    .parameter "aData"

    .prologue
    .line 372
    iget-object v1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$2;->this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;

    iput-object p1, v1, Lcom/waze/view/popups/FriendsOnlinePopUp;->data:Lcom/waze/navigate/social/FriendsListData;

    .line 373
    iget-object v1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$2;->this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;

    iget-object v1, v1, Lcom/waze/view/popups/FriendsOnlinePopUp;->data:Lcom/waze/navigate/social/FriendsListData;

    iget-object v1, v1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    new-instance v2, Lcom/waze/view/popups/FriendsOnlinePopUp$2$1;

    invoke-direct {v2, p0}, Lcom/waze/view/popups/FriendsOnlinePopUp$2$1;-><init>(Lcom/waze/view/popups/FriendsOnlinePopUp$2;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 400
    iget-object v1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$2;->this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;

    iget-object v1, v1, Lcom/waze/view/popups/FriendsOnlinePopUp;->data:Lcom/waze/navigate/social/FriendsListData;

    iget-object v2, v1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 406
    return-void

    .line 400
    :cond_0
    aget-object v0, v2, v1

    .line 401
    .local v0, friend:Lcom/waze/user/FriendUserData;
    iget-boolean v4, v0, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-eqz v4, :cond_1

    .line 403
    iget-object v4, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$2;->this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;

    #calls: Lcom/waze/view/popups/FriendsOnlinePopUp;->friendsListAddFriend(Lcom/waze/user/FriendUserData;)V
    invoke-static {v4, v0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->access$0(Lcom/waze/view/popups/FriendsOnlinePopUp;Lcom/waze/user/FriendUserData;)V

    .line 400
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
