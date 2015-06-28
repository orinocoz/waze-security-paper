.class Lcom/waze/profile/MinimalSignInActivity$4;
.super Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
.source "MinimalSignInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/MinimalSignInActivity;->onSignClicked()V
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
    iput-object p1, p0, Lcom/waze/profile/MinimalSignInActivity$4;->this$0:Lcom/waze/profile/MinimalSignInActivity;

    .line 180
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Z)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    const-string v2, "WAZE_SIGN_IN"

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/profile/MinimalSignInActivity$4;->this$0:Lcom/waze/profile/MinimalSignInActivity;

    const-class v2, Lcom/waze/install/InstallNickNameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/profile/MinimalSignInActivity$4;->this$0:Lcom/waze/profile/MinimalSignInActivity;

    invoke-virtual {v1, v0, v3}, Lcom/waze/profile/MinimalSignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/waze/profile/MinimalSignInActivity$4;->this$0:Lcom/waze/profile/MinimalSignInActivity;

    #getter for: Lcom/waze/profile/MinimalSignInActivity;->signButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/waze/profile/MinimalSignInActivity;->access$4(Lcom/waze/profile/MinimalSignInActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
