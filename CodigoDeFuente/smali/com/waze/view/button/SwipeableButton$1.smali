.class Lcom/waze/view/button/SwipeableButton$1;
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
    iput-object p1, p0, Lcom/waze/view/button/SwipeableButton$1;->this$0:Lcom/waze/view/button/SwipeableButton;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 126
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$1;->this$0:Lcom/waze/view/button/SwipeableButton;

    #getter for: Lcom/waze/view/button/SwipeableButton;->bgDisplayed:Z
    invoke-static {v0}, Lcom/waze/view/button/SwipeableButton;->access$0(Lcom/waze/view/button/SwipeableButton;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$1;->this$0:Lcom/waze/view/button/SwipeableButton;

    iget v0, v0, Lcom/waze/view/button/SwipeableButton;->startStopState:I

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$1;->this$0:Lcom/waze/view/button/SwipeableButton;

    #setter for: Lcom/waze/view/button/SwipeableButton;->state:I
    invoke-static {v0, v1}, Lcom/waze/view/button/SwipeableButton;->access$1(Lcom/waze/view/button/SwipeableButton;I)V

    .line 128
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton$1;->this$0:Lcom/waze/view/button/SwipeableButton;

    #calls: Lcom/waze/view/button/SwipeableButton;->displayBg()V
    invoke-static {v0}, Lcom/waze/view/button/SwipeableButton;->access$2(Lcom/waze/view/button/SwipeableButton;)V

    .line 130
    :cond_0
    return-void
.end method
