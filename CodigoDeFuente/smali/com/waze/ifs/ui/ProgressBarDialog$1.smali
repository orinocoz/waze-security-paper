.class Lcom/waze/ifs/ui/ProgressBarDialog$1;
.super Ljava/lang/Object;
.source "ProgressBarDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/ProgressBarDialog;->_dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/ProgressBarDialog;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/ProgressBarDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/ProgressBarDialog$1;->this$0:Lcom/waze/ifs/ui/ProgressBarDialog;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog$1;->this$0:Lcom/waze/ifs/ui/ProgressBarDialog;

    iget-boolean v0, v0, Lcom/waze/ifs/ui/ProgressBarDialog;->mShowing:Z

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog$1;->this$0:Lcom/waze/ifs/ui/ProgressBarDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/waze/ifs/ui/ProgressBarDialog;->mShowing:Z

    .line 80
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog$1;->this$0:Lcom/waze/ifs/ui/ProgressBarDialog;

    #getter for: Lcom/waze/ifs/ui/ProgressBarDialog;->mImageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/ifs/ui/ProgressBarDialog;->access$0(Lcom/waze/ifs/ui/ProgressBarDialog;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog$1;->this$0:Lcom/waze/ifs/ui/ProgressBarDialog;

    iget-object v0, v0, Lcom/waze/ifs/ui/ProgressBarDialog;->mAnimation:Lcom/waze/view/map/ProgressAnimation;

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->stop()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog$1;->this$0:Lcom/waze/ifs/ui/ProgressBarDialog;

    #getter for: Lcom/waze/ifs/ui/ProgressBarDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/waze/ifs/ui/ProgressBarDialog;->access$1(Lcom/waze/ifs/ui/ProgressBarDialog;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog$1;->this$0:Lcom/waze/ifs/ui/ProgressBarDialog;

    #getter for: Lcom/waze/ifs/ui/ProgressBarDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/waze/ifs/ui/ProgressBarDialog;->access$1(Lcom/waze/ifs/ui/ProgressBarDialog;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/ifs/ui/ActivityBase;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog$1;->this$0:Lcom/waze/ifs/ui/ProgressBarDialog;

    #getter for: Lcom/waze/ifs/ui/ProgressBarDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/waze/ifs/ui/ProgressBarDialog;->access$1(Lcom/waze/ifs/ui/ProgressBarDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog$1;->this$0:Lcom/waze/ifs/ui/ProgressBarDialog;

    #calls: Landroid/app/Dialog;->dismiss()V
    invoke-static {v0}, Lcom/waze/ifs/ui/ProgressBarDialog;->access$2(Lcom/waze/ifs/ui/ProgressBarDialog;)V

    .line 90
    :cond_1
    return-void
.end method
