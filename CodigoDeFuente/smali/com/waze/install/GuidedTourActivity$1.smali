.class Lcom/waze/install/GuidedTourActivity$1;
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
    iput-object p1, p0, Lcom/waze/install/GuidedTourActivity$1;->this$0:Lcom/waze/install/GuidedTourActivity;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 81
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsMinimalInstallation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->skipSignup()V

    .line 142
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {v5}, Lcom/waze/install/GuidedTourActivity;->access$0(Z)V

    .line 89
    iget-object v3, p0, Lcom/waze/install/GuidedTourActivity$1;->this$0:Lcom/waze/install/GuidedTourActivity;

    const v4, 0x7f090352

    invoke-virtual {v3, v4}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    .line 90
    .local v2, videoView:Landroid/widget/VideoView;
    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v2}, Landroid/widget/VideoView;->stopPlayback()V

    .line 96
    :cond_1
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 97
    const-string v4, "START_FBCONNECT"

    .line 96
    invoke-virtual {v3, v4, v6, v6, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    invoke-static {}, Lcom/waze/install/GuidedTourActivity;->access$1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/install/GuidedTourActivity$1;->this$0:Lcom/waze/install/GuidedTourActivity;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsCleanInstallation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    new-instance v0, Lcom/waze/install/GuidedTourActivity$1$1;

    invoke-direct {v0, p0}, Lcom/waze/install/GuidedTourActivity$1$1;-><init>(Lcom/waze/install/GuidedTourActivity$1;)V

    .line 123
    .local v0, fbConnectListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/install/GuidedTourActivity$1;->this$0:Lcom/waze/install/GuidedTourActivity;

    invoke-virtual {v3, v4, v0, v5}, Lcom/waze/social/facebook/FacebookWrapper;->SignIn(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    goto :goto_0

    .line 125
    .end local v0           #fbConnectListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    :cond_3
    new-instance v1, Lcom/waze/install/GuidedTourActivity$1$2;

    invoke-direct {v1, p0}, Lcom/waze/install/GuidedTourActivity$1$2;-><init>(Lcom/waze/install/GuidedTourActivity$1;)V

    .line 138
    .local v1, fbUpgradeConnectListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/install/GuidedTourActivity$1;->this$0:Lcom/waze/install/GuidedTourActivity;

    invoke-virtual {v3, v4, v1, v5}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    goto :goto_0
.end method
