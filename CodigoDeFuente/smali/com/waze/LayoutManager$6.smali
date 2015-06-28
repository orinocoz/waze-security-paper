.class Lcom/waze/LayoutManager$6;
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
    iput-object p1, p0, Lcom/waze/LayoutManager$6;->this$0:Lcom/waze/LayoutManager;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 491
    iget-object v1, p0, Lcom/waze/LayoutManager$6;->this$0:Lcom/waze/LayoutManager;

    iget-object v2, p0, Lcom/waze/LayoutManager$6;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->isTooltipFriendsShown:Z
    invoke-static {v2}, Lcom/waze/LayoutManager;->access$2(Lcom/waze/LayoutManager;)Z

    move-result v2

    sget-object v3, Lcom/waze/TooltipType;->FRIENDS:Lcom/waze/TooltipType;

    #calls: Lcom/waze/LayoutManager;->closeTooltip(ZLcom/waze/TooltipType;)V
    invoke-static {v1, v2, v3}, Lcom/waze/LayoutManager;->access$3(Lcom/waze/LayoutManager;ZLcom/waze/TooltipType;)V

    .line 497
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookLoggedInNTV()Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriends()I

    move-result v1

    .line 498
    if-nez v1, :cond_0

    .line 501
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/LayoutManager$6;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$1(Lcom/waze/LayoutManager;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    const-class v2, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v1, "back"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    const-string v1, "fon_shon_rea_son"

    .line 505
    const-string v2, "FEATURE"

    .line 504
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    iget-object v1, p0, Lcom/waze/LayoutManager$6;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$1(Lcom/waze/LayoutManager;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 518
    :goto_0
    return-void

    .line 509
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriends()I

    move-result v1

    if-nez v1, :cond_1

    .line 510
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsPending()I

    move-result v1

    if-nez v1, :cond_1

    .line 511
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/LayoutManager$6;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$1(Lcom/waze/LayoutManager;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    const-class v2, Lcom/waze/navigate/social/AddFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/LayoutManager$6;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$1(Lcom/waze/LayoutManager;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ActivityBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 514
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/LayoutManager$6;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$1(Lcom/waze/LayoutManager;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    const-class v2, Lcom/waze/navigate/social/MyFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 515
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/LayoutManager$6;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$1(Lcom/waze/LayoutManager;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ActivityBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
