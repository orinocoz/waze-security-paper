.class Lcom/waze/LayoutManager$26;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$type:Lcom/waze/TooltipType;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;Lcom/waze/TooltipType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$26;->this$0:Lcom/waze/LayoutManager;

    iput-object p2, p0, Lcom/waze/LayoutManager$26;->val$type:Lcom/waze/TooltipType;

    .line 2750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/waze/LayoutManager$26;->this$0:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/waze/LayoutManager$26;->val$type:Lcom/waze/TooltipType;

    #calls: Lcom/waze/LayoutManager;->closeTooltip(ZLcom/waze/TooltipType;)V
    invoke-static {v0, v1, v2}, Lcom/waze/LayoutManager;->access$3(Lcom/waze/LayoutManager;ZLcom/waze/TooltipType;)V

    .line 2754
    return-void
.end method
