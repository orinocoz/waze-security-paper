.class Lcom/waze/navigate/social/FriendsDrivingActivity$1;
.super Ljava/lang/Object;
.source "FriendsDrivingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/FriendsDrivingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/FriendsDrivingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$1;->this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 80
    const-string v2, "ON_THE_WAY_BANNER_CLICK"

    invoke-static {v2, v3, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$1;->this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;

    iget-boolean v2, v2, Lcom/waze/navigate/social/FriendsDrivingActivity;->bIsFollowed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$1;->this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;

    iget v2, v2, Lcom/waze/navigate/social/FriendsDrivingActivity;->mNumber:I

    if-lez v2, :cond_0

    .line 83
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->getCurMeetingNTV()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, MeetingID:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$1;->this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;

    const-class v3, Lcom/waze/navigate/social/MyShareDriveActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "meeting"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v2, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$1;->this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/waze/navigate/social/FriendsDrivingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    .end local v0           #MeetingID:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$1;->this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/waze/share/ShareUtility;->shareLocationOrDrive(Lcom/waze/ifs/ui/ActivityBase;I)V

    goto :goto_0
.end method
