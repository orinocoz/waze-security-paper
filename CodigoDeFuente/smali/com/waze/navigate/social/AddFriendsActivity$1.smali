.class Lcom/waze/navigate/social/AddFriendsActivity$1;
.super Ljava/lang/Object;
.source "AddFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsActivity$1;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/AddFriendsActivity$1;)Lcom/waze/navigate/social/AddFriendsActivity;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsActivity$1;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 98
    const-string v2, "ADD_FRIENDS_OPTIONS_CONTACTS_CLICK"

    invoke-static {v2, v3, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->IsAccessToContactsEnableNTV()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity$1;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    const-class v3, Lcom/waze/navigate/social/AddFromActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_WHERE:Ljava/lang/String;

    sget v3, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_DEFAULT:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity$1;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v1, v3}, Lcom/waze/navigate/social/AddFriendsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v0, Lcom/waze/phone/PhoneRequestAccessDialog;

    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity$1;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    new-instance v3, Lcom/waze/navigate/social/AddFriendsActivity$1$1;

    invoke-direct {v3, p0}, Lcom/waze/navigate/social/AddFriendsActivity$1$1;-><init>(Lcom/waze/navigate/social/AddFriendsActivity$1;)V

    invoke-direct {v0, v2, v3}, Lcom/waze/phone/PhoneRequestAccessDialog;-><init>(Landroid/content/Context;Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;)V

    .line 123
    .local v0, dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    invoke-virtual {v0}, Lcom/waze/phone/PhoneRequestAccessDialog;->show()V

    goto :goto_0

    .line 128
    .end local v0           #dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity$1;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    const-class v3, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v2, "back"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v2, "fon_shon_rea_son"

    .line 132
    const-string v3, "FEATURE"

    .line 131
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity$1;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v1, v3}, Lcom/waze/navigate/social/AddFriendsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
