.class Lcom/waze/navigate/social/MyFriendsActivity$11;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Lcom/waze/social/AddFriendDialog$IAddFriendDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity;->askToAddMoreFriends()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$11;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotNowClicked()V
    .locals 3

    .prologue
    .line 889
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/navigate/social/MyFriendsActivity;->access$21(Z)V

    .line 890
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity$11;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mAddFriendDialog:Lcom/waze/social/AddFriendDialog;
    invoke-static {v0}, Lcom/waze/navigate/social/MyFriendsActivity;->access$20(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/social/AddFriendDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/social/AddFriendDialog;->dismiss()V

    .line 891
    const-string v0, "ADD_FRIEND_FROM_FRIEND_REQUEST"

    const-string v1, "ACTION"

    const-string v2, "NOT_NOW"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method public onSendRequestClicked()V
    .locals 4

    .prologue
    .line 880
    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$11;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mAddFriendDialog:Lcom/waze/social/AddFriendDialog;
    invoke-static {v1}, Lcom/waze/navigate/social/MyFriendsActivity;->access$20(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/social/AddFriendDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/social/AddFriendDialog;->dismiss()V

    .line 881
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$11;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    const-class v2, Lcom/waze/navigate/social/AddFromActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 882
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_WHERE:Ljava/lang/String;

    sget v2, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_DEFAULT:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 883
    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$11;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/waze/navigate/social/MyFriendsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 884
    const-string v1, "ADD_FRIEND_FROM_FRIEND_REQUEST"

    const-string v2, "ACTION"

    const-string v3, "ADD"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    return-void
.end method
