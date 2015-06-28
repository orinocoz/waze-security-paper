.class Lcom/waze/share/UserDetailsActivity$3;
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

.field private final synthetic val$bSharingMyDrive:Z


# direct methods
.method constructor <init>(Lcom/waze/share/UserDetailsActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserDetailsActivity$3;->this$0:Lcom/waze/share/UserDetailsActivity;

    iput-boolean p2, p0, Lcom/waze/share/UserDetailsActivity$3;->val$bSharingMyDrive:Z

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/UserDetailsActivity$3;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/waze/share/UserDetailsActivity$3;->doShare(Z)V

    return-void
.end method

.method private doShare(Z)V
    .locals 7
    .parameter "bSharingMyDrive"

    .prologue
    const/4 v6, 0x0

    .line 238
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v1

    .line 239
    .local v1, isNavigating:Z
    if-eqz p1, :cond_0

    .line 240
    const-string v2, "FRIEND_PROFILE_SHARING_MY_DRIVE_CLICKED"

    invoke-static {v2, v6, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/share/UserDetailsActivity$3;->this$0:Lcom/waze/share/UserDetailsActivity;

    const-class v3, Lcom/waze/navigate/social/MyShareDriveActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "meeting"

    iget-object v2, p0, Lcom/waze/share/UserDetailsActivity$3;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;
    invoke-static {v2}, Lcom/waze/share/UserDetailsActivity;->access$0(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/user/PersonBase;

    move-result-object v2

    check-cast v2, Lcom/waze/user/FriendUserData;

    iget-object v2, v2, Lcom/waze/user/FriendUserData;->mMeetingIdSharedByMe:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v2, p0, Lcom/waze/share/UserDetailsActivity$3;->this$0:Lcom/waze/share/UserDetailsActivity;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v0, v3}, Lcom/waze/share/UserDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 254
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 245
    :cond_0
    if-eqz v1, :cond_1

    .line 246
    const-string v2, "FRIEND_PROFILE_SHARE_DRIVE_CLICKED"

    invoke-static {v2, v6, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    .line 249
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/waze/user/PersonBase;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/waze/share/UserDetailsActivity$3;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;
    invoke-static {v5}, Lcom/waze/share/UserDetailsActivity;->access$0(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/user/PersonBase;

    move-result-object v5

    aput-object v5, v3, v4

    .line 248
    invoke-static {v2, v6, v6, v3}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    goto :goto_0

    .line 251
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/share/UserDetailsActivity$3;->this$0:Lcom/waze/share/UserDetailsActivity;

    const-class v3, Lcom/waze/navigate/social/ShareHelpActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/waze/share/UserDetailsActivity$3;->this$0:Lcom/waze/share/UserDetailsActivity;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v0, v3}, Lcom/waze/share/UserDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 210
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->IsAccessToContactsEnableNTV()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-boolean v2, p0, Lcom/waze/share/UserDetailsActivity$3;->val$bSharingMyDrive:Z

    invoke-direct {p0, v2}, Lcom/waze/share/UserDetailsActivity$3;->doShare(Z)V

    .line 235
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v0, Lcom/waze/phone/PhoneRequestAccessDialog;

    iget-object v2, p0, Lcom/waze/share/UserDetailsActivity$3;->this$0:Lcom/waze/share/UserDetailsActivity;

    new-instance v3, Lcom/waze/share/UserDetailsActivity$3$1;

    iget-boolean v4, p0, Lcom/waze/share/UserDetailsActivity$3;->val$bSharingMyDrive:Z

    invoke-direct {v3, p0, v4}, Lcom/waze/share/UserDetailsActivity$3$1;-><init>(Lcom/waze/share/UserDetailsActivity$3;Z)V

    invoke-direct {v0, v2, v3}, Lcom/waze/phone/PhoneRequestAccessDialog;-><init>(Landroid/content/Context;Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;)V

    .line 224
    .local v0, dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    invoke-virtual {v0}, Lcom/waze/phone/PhoneRequestAccessDialog;->show()V

    goto :goto_0

    .line 228
    .end local v0           #dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/share/UserDetailsActivity$3;->this$0:Lcom/waze/share/UserDetailsActivity;

    const-class v3, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v2, "back"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v2, "fon_shon_rea_son"

    .line 232
    const-string v3, "FEATURE"

    .line 231
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object v2, p0, Lcom/waze/share/UserDetailsActivity$3;->this$0:Lcom/waze/share/UserDetailsActivity;

    const/16 v3, 0x3ed

    invoke-virtual {v2, v1, v3}, Lcom/waze/share/UserDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
