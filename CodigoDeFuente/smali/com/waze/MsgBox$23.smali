.class Lcom/waze/MsgBox$23;
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
    iput-object p1, p0, Lcom/waze/MsgBox$23;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$23;->val$dialog:Landroid/app/Dialog;

    iput-wide p3, p0, Lcom/waze/MsgBox$23;->val$callback:J

    iput-wide p5, p0, Lcom/waze/MsgBox$23;->val$context:J

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/MsgBox$23;)Lcom/waze/MsgBox;
    .locals 1
    .parameter

    .prologue
    .line 784
    iget-object v0, p0, Lcom/waze/MsgBox$23;->this$0:Lcom/waze/MsgBox;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const v5, 0x7f090232

    .line 786
    iget-object v1, p0, Lcom/waze/MsgBox$23;->this$0:Lcom/waze/MsgBox;

    const/4 v2, 0x1

    #setter for: Lcom/waze/MsgBox;->mTripSuggestButtonPressed:Z
    invoke-static {v1, v2}, Lcom/waze/MsgBox;->access$12(Lcom/waze/MsgBox;Z)V

    .line 787
    iget-object v1, p0, Lcom/waze/MsgBox$23;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->hasExpired()Z

    move-result v6

    .line 788
    .local v6, timer:Z
    const-string v2, "TRIP_SUGGEST_SHOWN"

    const-string v3, "ACTION|TYPE"

    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz v6, :cond_1

    const-string v1, "TIMEOUT|"

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/waze/MsgBox$23;->this$0:Lcom/waze/MsgBox;

    #getter for: Lcom/waze/MsgBox;->mTripTypeStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/MsgBox;->access$13(Lcom/waze/MsgBox;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/waze/MsgBox$23;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 790
    iget-object v1, p0, Lcom/waze/MsgBox$23;->val$dialog:Landroid/app/Dialog;

    const v2, 0x7f09022f

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/waze/MsgBox$23;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :goto_1
    iget-wide v1, p0, Lcom/waze/MsgBox$23;->val$callback:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 797
    new-instance v0, Lcom/waze/MsgBox$23$1;

    iget-wide v2, p0, Lcom/waze/MsgBox$23;->val$callback:J

    iget-wide v4, p0, Lcom/waze/MsgBox$23;->val$context:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/waze/MsgBox$23$1;-><init>(Lcom/waze/MsgBox$23;JJ)V

    .line 802
    .local v0, doRun:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 804
    .end local v0           #doRun:Ljava/lang/Runnable;
    :cond_0
    return-void

    .line 788
    :cond_1
    const-string v1, "YES|"

    goto :goto_0

    .line 795
    :catch_0
    move-exception v1

    goto :goto_1
.end method
