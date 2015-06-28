.class Lcom/waze/social/KeepYourFriendsDialog$1;
.super Ljava/lang/Object;
.source "KeepYourFriendsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/social/KeepYourFriendsDialog;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/social/KeepYourFriendsDialog;


# direct methods
.method constructor <init>(Lcom/waze/social/KeepYourFriendsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/social/KeepYourFriendsDialog$1;->this$0:Lcom/waze/social/KeepYourFriendsDialog;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog$1;->this$0:Lcom/waze/social/KeepYourFriendsDialog;

    #getter for: Lcom/waze/social/KeepYourFriendsDialog;->mFud:Lcom/waze/user/FriendUserData;
    invoke-static {v0}, Lcom/waze/social/KeepYourFriendsDialog;->access$0(Lcom/waze/social/KeepYourFriendsDialog;)Lcom/waze/user/FriendUserData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "SHARE_DRIVE_ETA_TIP_CLICK"

    .line 86
    const-string v1, "ACTION"

    .line 87
    const-string v2, "GET_STARTED"

    .line 85
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog$1;->this$0:Lcom/waze/social/KeepYourFriendsDialog;

    #getter for: Lcom/waze/social/KeepYourFriendsDialog;->mOnGetStarted:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/waze/social/KeepYourFriendsDialog;->access$1(Lcom/waze/social/KeepYourFriendsDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 94
    return-void

    .line 89
    :cond_0
    const-string v0, "SHARE_LOCATION_BACK_CLICKED"

    .line 90
    const-string v1, "ACTION"

    .line 91
    const-string v2, "SEND_ETA"

    .line 89
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
