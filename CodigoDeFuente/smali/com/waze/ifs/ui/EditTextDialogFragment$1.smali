.class Lcom/waze/ifs/ui/EditTextDialogFragment$1;
.super Ljava/lang/Object;
.source "EditTextDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment$1;->this$0:Lcom/waze/ifs/ui/EditTextDialogFragment;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogFragment$1;->this$0:Lcom/waze/ifs/ui/EditTextDialogFragment;

    #calls: Lcom/waze/ifs/ui/EditTextDialogFragment;->doDone()V
    invoke-static {v0}, Lcom/waze/ifs/ui/EditTextDialogFragment;->access$0(Lcom/waze/ifs/ui/EditTextDialogFragment;)V

    .line 143
    return-void
.end method
