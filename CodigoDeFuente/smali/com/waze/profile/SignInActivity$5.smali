.class Lcom/waze/profile/SignInActivity$5;
.super Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
.source "SignInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/SignInActivity;->onSignClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/SignInActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/SignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/SignInActivity$5;->this$0:Lcom/waze/profile/SignInActivity;

    .line 144
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Z)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 146
    if-eqz p1, :cond_0

    .line 147
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/profile/SignInActivity$5;->this$0:Lcom/waze/profile/SignInActivity;

    const-class v2, Lcom/waze/install/InstallNickNameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "IsInstallation"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/waze/profile/SignInActivity$5;->this$0:Lcom/waze/profile/SignInActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/waze/profile/SignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 153
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/waze/profile/SignInActivity$5;->this$0:Lcom/waze/profile/SignInActivity;

    #getter for: Lcom/waze/profile/SignInActivity;->signButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/waze/profile/SignInActivity;->access$4(Lcom/waze/profile/SignInActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
