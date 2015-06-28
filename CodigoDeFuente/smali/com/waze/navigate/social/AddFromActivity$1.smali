.class Lcom/waze/navigate/social/AddFromActivity$1;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFromActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFromActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFromActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$1;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0xc9

    .line 159
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$1;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mSource:I
    invoke-static {v0}, Lcom/waze/navigate/social/AddFromActivity;->access$0(Lcom/waze/navigate/social/AddFromActivity;)I

    move-result v0

    sget v1, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_FB:I

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$1;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/social/AddFromActivity;->addFromFacebook()V

    .line 161
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$1;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    invoke-virtual {v0, v2}, Lcom/waze/navigate/social/AddFromActivity;->setResult(I)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$1;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/social/AddFromActivity;->finish()V

    .line 170
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$1;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mSource:I
    invoke-static {v0}, Lcom/waze/navigate/social/AddFromActivity;->access$0(Lcom/waze/navigate/social/AddFromActivity;)I

    move-result v0

    sget v1, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    if-ne v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$1;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #calls: Lcom/waze/navigate/social/AddFromActivity;->addFromShare()V
    invoke-static {v0}, Lcom/waze/navigate/social/AddFromActivity;->access$1(Lcom/waze/navigate/social/AddFromActivity;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$1;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/social/AddFromActivity;->addFromContacts()V

    .line 166
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$1;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    invoke-virtual {v0, v2}, Lcom/waze/navigate/social/AddFromActivity;->setResult(I)V

    goto :goto_0
.end method
