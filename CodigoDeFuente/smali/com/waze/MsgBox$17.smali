.class Lcom/waze/MsgBox$17;
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

.field private final synthetic val$valueOne:I


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;Landroid/app/Dialog;JIJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$17;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$17;->val$dialog:Landroid/app/Dialog;

    iput-wide p3, p0, Lcom/waze/MsgBox$17;->val$callback:J

    iput p5, p0, Lcom/waze/MsgBox$17;->val$valueOne:I

    iput-wide p6, p0, Lcom/waze/MsgBox$17;->val$context:J

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/MsgBox$17;)Lcom/waze/MsgBox;
    .locals 1
    .parameter

    .prologue
    .line 607
    iget-object v0, p0, Lcom/waze/MsgBox$17;->this$0:Lcom/waze/MsgBox;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 609
    iget-object v1, p0, Lcom/waze/MsgBox$17;->val$dialog:Landroid/app/Dialog;

    const v2, 0x7f090232

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 610
    iget-object v1, p0, Lcom/waze/MsgBox$17;->val$dialog:Landroid/app/Dialog;

    const v2, 0x7f09022f

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 613
    :try_start_0
    iget-object v1, p0, Lcom/waze/MsgBox$17;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    iget-wide v1, p0, Lcom/waze/MsgBox$17;->val$callback:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 619
    new-instance v0, Lcom/waze/MsgBox$17$1;

    iget v2, p0, Lcom/waze/MsgBox$17;->val$valueOne:I

    iget-wide v3, p0, Lcom/waze/MsgBox$17;->val$callback:J

    iget-wide v5, p0, Lcom/waze/MsgBox$17;->val$context:J

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/waze/MsgBox$17$1;-><init>(Lcom/waze/MsgBox$17;IJJ)V

    .line 624
    .local v0, doRun:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 626
    .end local v0           #doRun:Ljava/lang/Runnable;
    :cond_0
    return-void

    .line 615
    :catch_0
    move-exception v1

    goto :goto_0
.end method
