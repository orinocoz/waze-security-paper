.class Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;
.super Ljava/lang/Object;
.source "AddressOptionsActivity.java"

# interfaces
.implements Lcom/waze/view/tabs/TabBar$IOnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;)Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;
    .locals 1
    .parameter

    .prologue
    .line 695
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    return-object v0
.end method


# virtual methods
.method public onClick(I)V
    .locals 5
    .parameter "tabId"

    .prologue
    .line 699
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTab:I
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$0(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 743
    :goto_0
    return-void

    .line 704
    :cond_0
    const/4 v0, 0x0

    .line 706
    .local v0, tabView:Landroid/view/View;
    if-nez p1, :cond_1

    .line 708
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v3

    const-string v4, "ADS_PREVIEW_SHOWN"

    #calls: Lcom/waze/navigate/AddressOptionsActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/waze/navigate/AddressOptionsActivity;->access$2(Lcom/waze/navigate/AddressOptionsActivity;Ljava/lang/String;)V

    .line 709
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v3

    const v4, 0x7f0900e6

    invoke-virtual {v3, v4}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 710
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v3

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 711
    .local v1, vto:Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1$1;

    invoke-direct {v3, p0}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1$1;-><init>(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 723
    .end local v1           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 725
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v3

    const v4, 0x7f0900e7

    invoke-virtual {v3, v4}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 726
    const v3, 0x7f0900e8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/WzWebView;

    .line 727
    .local v2, webView:Lcom/waze/WzWebView;
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mInfoUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$2(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/WzWebView$WebViewUrlOverride;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/WzWebView;->setUrlOverride(Lcom/waze/WzWebView$WebViewUrlOverride;)V

    .line 728
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v3

    const-string v4, "ADS_INFO_SHOWN"

    #calls: Lcom/waze/navigate/AddressOptionsActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/waze/navigate/AddressOptionsActivity;->access$2(Lcom/waze/navigate/AddressOptionsActivity;Ljava/lang/String;)V

    .line 729
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v3

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/WzWebView;->loadUrl(Ljava/lang/String;)V

    .line 731
    .end local v2           #webView:Lcom/waze/WzWebView;
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 733
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v3

    const v4, 0x7f0900e9

    invoke-virtual {v3, v4}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 734
    const v3, 0x7f0900ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/WzWebView;

    .line 735
    .restart local v2       #webView:Lcom/waze/WzWebView;
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSpecialUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$3(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/WzWebView$WebViewUrlOverride;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/WzWebView;->setUrlOverride(Lcom/waze/WzWebView$WebViewUrlOverride;)V

    .line 736
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v3

    const-string v4, "ADS_SPECIAL_SHOWN"

    #calls: Lcom/waze/navigate/AddressOptionsActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/waze/navigate/AddressOptionsActivity;->access$2(Lcom/waze/navigate/AddressOptionsActivity;Ljava/lang/String;)V

    .line 737
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v3

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getSpecialUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/WzWebView;->loadUrl(Ljava/lang/String;)V

    .line 739
    .end local v2           #webView:Lcom/waze/WzWebView;
    :cond_3
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #setter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTab:I
    invoke-static {v3, p1}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$4(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;I)V

    .line 740
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTabView:Landroid/view/View;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$5(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 741
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 742
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #setter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTabView:Landroid/view/View;
    invoke-static {v3, v0}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$6(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;Landroid/view/View;)V

    goto/16 :goto_0
.end method
