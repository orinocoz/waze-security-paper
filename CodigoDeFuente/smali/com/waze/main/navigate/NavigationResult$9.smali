.class Lcom/waze/main/navigate/NavigationResult$9;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->setDlgData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/main/navigate/NavigationResult;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 649
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mCalculating:Z
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$10(Lcom/waze/main/navigate/NavigationResult;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 652
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v4

    const v5, 0x7f0904b6

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v4}, Lcom/waze/view/timer/TimerView;->hasExpired()Z

    move-result v0

    .line 653
    .local v0, bTimerExpired:Z
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    iget-object v4, v4, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    invoke-virtual {v4}, Lcom/waze/NativeManager;->isMovingNTV()Z

    move-result v2

    .line 654
    .local v2, isMoving:Z
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$6(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$6(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 655
    .local v3, numShare:I
    :goto_0
    if-nez v3, :cond_0

    .line 656
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/share/ShareNativeManager;->getReceivedLocationSender()Lcom/waze/user/FriendUserData;

    move-result-object v5

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mShareTooltipFud:Lcom/waze/user/FriendUserData;
    invoke-static {v4, v5}, Lcom/waze/main/navigate/NavigationResult;->access$11(Lcom/waze/main/navigate/NavigationResult;Lcom/waze/user/FriendUserData;)V

    .line 657
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mShareTooltipFud:Lcom/waze/user/FriendUserData;
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$12(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/user/FriendUserData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 658
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    const/4 v5, 0x1

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mTooltipEtaOkToShow:Z
    invoke-static {v4, v5}, Lcom/waze/main/navigate/NavigationResult;->access$13(Lcom/waze/main/navigate/NavigationResult;Z)V

    .line 662
    :cond_0
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mTooltipEtaOkToShow:Z
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$14(Lcom/waze/main/navigate/NavigationResult;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mShownAgain:Z
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$15(Lcom/waze/main/navigate/NavigationResult;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    .line 663
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mWasTooltipDismissed:Z
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$16(Lcom/waze/main/navigate/NavigationResult;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    .line 664
    :cond_1
    sget-boolean v4, Lcom/waze/main/navigate/NavigationResult;->mForceShowTooltipEta:Z

    if-eqz v4, :cond_5

    .line 665
    :cond_2
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->stopTimer()V
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$7(Lcom/waze/main/navigate/NavigationResult;)V

    .line 666
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v4}, Lcom/waze/main/navigate/NavigationResult;->showTooltipEta()V

    .line 718
    .end local v0           #bTimerExpired:Z
    .end local v2           #isMoving:Z
    .end local v3           #numShare:I
    :cond_3
    :goto_1
    return-void

    .line 654
    .restart local v0       #bTimerExpired:Z
    .restart local v2       #isMoving:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 669
    .restart local v3       #numShare:I
    :cond_5
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v4}, Lcom/waze/main/navigate/NavigationResult;->SendMeeting()V

    .line 670
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mShownAgain:Z
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$15(Lcom/waze/main/navigate/NavigationResult;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 672
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 674
    :try_start_0
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->dismissNavigationResultDialog()V
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$17(Lcom/waze/main/navigate/NavigationResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 676
    :catch_0
    move-exception v1

    .line 677
    .local v1, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v4, v6}, Lcom/waze/main/navigate/NavigationResult;->access$18(Lcom/waze/main/navigate/NavigationResult;Landroid/app/Dialog;)V

    goto :goto_1

    .line 683
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_6
    const-string v4, "GO_ETA"

    invoke-static {v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 685
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mIsTripServerResult:Z
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$19(Lcom/waze/main/navigate/NavigationResult;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 686
    new-instance v4, Lcom/waze/main/navigate/NavigationResult$9$1;

    invoke-direct {v4, p0}, Lcom/waze/main/navigate/NavigationResult$9$1;-><init>(Lcom/waze/main/navigate/NavigationResult$9;)V

    invoke-static {v4}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 697
    :cond_7
    new-instance v4, Lcom/waze/main/navigate/NavigationResult$9$2;

    invoke-direct {v4, p0}, Lcom/waze/main/navigate/NavigationResult$9$2;-><init>(Lcom/waze/main/navigate/NavigationResult$9;)V

    invoke-static {v4}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 705
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 706
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->stopTimer()V
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$7(Lcom/waze/main/navigate/NavigationResult;)V

    .line 708
    :try_start_1
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->dismissNavigationResultDialog()V
    invoke-static {v4}, Lcom/waze/main/navigate/NavigationResult;->access$17(Lcom/waze/main/navigate/NavigationResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 715
    :cond_8
    :goto_2
    invoke-static {}, Lcom/waze/NavBarManager;->showNavBar()V

    goto :goto_1

    .line 710
    :catch_1
    move-exception v1

    .line 711
    .restart local v1       #ex:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult$9;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v4, v6}, Lcom/waze/main/navigate/NavigationResult;->access$18(Lcom/waze/main/navigate/NavigationResult;Landroid/app/Dialog;)V

    goto :goto_2
.end method
