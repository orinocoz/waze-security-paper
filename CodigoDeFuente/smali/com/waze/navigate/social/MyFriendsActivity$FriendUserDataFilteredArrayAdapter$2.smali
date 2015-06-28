.class Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$2;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

.field private final synthetic val$pr:Lcom/waze/user/PersonBase;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$2;->this$1:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    iput-object p2, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$2;->val$pr:Lcom/waze/user/PersonBase;

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 705
    new-array v0, v5, [I

    iget-object v3, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$2;->val$pr:Lcom/waze/user/PersonBase;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getID()I

    move-result v3

    aput v3, v0, v6

    .line 706
    .local v0, ids:[I
    new-array v1, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$2;->val$pr:Lcom/waze/user/PersonBase;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 707
    .local v1, phone:[Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$2;->val$pr:Lcom/waze/user/PersonBase;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 711
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 712
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_PS_ADDED:Lcom/waze/strings/DisplayStrings;

    .line 711
    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 712
    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$2;->val$pr:Lcom/waze/user/PersonBase;

    invoke-virtual {v5}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 710
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialAddFriends([ILjava/lang/String;)V

    .line 723
    :goto_0
    return-void

    .line 718
    .end local v2           #reply:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 719
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_PS_INVITED:Lcom/waze/strings/DisplayStrings;

    .line 718
    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 719
    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$2;->val$pr:Lcom/waze/user/PersonBase;

    invoke-virtual {v5}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 717
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 721
    .restart local v2       #reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialInviteFriends([I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
