.class Lcom/waze/view/button/SwipeableButton$3;
.super Ljava/lang/Object;
.source "SwipeableButton.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/button/SwipeableButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/button/SwipeableButton;


# direct methods
.method constructor <init>(Lcom/waze/view/button/SwipeableButton;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v3, 0x0

    .line 96
    if-nez p3, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v1, 0x0

    .line 100
    .local v1, maxBugOccurring:Z
    iget-object v2, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    iget v2, v2, Lcom/waze/view/button/SwipeableButton;->lastValidValue:I

    if-nez v2, :cond_2

    const/16 v2, 0x64

    if-ne p2, v2, :cond_2

    .line 102
    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 103
    const/4 v1, 0x1

    .line 107
    :goto_1
    if-nez v1, :cond_0

    const/16 v2, 0xa

    if-le p2, v2, :cond_0

    .line 108
    rsub-int/lit8 v2, p2, 0x3c

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4270

    div-float v0, v2, v3

    .line 109
    .local v0, alphaProgress:F
    iget-object v2, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #calls: Lcom/waze/view/button/SwipeableButton;->setTextAlpha(F)V
    invoke-static {v2, v0}, Lcom/waze/view/button/SwipeableButton;->access$11(Lcom/waze/view/button/SwipeableButton;F)V

    .line 110
    iget-object v2, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    const/4 v3, 0x1

    #setter for: Lcom/waze/view/button/SwipeableButton;->state:I
    invoke-static {v2, v3}, Lcom/waze/view/button/SwipeableButton;->access$1(Lcom/waze/view/button/SwipeableButton;I)V

    .line 111
    iget-object v2, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->bgDisplayed:Z
    invoke-static {v2}, Lcom/waze/view/button/SwipeableButton;->access$0(Lcom/waze/view/button/SwipeableButton;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #calls: Lcom/waze/view/button/SwipeableButton;->displayBg()V
    invoke-static {v2}, Lcom/waze/view/button/SwipeableButton;->access$2(Lcom/waze/view/button/SwipeableButton;)V

    goto :goto_0

    .line 105
    .end local v0           #alphaProgress:F
    :cond_2
    iget-object v2, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    iput p2, v2, Lcom/waze/view/button/SwipeableButton;->lastValidValue:I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    const/4 v1, 0x0

    iput v1, v0, Lcom/waze/view/button/SwipeableButton;->lastValidValue:I

    .line 90
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    const/4 v1, 0x1

    iput v1, v0, Lcom/waze/view/button/SwipeableButton;->startStopState:I

    .line 91
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #calls: Lcom/waze/view/button/SwipeableButton;->maximizeSize()V
    invoke-static {v0}, Lcom/waze/view/button/SwipeableButton;->access$9(Lcom/waze/view/button/SwipeableButton;)V

    .line 92
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    iget-object v0, v0, Lcom/waze/view/button/SwipeableButton;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->animateStart:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/view/button/SwipeableButton;->access$10(Lcom/waze/view/button/SwipeableButton;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .parameter "seekBar2"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 65
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    iget v0, v0, Lcom/waze/view/button/SwipeableButton;->startStopState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 66
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/waze/view/button/SwipeableButton;->access$3(Lcom/waze/view/button/SwipeableButton;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 67
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    iget-object v0, v0, Lcom/waze/view/button/SwipeableButton;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->reduceProgress:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/view/button/SwipeableButton;->access$6(Lcom/waze/view/button/SwipeableButton;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->state:I
    invoke-static {v0}, Lcom/waze/view/button/SwipeableButton;->access$7(Lcom/waze/view/button/SwipeableButton;)I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->listener:Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;
    invoke-static {v0}, Lcom/waze/view/button/SwipeableButton;->access$8(Lcom/waze/view/button/SwipeableButton;)Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->listener:Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;
    invoke-static {v0}, Lcom/waze/view/button/SwipeableButton;->access$8(Lcom/waze/view/button/SwipeableButton;)Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;->onClick()V

    .line 77
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    iput v4, v0, Lcom/waze/view/button/SwipeableButton;->startStopState:I

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #setter for: Lcom/waze/view/button/SwipeableButton;->state:I
    invoke-static {v0, v4}, Lcom/waze/view/button/SwipeableButton;->access$1(Lcom/waze/view/button/SwipeableButton;I)V

    .line 81
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/waze/view/button/SwipeableButton;->access$3(Lcom/waze/view/button/SwipeableButton;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 82
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->listener:Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;
    invoke-static {v0}, Lcom/waze/view/button/SwipeableButton;->access$8(Lcom/waze/view/button/SwipeableButton;)Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->listener:Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;
    invoke-static {v0}, Lcom/waze/view/button/SwipeableButton;->access$8(Lcom/waze/view/button/SwipeableButton;)Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;->onSwipe()V

    .line 86
    :cond_1
    return-void

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    iget-object v0, v0, Lcom/waze/view/button/SwipeableButton;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->reduceProgress:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/view/button/SwipeableButton;->access$6(Lcom/waze/view/button/SwipeableButton;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$3;->this$0:Lcom/waze/view/button/SwipeableButton;

    #calls: Lcom/waze/view/button/SwipeableButton;->minimizeSize()V
    invoke-static {v0}, Lcom/waze/view/button/SwipeableButton;->access$4(Lcom/waze/view/button/SwipeableButton;)V

    goto :goto_0
.end method
