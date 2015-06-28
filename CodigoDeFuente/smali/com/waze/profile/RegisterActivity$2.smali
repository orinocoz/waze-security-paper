.class Lcom/waze/profile/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/waze/profile/RegisterActivity$2;->this$0:Lcom/waze/profile/RegisterActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "focused"

    .prologue
    .line 83
    if-nez p2, :cond_1

    .line 84
    iget-object v1, p0, Lcom/waze/profile/RegisterActivity$2;->this$0:Lcom/waze/profile/RegisterActivity;

    #getter for: Lcom/waze/profile/RegisterActivity;->nickView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/waze/profile/RegisterActivity;->access$2(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, nickname:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/waze/profile/RegisterActivity$2;->this$0:Lcom/waze/profile/RegisterActivity;

    #getter for: Lcom/waze/profile/RegisterActivity;->userView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/waze/profile/RegisterActivity;->access$0(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/waze/profile/RegisterActivity$2;->this$0:Lcom/waze/profile/RegisterActivity;

    #getter for: Lcom/waze/profile/RegisterActivity;->nickView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/waze/profile/RegisterActivity;->access$2(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .end local v0           #nickname:Ljava/lang/String;
    :cond_1
    return-void
.end method
