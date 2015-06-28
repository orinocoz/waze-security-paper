.class Lcom/waze/LayoutManager$7;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/LayoutManager$7;->this$0:Lcom/waze/LayoutManager;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 543
    iget-object v1, p0, Lcom/waze/LayoutManager$7;->this$0:Lcom/waze/LayoutManager;

    iget-object v2, p0, Lcom/waze/LayoutManager$7;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->isTooltipFriendsShown:Z
    invoke-static {v2}, Lcom/waze/LayoutManager;->access$2(Lcom/waze/LayoutManager;)Z

    move-result v2

    sget-object v3, Lcom/waze/TooltipType;->FRIENDS:Lcom/waze/TooltipType;

    #calls: Lcom/waze/LayoutManager;->closeTooltip(ZLcom/waze/TooltipType;)V
    invoke-static {v1, v2, v3}, Lcom/waze/LayoutManager;->access$3(Lcom/waze/LayoutManager;ZLcom/waze/TooltipType;)V

    .line 544
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/LayoutManager$7;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$1(Lcom/waze/LayoutManager;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    const-class v2, Lcom/waze/navigate/social/MyFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 545
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    iget-object v1, p0, Lcom/waze/LayoutManager$7;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$1(Lcom/waze/LayoutManager;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 547
    return-void
.end method
