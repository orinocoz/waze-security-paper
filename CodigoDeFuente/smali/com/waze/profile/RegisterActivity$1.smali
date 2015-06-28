.class Lcom/waze/profile/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/RegisterActivity$1;->this$0:Lcom/waze/profile/RegisterActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 68
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity$1;->this$0:Lcom/waze/profile/RegisterActivity;

    #getter for: Lcom/waze/profile/RegisterActivity;->userView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/waze/profile/RegisterActivity;->access$0(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, username:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity$1;->this$0:Lcom/waze/profile/RegisterActivity;

    #getter for: Lcom/waze/profile/RegisterActivity;->passView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/waze/profile/RegisterActivity;->access$1(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, password:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity$1;->this$0:Lcom/waze/profile/RegisterActivity;

    #getter for: Lcom/waze/profile/RegisterActivity;->nickView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/waze/profile/RegisterActivity;->access$2(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, nickname:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity$1;->this$0:Lcom/waze/profile/RegisterActivity;

    #getter for: Lcom/waze/profile/RegisterActivity;->emailView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/waze/profile/RegisterActivity;->access$3(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, email:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity$1;->this$0:Lcom/waze/profile/RegisterActivity;

    #getter for: Lcom/waze/profile/RegisterActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;
    invoke-static {v0}, Lcom/waze/profile/RegisterActivity;->access$4(Lcom/waze/profile/RegisterActivity;)Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iget-object v7, p0, Lcom/waze/profile/RegisterActivity$1;->this$0:Lcom/waze/profile/RegisterActivity;

    move-object v3, v2

    invoke-virtual/range {v0 .. v7}, Lcom/waze/mywaze/MyWazeNativeManager;->registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/profile/RegisterActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity$1;->this$0:Lcom/waze/profile/RegisterActivity;

    #getter for: Lcom/waze/profile/RegisterActivity;->nextButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/waze/profile/RegisterActivity;->access$5(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 76
    :cond_0
    return-void
.end method
