.class Lcom/waze/navigate/social/AddFriendsActivity$6;
.super Ljava/lang/Object;
.source "AddFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFriendsActivity;->PendingAddFriend(Lcom/waze/user/FriendUserData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFriendsActivity;

.field private final synthetic val$friend:Lcom/waze/user/FriendUserData;

.field private final synthetic val$friendLayoutInListLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFriendsActivity;Landroid/view/View;Lcom/waze/user/FriendUserData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsActivity$6;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    iput-object p2, p0, Lcom/waze/navigate/social/AddFriendsActivity$6;->val$friendLayoutInListLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/waze/navigate/social/AddFriendsActivity$6;->val$friend:Lcom/waze/user/FriendUserData;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 313
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity$6;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    iget-object v3, p0, Lcom/waze/navigate/social/AddFriendsActivity$6;->val$friendLayoutInListLayout:Landroid/view/View;

    #setter for: Lcom/waze/navigate/social/AddFriendsActivity;->viewToRemove:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/waze/navigate/social/AddFriendsActivity;->access$3(Lcom/waze/navigate/social/AddFriendsActivity;Landroid/view/View;)V

    .line 314
    new-array v0, v4, [I

    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity$6;->val$friend:Lcom/waze/user/FriendUserData;

    invoke-virtual {v2}, Lcom/waze/user/FriendUserData;->getID()I

    move-result v2

    aput v2, v0, v5

    .line 316
    .local v0, ids:[I
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity$6;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    #getter for: Lcom/waze/navigate/social/AddFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/navigate/social/AddFriendsActivity;->access$0(Lcom/waze/navigate/social/AddFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PS_REMOVED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 317
    iget-object v4, p0, Lcom/waze/navigate/social/AddFriendsActivity$6;->val$friend:Lcom/waze/user/FriendUserData;

    invoke-virtual {v4}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 316
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialRemoveFriends([ILjava/lang/String;)V

    .line 320
    return-void
.end method
