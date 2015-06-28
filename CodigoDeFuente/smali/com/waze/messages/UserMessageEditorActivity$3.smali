.class Lcom/waze/messages/UserMessageEditorActivity$3;
.super Ljava/lang/Object;
.source "UserMessageEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/messages/UserMessageEditorActivity;->showErrorPopup(Lcom/waze/strings/DisplayStrings;)V
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
    iput-object p1, p0, Lcom/waze/messages/UserMessageEditorActivity$3;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/waze/messages/UserMessageEditorActivity$3;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/waze/messages/UserMessageEditorActivity;->setResult(I)V

    .line 220
    iget-object v0, p0, Lcom/waze/messages/UserMessageEditorActivity$3;->this$0:Lcom/waze/messages/UserMessageEditorActivity;

    invoke-virtual {v0}, Lcom/waze/messages/UserMessageEditorActivity;->finish()V

    .line 221
    return-void
.end method
