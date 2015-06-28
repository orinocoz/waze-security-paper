.class Lcom/waze/LayoutManager$5;
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
    iput-object p1, p0, Lcom/waze/LayoutManager$5;->this$0:Lcom/waze/LayoutManager;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 481
    const-string v1, "FRIENDS_DRIVING_BAR_CLICKED"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 482
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/LayoutManager$5;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$1(Lcom/waze/LayoutManager;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    const-class v2, Lcom/waze/navigate/social/FriendsDrivingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/LayoutManager$5;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$1(Lcom/waze/LayoutManager;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 484
    return-void
.end method
