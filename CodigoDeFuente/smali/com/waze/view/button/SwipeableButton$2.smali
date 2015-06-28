.class Lcom/waze/view/button/SwipeableButton$2;
.super Ljava/lang/Object;
.source "SwipeableButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/button/SwipeableButton;
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
    iput-object p1, p0, Lcom/waze/view/button/SwipeableButton$2;->this$0:Lcom/waze/view/button/SwipeableButton;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton$2;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/waze/view/button/SwipeableButton;->access$3(Lcom/waze/view/button/SwipeableButton;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v0, v1, -0xa

    .line 135
    .local v0, newValue:I
    if-gtz v0, :cond_1

    .line 136
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton$2;->this$0:Lcom/waze/view/button/SwipeableButton;

    #calls: Lcom/waze/view/button/SwipeableButton;->minimizeSize()V
    invoke-static {v1}, Lcom/waze/view/button/SwipeableButton;->access$4(Lcom/waze/view/button/SwipeableButton;)V

    .line 138
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton$2;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/waze/view/button/SwipeableButton;->access$3(Lcom/waze/view/button/SwipeableButton;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 139
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton$2;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->bgDisplayed:Z
    invoke-static {v1}, Lcom/waze/view/button/SwipeableButton;->access$0(Lcom/waze/view/button/SwipeableButton;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton$2;->this$0:Lcom/waze/view/button/SwipeableButton;

    iget v1, v1, Lcom/waze/view/button/SwipeableButton;->startStopState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton$2;->this$0:Lcom/waze/view/button/SwipeableButton;

    iput v3, v1, Lcom/waze/view/button/SwipeableButton;->startStopState:I

    .line 141
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton$2;->this$0:Lcom/waze/view/button/SwipeableButton;

    #calls: Lcom/waze/view/button/SwipeableButton;->removeBg()V
    invoke-static {v1}, Lcom/waze/view/button/SwipeableButton;->access$5(Lcom/waze/view/button/SwipeableButton;)V

    .line 146
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton$2;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/waze/view/button/SwipeableButton;->access$3(Lcom/waze/view/button/SwipeableButton;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 147
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton$2;->this$0:Lcom/waze/view/button/SwipeableButton;

    iget-object v1, v1, Lcom/waze/view/button/SwipeableButton;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
