.class Lcom/waze/install/InstallFacebookPrivacyActivity$1;
.super Ljava/lang/Object;
.source "InstallFacebookPrivacyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallFacebookPrivacyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/InstallFacebookPrivacyActivity;


# direct methods
.method constructor <init>(Lcom/waze/install/InstallFacebookPrivacyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallFacebookPrivacyActivity$1;->this$0:Lcom/waze/install/InstallFacebookPrivacyActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 83
    iget-object v1, p0, Lcom/waze/install/InstallFacebookPrivacyActivity$1;->this$0:Lcom/waze/install/InstallFacebookPrivacyActivity;

    #getter for: Lcom/waze/install/InstallFacebookPrivacyActivity;->isNew:Z
    invoke-static {v1}, Lcom/waze/install/InstallFacebookPrivacyActivity;->access$0(Lcom/waze/install/InstallFacebookPrivacyActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/install/InstallFacebookPrivacyActivity$1;->this$0:Lcom/waze/install/InstallFacebookPrivacyActivity;

    const-class v2, Lcom/waze/profile/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/install/InstallFacebookPrivacyActivity$1;->this$0:Lcom/waze/install/InstallFacebookPrivacyActivity;

    invoke-virtual {v1, v0, v4}, Lcom/waze/install/InstallFacebookPrivacyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    :goto_0
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsCleanInstallation()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsMinimalInstallation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 93
    const-string v2, "YOUR_WAZER_NEXT"

    .line 92
    invoke-virtual {v1, v2, v3, v3, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/waze/install/InstallFacebookPrivacyActivity$1;->this$0:Lcom/waze/install/InstallFacebookPrivacyActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/waze/install/InstallFacebookPrivacyActivity;->setResult(I)V

    .line 102
    iget-object v1, p0, Lcom/waze/install/InstallFacebookPrivacyActivity$1;->this$0:Lcom/waze/install/InstallFacebookPrivacyActivity;

    invoke-virtual {v1}, Lcom/waze/install/InstallFacebookPrivacyActivity;->finish()V

    .line 103
    return-void

    .line 87
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/install/InstallFacebookPrivacyActivity$1;->this$0:Lcom/waze/install/InstallFacebookPrivacyActivity;

    const-class v2, Lcom/waze/profile/WelcomeDoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/install/InstallFacebookPrivacyActivity$1;->this$0:Lcom/waze/install/InstallFacebookPrivacyActivity;

    invoke-virtual {v1, v0, v4}, Lcom/waze/install/InstallFacebookPrivacyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 98
    const-string v2, "SOCIAL_UPGRADE_YOUR_WAZER_NEXT"

    .line 97
    invoke-virtual {v1, v2, v3, v3, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method
