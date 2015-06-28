.class Lcom/waze/rtalerts/RTAlertsCommentsEditor$1;
.super Ljava/lang/Object;
.source "RTAlertsCommentsEditor.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsCommentsEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsCommentsEditor;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsCommentsEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor$1;->this$0:Lcom/waze/rtalerts/RTAlertsCommentsEditor;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 68
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor$1;->this$0:Lcom/waze/rtalerts/RTAlertsCommentsEditor;

    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor$1;->this$0:Lcom/waze/rtalerts/RTAlertsCommentsEditor;

    #getter for: Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mEditBox:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->access$0(Lcom/waze/rtalerts/RTAlertsCommentsEditor;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/waze/rtalerts/RTAlertsCommentsEditor;->done(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->access$1(Lcom/waze/rtalerts/RTAlertsCommentsEditor;Ljava/lang/String;)V

    .line 71
    :cond_0
    return v2
.end method
