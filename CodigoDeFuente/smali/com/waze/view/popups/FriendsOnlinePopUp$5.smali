.class Lcom/waze/view/popups/FriendsOnlinePopUp$5;
.super Ljava/lang/Object;
.source "FriendsOnlinePopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/FriendsOnlinePopUp;->friendsListAddFriend(Lcom/waze/user/FriendUserData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;

.field private final synthetic val$friend:Lcom/waze/user/FriendUserData;

.field private final synthetic val$friendLayoutInListLayout:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/FriendsOnlinePopUp;Lcom/waze/user/FriendUserData;Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$5;->this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;

    iput-object p2, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$5;->val$friend:Lcom/waze/user/FriendUserData;

    iput-object p3, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$5;->val$friendLayoutInListLayout:Landroid/widget/FrameLayout;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 448
    const-string v0, "BEEP_BEEP_CLICK_FROM"

    const-string v1, "VAUE"

    const-string v2, "FRIENDS_ONLINE"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$5;->val$friend:Lcom/waze/user/FriendUserData;

    iget v1, v1, Lcom/waze/user/FriendUserData;->mLongitude:I

    iget-object v2, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$5;->val$friend:Lcom/waze/user/FriendUserData;

    iget v2, v2, Lcom/waze/user/FriendUserData;->mLatitude:I

    iget-object v3, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$5;->val$friend:Lcom/waze/user/FriendUserData;

    iget v3, v3, Lcom/waze/user/FriendUserData;->mAzimuth:I

    iget-object v4, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$5;->val$friend:Lcom/waze/user/FriendUserData;

    iget v4, v4, Lcom/waze/user/FriendUserData;->mID:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/waze/NativeManager;->SendBeepBeep(IIIILcom/waze/NativeManager$IResultCode;)V

    .line 450
    iget-object v0, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$5;->val$friendLayoutInListLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0902f2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    return-void
.end method
