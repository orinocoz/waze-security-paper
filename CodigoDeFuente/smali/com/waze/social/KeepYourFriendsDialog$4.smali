.class Lcom/waze/social/KeepYourFriendsDialog$4;
.super Ljava/lang/Object;
.source "KeepYourFriendsDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/waze/social/KeepYourFriendsDialog$4;->this$0:Lcom/waze/social/KeepYourFriendsDialog;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/waze/social/KeepYourFriendsDialog$4;->this$0:Lcom/waze/social/KeepYourFriendsDialog;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    #setter for: Lcom/waze/social/KeepYourFriendsDialog;->mShowAgain:Z
    invoke-static {v1, v0}, Lcom/waze/social/KeepYourFriendsDialog;->access$2(Lcom/waze/social/KeepYourFriendsDialog;Z)V

    .line 127
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog$4;->this$0:Lcom/waze/social/KeepYourFriendsDialog;

    #getter for: Lcom/waze/social/KeepYourFriendsDialog;->mShowAgain:Z
    invoke-static {v0}, Lcom/waze/social/KeepYourFriendsDialog;->access$3(Lcom/waze/social/KeepYourFriendsDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog$4;->this$0:Lcom/waze/social/KeepYourFriendsDialog;

    #getter for: Lcom/waze/social/KeepYourFriendsDialog;->mFud:Lcom/waze/user/FriendUserData;
    invoke-static {v0}, Lcom/waze/social/KeepYourFriendsDialog;->access$0(Lcom/waze/social/KeepYourFriendsDialog;)Lcom/waze/user/FriendUserData;

    move-result-object v0

    if-nez v0, :cond_2

    .line 129
    const-string v0, "SHARE_DRIVE_ETA_TIP_CLICK"

    .line 130
    const-string v1, "ACTION"

    .line 131
    const-string v2, "DONT_SHOW_AGAIN"

    .line 129
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog$4;->this$0:Lcom/waze/social/KeepYourFriendsDialog;

    invoke-virtual {v0}, Lcom/waze/social/KeepYourFriendsDialog;->dismiss()V

    .line 139
    :cond_0
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :cond_2
    const-string v0, "SHARE_LOCATION_BACK_CLICKED"

    .line 134
    const-string v1, "ACTION"

    .line 135
    const-string v2, "DONT_SHOW_AGAIN"

    .line 133
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
