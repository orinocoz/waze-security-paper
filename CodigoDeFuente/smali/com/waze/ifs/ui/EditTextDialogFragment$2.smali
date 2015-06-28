.class Lcom/waze/ifs/ui/EditTextDialogFragment$2;
.super Ljava/lang/Object;
.source "EditTextDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/EditTextDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/EditTextDialogFragment;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/EditTextDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment$2;->this$0:Lcom/waze/ifs/ui/EditTextDialogFragment;

    .line 156
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

    .line 159
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogFragment$2;->this$0:Lcom/waze/ifs/ui/EditTextDialogFragment;

    #calls: Lcom/waze/ifs/ui/EditTextDialogFragment;->doDone()V
    invoke-static {v0}, Lcom/waze/ifs/ui/EditTextDialogFragment;->access$0(Lcom/waze/ifs/ui/EditTextDialogFragment;)V

    .line 162
    :cond_0
    return v1
.end method
