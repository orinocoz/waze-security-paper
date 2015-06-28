.class Lcom/waze/MsgBox$16;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$context:J

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$valueTwo:I


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;Landroid/app/Dialog;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$16;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$16;->val$dialog:Landroid/app/Dialog;

    iput-wide p3, p0, Lcom/waze/MsgBox$16;->val$callback:J

    iput-wide p5, p0, Lcom/waze/MsgBox$16;->val$context:J

    iput p7, p0, Lcom/waze/MsgBox$16;->val$valueTwo:I

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/waze/MsgBox$16;->val$dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 604
    iget-object v0, p0, Lcom/waze/MsgBox$16;->this$0:Lcom/waze/MsgBox;

    iget-object v1, p0, Lcom/waze/MsgBox$16;->val$dialog:Landroid/app/Dialog;

    iget-wide v2, p0, Lcom/waze/MsgBox$16;->val$callback:J

    iget-wide v4, p0, Lcom/waze/MsgBox$16;->val$context:J

    iget v6, p0, Lcom/waze/MsgBox$16;->val$valueTwo:I

    #calls: Lcom/waze/MsgBox;->confirnDialogNoHandler(Landroid/app/Dialog;JJI)V
    invoke-static/range {v0 .. v6}, Lcom/waze/MsgBox;->access$11(Lcom/waze/MsgBox;Landroid/app/Dialog;JJI)V

    .line 605
    return-void
.end method
