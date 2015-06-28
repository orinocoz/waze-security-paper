.class Lcom/waze/profile/WelcomeSocialActivity$4;
.super Ljava/lang/Object;
.source "WelcomeSocialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/WelcomeSocialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/WelcomeSocialActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/WelcomeSocialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/WelcomeSocialActivity$4;->this$0:Lcom/waze/profile/WelcomeSocialActivity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookLoggedInNTV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/profile/WelcomeSocialActivity$4;->this$0:Lcom/waze/profile/WelcomeSocialActivity;

    const-class v2, Lcom/waze/install/InstallFacebookPrivacyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/profile/WelcomeSocialActivity$4;->this$0:Lcom/waze/profile/WelcomeSocialActivity;

    invoke-virtual {v1, v0, v3}, Lcom/waze/profile/WelcomeSocialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/waze/profile/WelcomeSocialActivity$4;->this$0:Lcom/waze/profile/WelcomeSocialActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/waze/profile/WelcomeSocialActivity;->setResult(I)V

    .line 76
    iget-object v1, p0, Lcom/waze/profile/WelcomeSocialActivity$4;->this$0:Lcom/waze/profile/WelcomeSocialActivity;

    invoke-virtual {v1}, Lcom/waze/profile/WelcomeSocialActivity;->finish()V

    .line 78
    return-void

    .line 71
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/profile/WelcomeSocialActivity$4;->this$0:Lcom/waze/profile/WelcomeSocialActivity;

    const-class v2, Lcom/waze/profile/WelcomeDoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/profile/WelcomeSocialActivity$4;->this$0:Lcom/waze/profile/WelcomeSocialActivity;

    invoke-virtual {v1, v0, v3}, Lcom/waze/profile/WelcomeSocialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
