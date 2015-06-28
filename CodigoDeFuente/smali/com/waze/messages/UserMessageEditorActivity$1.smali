.class Lcom/waze/messages/UserMessageEditorActivity$1;
.super Ljava/lang/Object;
.source "UserMessageEditorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/messages/UserMessageEditorActivity;
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
    iput-object p1, p0, Lcom/waze/messages/UserMessageEditorActivity$1;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/16 v1, 0x77

    .line 240
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/waze/messages/UserMessageEditorActivity$1;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    #getter for: Lcom/waze/messages/UserMessageEditorActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;
    invoke-static {v0}, Lcom/waze/messages/UserMessageEditorActivity;->access$0(Lcom/waze/messages/UserMessageEditorActivity;)Lcom/waze/view/title/TitleBar;

    move-result-object v0

    const/16 v1, 0x72

    const/16 v2, 0xd2

    const/16 v3, 0xee

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/view/title/TitleBar;->setCloseTextColor(III)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/waze/messages/UserMessageEditorActivity$1;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    #getter for: Lcom/waze/messages/UserMessageEditorActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;
    invoke-static {v0}, Lcom/waze/messages/UserMessageEditorActivity;->access$0(Lcom/waze/messages/UserMessageEditorActivity;)Lcom/waze/view/title/TitleBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1}, Lcom/waze/view/title/TitleBar;->setCloseTextColor(III)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 236
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 233
    return-void
.end method
