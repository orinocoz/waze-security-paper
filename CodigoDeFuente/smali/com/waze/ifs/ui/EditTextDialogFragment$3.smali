.class Lcom/waze/ifs/ui/EditTextDialogFragment$3;
.super Ljava/lang/Object;
.source "EditTextDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment$3;->this$0:Lcom/waze/ifs/ui/EditTextDialogFragment;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 190
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment$3;->this$0:Lcom/waze/ifs/ui/EditTextDialogFragment;

    #getter for: Lcom/waze/ifs/ui/EditTextDialogFragment;->mMaxLength:I
    invoke-static {v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;->access$1(Lcom/waze/ifs/ui/EditTextDialogFragment;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 191
    const/16 v0, 0x12c

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 193
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 186
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 183
    return-void
.end method
