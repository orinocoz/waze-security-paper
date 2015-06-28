.class Lcom/waze/LayoutManager$9;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$9;->this$0:Lcom/waze/LayoutManager;

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/waze/LayoutManager$9;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->nMenuType:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$6(Lcom/waze/LayoutManager;)I

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/waze/LayoutManager$9;->this$0:Lcom/waze/LayoutManager;

    iget-object v1, p0, Lcom/waze/LayoutManager$9;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->isTooltipMainMenuShown:Z
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$5(Lcom/waze/LayoutManager;)Z

    move-result v1

    sget-object v2, Lcom/waze/TooltipType;->MAIN_MENU:Lcom/waze/TooltipType;

    #calls: Lcom/waze/LayoutManager;->closeTooltip(ZLcom/waze/TooltipType;)V
    invoke-static {v0, v1, v2}, Lcom/waze/LayoutManager;->access$3(Lcom/waze/LayoutManager;ZLcom/waze/TooltipType;)V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager$9;->this$0:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->IsPopupsShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/waze/LayoutManager$9;->this$0:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/waze/LayoutManager$9;->this$0:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->openMainMenu()V

    .line 601
    return-void
.end method

.method public onSwipe()V
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/waze/LayoutManager$9;->this$0:Lcom/waze/LayoutManager;

    iget-object v1, p0, Lcom/waze/LayoutManager$9;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->isTooltipMainMenuShown:Z
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$5(Lcom/waze/LayoutManager;)Z

    move-result v1

    sget-object v2, Lcom/waze/TooltipType;->MAIN_MENU:Lcom/waze/TooltipType;

    #calls: Lcom/waze/LayoutManager;->closeTooltip(ZLcom/waze/TooltipType;)V
    invoke-static {v0, v1, v2}, Lcom/waze/LayoutManager;->access$3(Lcom/waze/LayoutManager;ZLcom/waze/TooltipType;)V

    .line 578
    iget-object v0, p0, Lcom/waze/LayoutManager$9;->this$0:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->IsPopupsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/waze/LayoutManager$9;->this$0:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 581
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 582
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->asrCancel()V

    .line 584
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 585
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->startNavigateActivity()V

    .line 587
    :cond_2
    return-void
.end method
