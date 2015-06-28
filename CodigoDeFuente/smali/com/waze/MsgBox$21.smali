.class Lcom/waze/MsgBox$21;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->openTripConfirmDialog(Ljava/lang/String;ILjava/lang/String;JJI)V
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


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;Landroid/app/Dialog;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$21;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$21;->val$dialog:Landroid/app/Dialog;

    iput-wide p3, p0, Lcom/waze/MsgBox$21;->val$callback:J

    iput-wide p5, p0, Lcom/waze/MsgBox$21;->val$context:J

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/waze/MsgBox$21;->this$0:Lcom/waze/MsgBox;

    const/4 v1, 0x1

    #setter for: Lcom/waze/MsgBox;->mTripSuggestButtonPressed:Z
    invoke-static {v0, v1}, Lcom/waze/MsgBox;->access$12(Lcom/waze/MsgBox;Z)V

    .line 770
    const-string v0, "TRIP_SUGGEST_SHOWN"

    const-string v1, "ACTION|TYPE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "X|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/waze/MsgBox$21;->this$0:Lcom/waze/MsgBox;

    #getter for: Lcom/waze/MsgBox;->mTripTypeStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/waze/MsgBox;->access$13(Lcom/waze/MsgBox;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/waze/MsgBox$21;->this$0:Lcom/waze/MsgBox;

    iget-object v1, p0, Lcom/waze/MsgBox$21;->val$dialog:Landroid/app/Dialog;

    iget-wide v2, p0, Lcom/waze/MsgBox$21;->val$callback:J

    iget-wide v4, p0, Lcom/waze/MsgBox$21;->val$context:J

    const/4 v6, 0x4

    #calls: Lcom/waze/MsgBox;->confirnDialogNoHandler(Landroid/app/Dialog;JJI)V
    invoke-static/range {v0 .. v6}, Lcom/waze/MsgBox;->access$11(Lcom/waze/MsgBox;Landroid/app/Dialog;JJI)V

    .line 772
    return-void
.end method
