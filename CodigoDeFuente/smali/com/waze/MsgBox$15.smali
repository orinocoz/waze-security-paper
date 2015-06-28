.class Lcom/waze/MsgBox$15;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->openChoiceDialog(Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/lang/String;ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$callback:J

.field private final synthetic val$cancelValue:I

.field private final synthetic val$context:J

.field private final synthetic val$defaultOption:I

.field private final synthetic val$isCancellable:Z

.field private final synthetic val$valueOne:I

.field private final synthetic val$valueTwo:I


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;ZJJIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$15;->this$0:Lcom/waze/MsgBox;

    iput-boolean p2, p0, Lcom/waze/MsgBox$15;->val$isCancellable:Z

    iput-wide p3, p0, Lcom/waze/MsgBox$15;->val$callback:J

    iput-wide p5, p0, Lcom/waze/MsgBox$15;->val$context:J

    iput p7, p0, Lcom/waze/MsgBox$15;->val$cancelValue:I

    iput p8, p0, Lcom/waze/MsgBox$15;->val$defaultOption:I

    iput p9, p0, Lcom/waze/MsgBox$15;->val$valueOne:I

    iput p10, p0, Lcom/waze/MsgBox$15;->val$valueTwo:I

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 7
    .parameter "dialog"

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/waze/MsgBox$15;->val$isCancellable:Z

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/waze/MsgBox$15;->this$0:Lcom/waze/MsgBox;

    move-object v1, p1

    check-cast v1, Landroid/app/Dialog;

    iget-wide v2, p0, Lcom/waze/MsgBox$15;->val$callback:J

    iget-wide v4, p0, Lcom/waze/MsgBox$15;->val$context:J

    iget v6, p0, Lcom/waze/MsgBox$15;->val$cancelValue:I

    #calls: Lcom/waze/MsgBox;->confirnDialogNoHandler(Landroid/app/Dialog;JJI)V
    invoke-static/range {v0 .. v6}, Lcom/waze/MsgBox;->access$11(Lcom/waze/MsgBox;Landroid/app/Dialog;JJI)V

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/waze/MsgBox$15;->this$0:Lcom/waze/MsgBox;

    move-object v1, p1

    check-cast v1, Landroid/app/Dialog;

    iget-wide v2, p0, Lcom/waze/MsgBox$15;->val$callback:J

    iget-wide v4, p0, Lcom/waze/MsgBox$15;->val$context:J

    iget v6, p0, Lcom/waze/MsgBox$15;->val$defaultOption:I

    if-nez v6, :cond_1

    iget v6, p0, Lcom/waze/MsgBox$15;->val$valueOne:I

    :goto_1
    #calls: Lcom/waze/MsgBox;->confirnDialogNoHandler(Landroid/app/Dialog;JJI)V
    invoke-static/range {v0 .. v6}, Lcom/waze/MsgBox;->access$11(Lcom/waze/MsgBox;Landroid/app/Dialog;JJI)V

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/waze/MsgBox$15;->val$valueTwo:I

    goto :goto_1
.end method
