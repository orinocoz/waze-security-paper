.class Lcom/waze/LayoutManager$27;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->setCloseTooltipEvents(Lcom/waze/TooltipType;Landroid/widget/LinearLayout;)V
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
    iput-object p1, p0, Lcom/waze/LayoutManager$27;->this$0:Lcom/waze/LayoutManager;

    .line 2766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 2770
    iget-object v1, p0, Lcom/waze/LayoutManager$27;->this$0:Lcom/waze/LayoutManager;

    iget-object v2, p0, Lcom/waze/LayoutManager$27;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->isTooltipFriendsShown:Z
    invoke-static {v2}, Lcom/waze/LayoutManager;->access$2(Lcom/waze/LayoutManager;)Z

    move-result v2

    sget-object v3, Lcom/waze/TooltipType;->FRIENDS:Lcom/waze/TooltipType;

    #calls: Lcom/waze/LayoutManager;->closeTooltip(ZLcom/waze/TooltipType;)V
    invoke-static {v1, v2, v3}, Lcom/waze/LayoutManager;->access$3(Lcom/waze/LayoutManager;ZLcom/waze/TooltipType;)V

    .line 2771
    iget-object v1, p0, Lcom/waze/LayoutManager$27;->this$0:Lcom/waze/LayoutManager;

    iget-object v2, p0, Lcom/waze/LayoutManager$27;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->isTooltipMainMenuShown:Z
    invoke-static {v2}, Lcom/waze/LayoutManager;->access$5(Lcom/waze/LayoutManager;)Z

    move-result v2

    sget-object v3, Lcom/waze/TooltipType;->MAIN_MENU:Lcom/waze/TooltipType;

    #calls: Lcom/waze/LayoutManager;->closeTooltip(ZLcom/waze/TooltipType;)V
    invoke-static {v1, v2, v3}, Lcom/waze/LayoutManager;->access$3(Lcom/waze/LayoutManager;ZLcom/waze/TooltipType;)V

    .line 2772
    iget-object v1, p0, Lcom/waze/LayoutManager$27;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$9(Lcom/waze/LayoutManager;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f0903c1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2773
    .local v0, frame:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2774
    const/4 v1, 0x0

    return v1
.end method
