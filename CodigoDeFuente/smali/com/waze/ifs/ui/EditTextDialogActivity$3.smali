.class Lcom/waze/ifs/ui/EditTextDialogActivity$3;
.super Ljava/lang/Object;
.source "EditTextDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/ifs/ui/EditTextDialogActivity$3;->this$0:Lcom/waze/ifs/ui/EditTextDialogActivity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogActivity$3;->this$0:Lcom/waze/ifs/ui/EditTextDialogActivity;

    invoke-virtual {v0, p1}, Lcom/waze/ifs/ui/EditTextDialogActivity;->speechRecognitionClicked(Landroid/view/View;)V

    .line 138
    return-void
.end method
