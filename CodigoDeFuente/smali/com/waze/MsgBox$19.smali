.class Lcom/waze/MsgBox$19;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->openChooseNumberDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
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
    iput-object p1, p0, Lcom/waze/MsgBox$19;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$19;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/waze/MsgBox$19;->val$callback:Landroid/content/DialogInterface$OnClickListener;

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/waze/MsgBox$19;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 662
    iget-object v0, p0, Lcom/waze/MsgBox$19;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_0
    iget-object v0, p0, Lcom/waze/MsgBox$19;->val$callback:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/waze/MsgBox$19;->val$dialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 668
    return-void

    .line 664
    :catch_0
    move-exception v0

    goto :goto_0
.end method
