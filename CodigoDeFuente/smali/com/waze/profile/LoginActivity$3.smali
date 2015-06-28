.class Lcom/waze/profile/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/LoginActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/LoginActivity$3;->this$0:Lcom/waze/profile/LoginActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "focused"

    .prologue
    .line 89
    if-nez p2, :cond_1

    .line 90
    iget-object v0, p0, Lcom/waze/profile/LoginActivity$3;->this$0:Lcom/waze/profile/LoginActivity;

    #getter for: Lcom/waze/profile/LoginActivity;->nickname:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/profile/LoginActivity;->access$4(Lcom/waze/profile/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/profile/LoginActivity$3;->this$0:Lcom/waze/profile/LoginActivity;

    #getter for: Lcom/waze/profile/LoginActivity;->nickname:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/profile/LoginActivity;->access$4(Lcom/waze/profile/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/waze/profile/LoginActivity$3;->this$0:Lcom/waze/profile/LoginActivity;

    iget-object v1, p0, Lcom/waze/profile/LoginActivity$3;->this$0:Lcom/waze/profile/LoginActivity;

    #getter for: Lcom/waze/profile/LoginActivity;->userView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/waze/profile/LoginActivity;->access$5(Lcom/waze/profile/LoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/waze/profile/LoginActivity;->nickname:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/profile/LoginActivity;->access$3(Lcom/waze/profile/LoginActivity;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/waze/profile/LoginActivity$3;->this$0:Lcom/waze/profile/LoginActivity;

    #getter for: Lcom/waze/profile/LoginActivity;->nickView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/waze/profile/LoginActivity;->access$2(Lcom/waze/profile/LoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/profile/LoginActivity$3;->this$0:Lcom/waze/profile/LoginActivity;

    #getter for: Lcom/waze/profile/LoginActivity;->nickname:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/profile/LoginActivity;->access$4(Lcom/waze/profile/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_1
    return-void
.end method
