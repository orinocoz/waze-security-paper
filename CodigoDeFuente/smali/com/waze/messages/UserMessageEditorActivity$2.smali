.class Lcom/waze/messages/UserMessageEditorActivity$2;
.super Ljava/lang/Object;
.source "UserMessageEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/messages/UserMessageEditorActivity;->setTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/messages/UserMessageEditorActivity;


# direct methods
.method constructor <init>(Lcom/waze/messages/UserMessageEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/messages/UserMessageEditorActivity$2;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 197
    invoke-static {}, Lcom/waze/AppService;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/waze/messages/UserMessageEditorActivity$2;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SENDING_PING_FAILED__PLEASE_TRY_AGAIN_LATER:Lcom/waze/strings/DisplayStrings;

    #calls: Lcom/waze/messages/UserMessageEditorActivity;->showErrorPopup(Lcom/waze/strings/DisplayStrings;)V
    invoke-static {v1, v2}, Lcom/waze/messages/UserMessageEditorActivity;->access$1(Lcom/waze/messages/UserMessageEditorActivity;Lcom/waze/strings/DisplayStrings;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/waze/messages/UserMessageEditorActivity$2;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    #getter for: Lcom/waze/messages/UserMessageEditorActivity;->mEditorView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/waze/messages/UserMessageEditorActivity;->access$2(Lcom/waze/messages/UserMessageEditorActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, string:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/waze/messages/UserMessageEditorActivity$2;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    #getter for: Lcom/waze/messages/UserMessageEditorActivity;->mOnSendHandler:Lcom/waze/messages/OnSendHandler;
    invoke-static {v1}, Lcom/waze/messages/UserMessageEditorActivity;->access$3(Lcom/waze/messages/UserMessageEditorActivity;)Lcom/waze/messages/OnSendHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/waze/messages/UserMessageEditorActivity$2;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    #getter for: Lcom/waze/messages/UserMessageEditorActivity;->mOnSendHandler:Lcom/waze/messages/OnSendHandler;
    invoke-static {v1}, Lcom/waze/messages/UserMessageEditorActivity;->access$3(Lcom/waze/messages/UserMessageEditorActivity;)Lcom/waze/messages/OnSendHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/messages/UserMessageEditorActivity$2;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    #getter for: Lcom/waze/messages/UserMessageEditorActivity;->mIsPrivate:Z
    invoke-static {v2}, Lcom/waze/messages/UserMessageEditorActivity;->access$4(Lcom/waze/messages/UserMessageEditorActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/waze/messages/UserMessageEditorActivity$2;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    #getter for: Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;
    invoke-static {v3}, Lcom/waze/messages/UserMessageEditorActivity;->access$5(Lcom/waze/messages/UserMessageEditorActivity;)Lcom/waze/user/UserData;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/waze/messages/OnSendHandler;->onSend(ZLcom/waze/user/UserData;Ljava/lang/String;)V

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/waze/messages/UserMessageEditorActivity$2;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/waze/messages/UserMessageEditorActivity;->setResult(I)V

    .line 206
    iget-object v1, p0, Lcom/waze/messages/UserMessageEditorActivity$2;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    invoke-virtual {v1}, Lcom/waze/messages/UserMessageEditorActivity;->finish()V

    goto :goto_0
.end method
