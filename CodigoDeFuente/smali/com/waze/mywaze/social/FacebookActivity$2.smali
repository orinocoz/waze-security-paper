.class Lcom/waze/mywaze/social/FacebookActivity$2;
.super Ljava/lang/Object;
.source "FacebookActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/social/FacebookActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/social/FacebookActivity;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/social/FacebookActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/social/FacebookActivity$2;->this$0:Lcom/waze/mywaze/social/FacebookActivity;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookActivity$2;->this$0:Lcom/waze/mywaze/social/FacebookActivity;

    #getter for: Lcom/waze/mywaze/social/FacebookActivity;->connected:Z
    invoke-static {v1}, Lcom/waze/mywaze/social/FacebookActivity;->access$1(Lcom/waze/mywaze/social/FacebookActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookActivity$2;->this$0:Lcom/waze/mywaze/social/FacebookActivity;

    const-class v2, Lcom/waze/navigate/social/AddFromActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/waze/mywaze/social/FacebookActivity;->INTENT_FROM_WHERE:Ljava/lang/String;

    sget v2, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_FB:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookActivity$2;->this$0:Lcom/waze/mywaze/social/FacebookActivity;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Lcom/waze/mywaze/social/FacebookActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
