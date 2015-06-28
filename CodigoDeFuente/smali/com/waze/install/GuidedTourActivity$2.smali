.class Lcom/waze/install/GuidedTourActivity$2;
.super Ljava/lang/Object;
.source "GuidedTourActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/GuidedTourActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/GuidedTourActivity;


# direct methods
.method constructor <init>(Lcom/waze/install/GuidedTourActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const v3, 0x7f090352

    const/4 v6, 0x1

    const/16 v4, 0x1388

    const/4 v5, 0x0

    .line 165
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsMinimalInstallation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    invoke-virtual {v2, v3}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    .line 168
    .local v1, videoView:Landroid/widget/VideoView;
    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 173
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    const-string v3, "LOGIN"

    invoke-virtual {v2, v3, v5, v5, v6}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    const-class v3, Lcom/waze/profile/MinimalSignInActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    invoke-virtual {v2, v0, v4}, Lcom/waze/install/GuidedTourActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #videoView:Landroid/widget/VideoView;
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    invoke-static {}, Lcom/waze/install/GuidedTourActivity;->access$2()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    invoke-virtual {v2, v3}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    .line 183
    .restart local v1       #videoView:Landroid/widget/VideoView;
    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 188
    :cond_3
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsCleanInstallation()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 191
    const-string v3, "START_OTHER"

    .line 190
    invoke-virtual {v2, v3, v5, v5, v6}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    invoke-static {}, Lcom/waze/install/GuidedTourActivity;->access$1()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 196
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 198
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    const-class v3, Lcom/waze/profile/SignInActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    invoke-virtual {v2, v0, v4}, Lcom/waze/install/GuidedTourActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 203
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    const-class v3, Lcom/waze/profile/WelcomeDoneActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    invoke-virtual {v2, v0, v4}, Lcom/waze/install/GuidedTourActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 209
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    const-class v3, Lcom/waze/profile/SignInActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    invoke-virtual {v2, v0, v4}, Lcom/waze/install/GuidedTourActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 215
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 216
    const-string v3, "SOCIAL_UPGRADE_SKIP"

    const/4 v4, 0x0

    .line 215
    invoke-virtual {v2, v3, v5, v5, v4}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 218
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->facebookDisconnectNow()V

    .line 220
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    invoke-virtual {v2, v3, v5}, Lcom/waze/social/facebook/FacebookWrapper;->logout(Landroid/app/Activity;Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;)V

    .line 222
    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/waze/install/GuidedTourActivity;->setResult(I)V

    .line 223
    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$2;->this$0:Lcom/waze/install/GuidedTourActivity;

    invoke-virtual {v2}, Lcom/waze/install/GuidedTourActivity;->finish()V

    goto/16 :goto_0
.end method
