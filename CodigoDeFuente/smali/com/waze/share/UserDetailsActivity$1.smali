.class Lcom/waze/share/UserDetailsActivity$1;
.super Ljava/lang/Object;
.source "UserDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/UserDetailsActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/UserDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserDetailsActivity$1;->this$0:Lcom/waze/share/UserDetailsActivity;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 165
    const-string v1, "FRIEND_PROFILE_SHARING_DRIVE_WITH_ME_CLICKED"

    .line 164
    invoke-static {v1, v2, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/share/UserDetailsActivity$1;->this$0:Lcom/waze/share/UserDetailsActivity;

    const-class v2, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "meeting"

    iget-object v1, p0, Lcom/waze/share/UserDetailsActivity$1;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;
    invoke-static {v1}, Lcom/waze/share/UserDetailsActivity;->access$0(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/user/PersonBase;

    move-result-object v1

    check-cast v1, Lcom/waze/user/FriendUserData;

    iget-object v1, v1, Lcom/waze/user/FriendUserData;->mMeetingIdSharedWithMe:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/waze/share/UserDetailsActivity$1;->this$0:Lcom/waze/share/UserDetailsActivity;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Lcom/waze/share/UserDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    return-void
.end method
