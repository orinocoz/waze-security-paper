.class Lcom/waze/install/InstallNickNameActivity$2;
.super Ljava/lang/Object;
.source "InstallNickNameActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/waze/install/InstallNickNameActivity$2;->this$0:Lcom/waze/install/InstallNickNameActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "focused"

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    iget-object v0, p0, Lcom/waze/install/InstallNickNameActivity$2;->this$0:Lcom/waze/install/InstallNickNameActivity;

    #getter for: Lcom/waze/install/InstallNickNameActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;
    invoke-static {v0}, Lcom/waze/install/InstallNickNameActivity;->access$0(Lcom/waze/install/InstallNickNameActivity;)Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/install/InstallNickNameActivity$2;->this$0:Lcom/waze/install/InstallNickNameActivity;

    #getter for: Lcom/waze/install/InstallNickNameActivity;->nickView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/waze/install/InstallNickNameActivity;->access$1(Lcom/waze/install/InstallNickNameActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->validateNickname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/waze/install/InstallNickNameActivity$2;->this$0:Lcom/waze/install/InstallNickNameActivity;

    iget-object v1, p0, Lcom/waze/install/InstallNickNameActivity$2;->this$0:Lcom/waze/install/InstallNickNameActivity;

    #getter for: Lcom/waze/install/InstallNickNameActivity;->nickView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/waze/install/InstallNickNameActivity;->access$1(Lcom/waze/install/InstallNickNameActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/waze/install/InstallNickNameActivity;->nickname:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/install/InstallNickNameActivity;->access$2(Lcom/waze/install/InstallNickNameActivity;Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/waze/install/InstallNickNameActivity$2;->this$0:Lcom/waze/install/InstallNickNameActivity;

    #getter for: Lcom/waze/install/InstallNickNameActivity;->nickname:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/install/InstallNickNameActivity;->access$3(Lcom/waze/install/InstallNickNameActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/waze/install/InstallNickNameActivity$2;->this$0:Lcom/waze/install/InstallNickNameActivity;

    #getter for: Lcom/waze/install/InstallNickNameActivity;->nickView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/waze/install/InstallNickNameActivity;->access$1(Lcom/waze/install/InstallNickNameActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/install/InstallNickNameActivity$2;->this$0:Lcom/waze/install/InstallNickNameActivity;

    #getter for: Lcom/waze/install/InstallNickNameActivity;->nickname:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/install/InstallNickNameActivity;->access$3(Lcom/waze/install/InstallNickNameActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
