.class Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$1;
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

.field private final synthetic val$fud:Lcom/waze/user/FriendUserData;

.field private final synthetic val$pr:Lcom/waze/user/PersonBase;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;Lcom/waze/user/FriendUserData;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$1;->this$1:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    iput-object p2, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$1;->val$fud:Lcom/waze/user/FriendUserData;

    iput-object p3, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$1;->val$pr:Lcom/waze/user/PersonBase;

    .line 681
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

    .line 685
    new-array v0, v4, [I

    iget-object v2, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$1;->val$fud:Lcom/waze/user/FriendUserData;

    invoke-virtual {v2}, Lcom/waze/user/FriendUserData;->getID()I

    move-result v2

    aput v2, v0, v5

    .line 690
    .local v0, ids:[I
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 691
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PS_ADDED:Lcom/waze/strings/DisplayStrings;

    .line 690
    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 691
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$1;->val$pr:Lcom/waze/user/PersonBase;

    invoke-virtual {v4}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 689
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialAddFriends([ILjava/lang/String;)V

    .line 694
    return-void
.end method
