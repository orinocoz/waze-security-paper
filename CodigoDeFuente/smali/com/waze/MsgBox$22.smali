.class Lcom/waze/MsgBox$22;
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
    iput-object p1, p0, Lcom/waze/MsgBox$22;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$22;->val$dialog:Landroid/app/Dialog;

    iput-wide p3, p0, Lcom/waze/MsgBox$22;->val$callback:J

    iput-wide p5, p0, Lcom/waze/MsgBox$22;->val$context:J

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/waze/MsgBox$22;->this$0:Lcom/waze/MsgBox;

    const/4 v1, 0x1

    #setter for: Lcom/waze/MsgBox;->mTripSuggestButtonPressed:Z
    invoke-static {v0, v1}, Lcom/waze/MsgBox;->access$12(Lcom/waze/MsgBox;Z)V

    .line 779
    iget-object v0, p0, Lcom/waze/MsgBox$22;->val$dialog:Landroid/app/Dialog;

    const v1, 0x7f09022f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->hasExpired()Z

    move-result v7

    .line 780
    .local v7, timer:Z
    const-string v1, "TRIP_SUGGEST_SHOWN"

    const-string v2, "ACTION|TYPE"

    new-instance v3, Ljava/lang/StringBuilder;

    if-eqz v7, :cond_0

    const-string v0, "TIMEOUT|"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/waze/MsgBox$22;->this$0:Lcom/waze/MsgBox;

    #getter for: Lcom/waze/MsgBox;->mTripTypeStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/MsgBox;->access$13(Lcom/waze/MsgBox;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/waze/MsgBox$22;->this$0:Lcom/waze/MsgBox;

    iget-object v1, p0, Lcom/waze/MsgBox$22;->val$dialog:Landroid/app/Dialog;

    iget-wide v2, p0, Lcom/waze/MsgBox$22;->val$callback:J

    iget-wide v4, p0, Lcom/waze/MsgBox$22;->val$context:J

    const/4 v6, 0x4

    #calls: Lcom/waze/MsgBox;->confirnDialogNoHandler(Landroid/app/Dialog;JJI)V
    invoke-static/range {v0 .. v6}, Lcom/waze/MsgBox;->access$11(Lcom/waze/MsgBox;Landroid/app/Dialog;JJI)V

    .line 782
    return-void

    .line 780
    :cond_0
    const-string v0, "NO|"

    goto :goto_0
.end method
