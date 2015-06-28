.class Lcom/waze/MsgBox$7$1;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/MsgBox$7;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$onClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/waze/MsgBox$7;Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$7$1;->this$1:Lcom/waze/MsgBox$7;

    iput-object p2, p0, Lcom/waze/MsgBox$7$1;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/waze/MsgBox$7$1;->val$onClick:Landroid/content/DialogInterface$OnClickListener;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/waze/MsgBox$7$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 386
    iget-object v0, p0, Lcom/waze/MsgBox$7$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 387
    iget-object v0, p0, Lcom/waze/MsgBox$7$1;->val$onClick:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/waze/MsgBox$7$1;->val$onClick:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/waze/MsgBox$7$1;->val$dialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    goto :goto_0
.end method
