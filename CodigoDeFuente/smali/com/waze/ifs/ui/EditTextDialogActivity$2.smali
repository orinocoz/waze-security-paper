.class Lcom/waze/ifs/ui/EditTextDialogActivity$2;
.super Ljava/lang/Object;
.source "EditTextDialogActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/EditTextDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/EditTextDialogActivity;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/EditTextDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/EditTextDialogActivity$2;->this$0:Lcom/waze/ifs/ui/EditTextDialogActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 102
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogActivity$2;->this$0:Lcom/waze/ifs/ui/EditTextDialogActivity;

    #calls: Lcom/waze/ifs/ui/EditTextDialogActivity;->doDone()V
    invoke-static {v0}, Lcom/waze/ifs/ui/EditTextDialogActivity;->access$0(Lcom/waze/ifs/ui/EditTextDialogActivity;)V

    .line 104
    iget-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogActivity$2;->this$0:Lcom/waze/ifs/ui/EditTextDialogActivity;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/EditTextDialogActivity;->finish()V

    .line 106
    :cond_0
    return v1
.end method
