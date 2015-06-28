.class Lcom/waze/navigate/social/ShareDriveActivity$18;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Lcom/waze/social/AddFriendDialog$IAddFriendDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity;->askToAddAFriend(Lcom/waze/user/PersonBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDriveActivity;

.field private final synthetic val$askToAdd:Lcom/waze/user/PersonBase;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDriveActivity;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$18;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    iput-object p2, p0, Lcom/waze/navigate/social/ShareDriveActivity$18;->val$askToAdd:Lcom/waze/user/PersonBase;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotNowClicked()V
    .locals 3

    .prologue
    .line 705
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$28(Z)V

    .line 706
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$18;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mAddFriendDialog:Lcom/waze/social/AddFriendDialog;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$27(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/social/AddFriendDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/social/AddFriendDialog;->dismiss()V

    .line 707
    const-string v0, "ASK_FRIENDSHIP_FROM_SHARE"

    const-string v1, "ACTION"

    .line 708
    const-string v2, "NOT_NOW"

    .line 707
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public onSendRequestClicked()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 676
    iget-object v4, p0, Lcom/waze/navigate/social/ShareDriveActivity$18;->val$askToAdd:Lcom/waze/user/PersonBase;

    invoke-virtual {v4}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 678
    new-array v3, v6, [I

    .line 679
    .local v3, uid:[I
    iget-object v4, p0, Lcom/waze/navigate/social/ShareDriveActivity$18;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAdd:Lcom/waze/user/PersonBase;
    invoke-static {v4}, Lcom/waze/navigate/social/ShareDriveActivity;->access$4(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/user/PersonBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/user/PersonBase;->getID()I

    move-result v4

    aput v4, v3, v7

    .line 680
    aget v4, v3, v7

    if-eqz v4, :cond_0

    .line 683
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_PS_ADDED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 684
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDriveActivity$18;->val$askToAdd:Lcom/waze/user/PersonBase;

    invoke-virtual {v6}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 682
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialAddFriends([ILjava/lang/String;)V

    .line 699
    .end local v2           #reply:Ljava/lang/String;
    .end local v3           #uid:[I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/waze/navigate/social/ShareDriveActivity$18;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mAddFriendDialog:Lcom/waze/social/AddFriendDialog;
    invoke-static {v4}, Lcom/waze/navigate/social/ShareDriveActivity;->access$27(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/social/AddFriendDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/social/AddFriendDialog;->dismiss()V

    .line 700
    const-string v4, "ASK_FRIENDSHIP_FROM_SHARE"

    const-string v5, "ACTION"

    const-string v6, "SEND"

    invoke-static {v4, v5, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-void

    .line 689
    :cond_1
    new-array v1, v6, [Ljava/lang/String;

    .line 690
    .local v1, phones:[Ljava/lang/String;
    new-array v0, v6, [I

    .line 691
    .local v0, ids:[I
    iget-object v4, p0, Lcom/waze/navigate/social/ShareDriveActivity$18;->val$askToAdd:Lcom/waze/user/PersonBase;

    invoke-virtual {v4}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    .line 692
    iget-object v4, p0, Lcom/waze/navigate/social/ShareDriveActivity$18;->val$askToAdd:Lcom/waze/user/PersonBase;

    invoke-virtual {v4}, Lcom/waze/user/PersonBase;->getID()I

    move-result v4

    aput v4, v0, v7

    .line 695
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_PS_INVITED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 696
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDriveActivity$18;->val$askToAdd:Lcom/waze/user/PersonBase;

    invoke-virtual {v6}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 694
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 697
    .restart local v2       #reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialInviteFriends([I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
