.class Lcom/waze/profile/MinimalSignInActivity$3;
.super Ljava/lang/Object;
.source "MinimalSignInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/MinimalSignInActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/MinimalSignInActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/MinimalSignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/MinimalSignInActivity$3;->this$0:Lcom/waze/profile/MinimalSignInActivity;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 90
    invoke-static {v3}, Lcom/waze/profile/MinimalSignInActivity;->access$2(Z)V

    .line 92
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    const-string v2, "FB_SIGN_IN"

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    invoke-static {}, Lcom/waze/profile/MinimalSignInActivity;->access$3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/profile/MinimalSignInActivity$3;->this$0:Lcom/waze/profile/MinimalSignInActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    .line 127
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/waze/profile/MinimalSignInActivity$3$1;

    invoke-direct {v0, p0}, Lcom/waze/profile/MinimalSignInActivity$3$1;-><init>(Lcom/waze/profile/MinimalSignInActivity$3;)V

    .line 124
    .local v0, fbConnectListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/profile/MinimalSignInActivity$3;->this$0:Lcom/waze/profile/MinimalSignInActivity;

    invoke-virtual {v1, v2, v0, v3}, Lcom/waze/social/facebook/FacebookWrapper;->SignIn(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    goto :goto_0
.end method
