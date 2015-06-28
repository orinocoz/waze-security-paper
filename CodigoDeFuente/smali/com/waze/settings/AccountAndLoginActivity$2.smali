.class Lcom/waze/settings/AccountAndLoginActivity$2;
.super Ljava/lang/Object;
.source "AccountAndLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/AccountAndLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/AccountAndLoginActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/AccountAndLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/AccountAndLoginActivity$2;->this$0:Lcom/waze/settings/AccountAndLoginActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    iget-object v1, p0, Lcom/waze/settings/AccountAndLoginActivity$2;->this$0:Lcom/waze/settings/AccountAndLoginActivity;

    #getter for: Lcom/waze/settings/AccountAndLoginActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;
    invoke-static {v1}, Lcom/waze/settings/AccountAndLoginActivity;->access$1(Lcom/waze/settings/AccountAndLoginActivity;)Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/settings/AccountAndLoginActivity$2;->this$0:Lcom/waze/settings/AccountAndLoginActivity;

    const-class v2, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v1, "back"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string v1, "fon_shon_rea_son"

    .line 102
    const-string v2, "SETTINGS"

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/waze/settings/AccountAndLoginActivity$2;->this$0:Lcom/waze/settings/AccountAndLoginActivity;

    invoke-virtual {v1, v0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    :goto_0
    return-void

    .line 107
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/settings/AccountAndLoginActivity$2;->this$0:Lcom/waze/settings/AccountAndLoginActivity;

    const-class v2, Lcom/waze/profile/MyProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/settings/AccountAndLoginActivity$2;->this$0:Lcom/waze/settings/AccountAndLoginActivity;

    invoke-virtual {v1, v0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
