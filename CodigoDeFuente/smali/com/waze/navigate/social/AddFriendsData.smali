.class public Lcom/waze/navigate/social/AddFriendsData;
.super Ljava/lang/Object;
.source "AddFriendsData.java"


# instance fields
.field public SuggestionFriends:[Lcom/waze/user/FriendUserData;

.field public SuggestionFriendsUids:Landroid/util/SparseIntArray;

.field public WaitingForApprovalFriends:[Lcom/waze/user/FriendUserData;

.field public WaitingForApprovalFriendsUids:Landroid/util/SparseIntArray;

.field public contactLoggedIn:Z

.field public facebookLoggedIn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
