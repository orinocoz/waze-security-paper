.class Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;
.super Ljava/lang/Object;
.source "AddressOptionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/AddressOptionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewTabsManager"
.end annotation


# instance fields
.field private isNavigate:Z

.field private mHolder:Lcom/waze/navigate/AddressOptionsActivity;

.field private final mInfoUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

.field private mSelectedTab:I

.field private mSelectedTabView:Landroid/view/View;

.field private final mSpecialUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

.field private mTabBar:Lcom/waze/view/tabs/TabBar;

.field private final mTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;


# direct methods
.method public constructor <init>(Lcom/waze/navigate/AddressOptionsActivity;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "holder"
    .parameter "bIsNavigate"

    .prologue
    const/4 v1, 0x0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    new-instance v0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;-><init>(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)V

    iput-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    .line 746
    new-instance v0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2;-><init>(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)V

    iput-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mInfoUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

    .line 790
    new-instance v0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$3;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$3;-><init>(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)V

    iput-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSpecialUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

    .line 827
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTab:I

    .line 828
    iput-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTabView:Landroid/view/View;

    .line 829
    iput-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;

    .line 830
    iput-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->isNavigate:Z

    .line 636
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;

    .line 637
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->isNavigate:Z

    .line 638
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)I
    .locals 1
    .parameter

    .prologue
    .line 827
    iget v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTab:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;
    .locals 1
    .parameter

    .prologue
    .line 829
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/WzWebView$WebViewUrlOverride;
    .locals 1
    .parameter

    .prologue
    .line 746
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mInfoUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/WzWebView$WebViewUrlOverride;
    .locals 1
    .parameter

    .prologue
    .line 790
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSpecialUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput p1, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTab:I

    return-void
.end method

.method static synthetic access$5(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 828
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTabView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTabView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public initTabs()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 642
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 644
    .local v2, mgr:Lcom/waze/NativeManager;
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;

    const v4, 0x7f0900e5

    invoke-virtual {v3, v4}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/tabs/TabBar;

    iput-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    .line 645
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    iget-object v4, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    invoke-virtual {v3, v4}, Lcom/waze/view/tabs/TabBar;->setListener(Lcom/waze/view/tabs/TabBar$IOnTabClickListener;)V

    .line 648
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 649
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_INFO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 650
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SPECIALS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 653
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    invoke-virtual {v3, v5}, Lcom/waze/view/tabs/TabBar;->setSelected(I)V

    .line 654
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;

    const v4, 0x7f0900e6

    invoke-virtual {v3, v4}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTabView:Landroid/view/View;

    .line 656
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, itemInfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getSpecialUrl()Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, itemSpecials:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 662
    :cond_0
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    invoke-virtual {v3, v6, v5}, Lcom/waze/view/tabs/TabBar;->setEnabled(IZ)V

    .line 665
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 667
    :cond_2
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    invoke-virtual {v3, v7, v5}, Lcom/waze/view/tabs/TabBar;->setEnabled(IZ)V

    .line 670
    :cond_3
    iget-boolean v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->isNavigate:Z

    if-nez v3, :cond_4

    .line 672
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    invoke-virtual {v3, v5, v5}, Lcom/waze/view/tabs/TabBar;->setEnabled(IZ)V

    .line 676
    :cond_4
    iget v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTab:I

    if-ltz v3, :cond_5

    .line 677
    iget v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mSelectedTab:I

    invoke-virtual {p0, v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->setSelectedTab(I)V

    .line 679
    :cond_5
    return-void
.end method

.method public setSelectedTab(I)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    invoke-virtual {v0, p1}, Lcom/waze/view/tabs/TabBar;->setSelected(I)V

    .line 684
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    invoke-interface {v0, p1}, Lcom/waze/view/tabs/TabBar$IOnTabClickListener;->onClick(I)V

    .line 685
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 689
    if-eqz p1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/tabs/TabBar;->setVisibility(I)V

    .line 693
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/tabs/TabBar;->setVisibility(I)V

    goto :goto_0
.end method
