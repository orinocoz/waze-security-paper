.class Lcom/waze/LayoutManager$8;
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
    iput-object p1, p0, Lcom/waze/LayoutManager$8;->this$0:Lcom/waze/LayoutManager;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/waze/LayoutManager$8;->this$0:Lcom/waze/LayoutManager;

    iget-object v1, p0, Lcom/waze/LayoutManager$8;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->isTooltipRoadClosureShown:Z
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$4(Lcom/waze/LayoutManager;)Z

    move-result v1

    sget-object v2, Lcom/waze/TooltipType;->ROAD_CLOSURE:Lcom/waze/TooltipType;

    #calls: Lcom/waze/LayoutManager;->closeTooltip(ZLcom/waze/TooltipType;)V
    invoke-static {v0, v1, v2}, Lcom/waze/LayoutManager;->access$3(Lcom/waze/LayoutManager;ZLcom/waze/TooltipType;)V

    .line 565
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->savePoiPosition(Z)V

    .line 566
    return-void
.end method

.method public onSwipe()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 557
    iget-object v0, p0, Lcom/waze/LayoutManager$8;->this$0:Lcom/waze/LayoutManager;

    iget-object v1, p0, Lcom/waze/LayoutManager$8;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->isTooltipRoadClosureShown:Z
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$4(Lcom/waze/LayoutManager;)Z

    move-result v1

    sget-object v2, Lcom/waze/TooltipType;->ROAD_CLOSURE:Lcom/waze/TooltipType;

    #calls: Lcom/waze/LayoutManager;->closeTooltip(ZLcom/waze/TooltipType;)V
    invoke-static {v0, v1, v2}, Lcom/waze/LayoutManager;->access$3(Lcom/waze/LayoutManager;ZLcom/waze/TooltipType;)V

    .line 558
    iget-object v0, p0, Lcom/waze/LayoutManager$8;->this$0:Lcom/waze/LayoutManager;

    iput-boolean v3, v0, Lcom/waze/LayoutManager;->pendingReportSwipe:Z

    .line 559
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/waze/NativeManager;->savePoiPosition(Z)V

    .line 560
    return-void
.end method
