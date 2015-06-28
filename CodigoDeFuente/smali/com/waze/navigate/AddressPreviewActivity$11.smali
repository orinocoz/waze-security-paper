.class Lcom/waze/navigate/AddressPreviewActivity$11;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$11;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 670
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$11;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 673
    .local v1, type:I
    if-ne v1, v2, :cond_2

    .line 674
    const-string v3, "DRIVE_TYPE"

    .line 675
    const-string v4, "VAUE"

    const-string v5, "HOME"

    .line 674
    invoke-static {v3, v4, v5}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$11;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const-string v4, "ADS_PREVIEW_NAVIGATE"

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/waze/navigate/AddressPreviewActivity;->access$2(Lcom/waze/navigate/AddressPreviewActivity;Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/waze/analytics/Analytics;->adsContextNavigationInit()V

    .line 688
    const/16 v3, 0x9

    if-eq v1, v3, :cond_4

    .line 689
    const/16 v3, 0xb

    if-eq v1, v3, :cond_1

    move v0, v2

    .line 691
    .local v0, store:Z
    :cond_1
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$11;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity$11;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v4}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/navigate/AddressPreviewActivity$11;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;ZZ)V

    .line 694
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$11;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    iget v3, v3, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemNavigate(I)V

    .line 699
    .end local v0           #store:Z
    :goto_1
    return-void

    .line 676
    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 677
    const-string v3, "DRIVE_TYPE"

    .line 678
    const-string v4, "VAUE"

    const-string v5, "WORK"

    .line 677
    invoke-static {v3, v4, v5}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_3
    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 680
    const-string v3, "DRIVE_TYPE"

    .line 681
    const-string v4, "VAUE"

    const-string v5, "OTHER_FAV"

    .line 680
    invoke-static {v3, v4, v5}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_4
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$11;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$11;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/waze/navigate/DriveToNativeManager;->drive(Ljava/lang/String;Z)V

    .line 697
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$11;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    invoke-virtual {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity;->navigateCallback(I)V

    goto :goto_1
.end method
