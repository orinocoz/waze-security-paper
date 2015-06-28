.class Lcom/waze/install/InstallNickNameActivity$1;
.super Ljava/lang/Object;
.source "InstallNickNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallNickNameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/InstallNickNameActivity;


# direct methods
.method constructor <init>(Lcom/waze/install/InstallNickNameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallNickNameActivity$1;->this$0:Lcom/waze/install/InstallNickNameActivity;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/install/InstallNickNameActivity$1;->this$0:Lcom/waze/install/InstallNickNameActivity;

    const-class v2, Lcom/waze/profile/WelcomeDoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/install/InstallNickNameActivity$1;->this$0:Lcom/waze/install/InstallNickNameActivity;

    invoke-virtual {v1, v0, v3}, Lcom/waze/install/InstallNickNameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 53
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 54
    const-string v2, "NICKNAME_NEXT"

    .line 53
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    iget-object v1, p0, Lcom/waze/install/InstallNickNameActivity$1;->this$0:Lcom/waze/install/InstallNickNameActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/waze/install/InstallNickNameActivity;->setResult(I)V

    .line 57
    iget-object v1, p0, Lcom/waze/install/InstallNickNameActivity$1;->this$0:Lcom/waze/install/InstallNickNameActivity;

    invoke-virtual {v1}, Lcom/waze/install/InstallNickNameActivity;->finish()V

    .line 58
    return-void
.end method
