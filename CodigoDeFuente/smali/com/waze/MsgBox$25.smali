.class Lcom/waze/MsgBox$25;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->openConfirmDialogJavaCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$callback:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$25;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$25;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/waze/MsgBox$25;->val$callback:Landroid/content/DialogInterface$OnClickListener;

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/waze/MsgBox$25;->val$dialog:Landroid/app/Dialog;

    const v1, 0x7f090232

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 856
    iget-object v0, p0, Lcom/waze/MsgBox$25;->val$dialog:Landroid/app/Dialog;

    const v1, 0x7f09022f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 858
    :try_start_0
    iget-object v0, p0, Lcom/waze/MsgBox$25;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 859
    iget-object v0, p0, Lcom/waze/MsgBox$25;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_0
    iget-object v0, p0, Lcom/waze/MsgBox$25;->val$callback:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/waze/MsgBox$25;->val$dialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 864
    return-void

    .line 860
    :catch_0
    move-exception v0

    goto :goto_0
.end method
