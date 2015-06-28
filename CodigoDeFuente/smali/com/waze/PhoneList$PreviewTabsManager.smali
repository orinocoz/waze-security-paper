.class Lcom/waze/PhoneList$PreviewTabsManager;
.super Ljava/lang/Object;
.source "PhoneList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/PhoneList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewTabsManager"
.end annotation


# instance fields
.field private isNavigate:Z

.field private mHolder:Lcom/waze/PhoneList;

.field private mSelectedTab:I

.field private mSelectedTabView:Landroid/view/View;

.field private mTabBar:Lcom/waze/view/tabs/TabBar;

.field private final mTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;


# direct methods
.method public constructor <init>(Lcom/waze/PhoneList;)V
    .locals 2
    .parameter "holder"

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    new-instance v0, Lcom/waze/PhoneList$PreviewTabsManager$1;

    invoke-direct {v0, p0}, Lcom/waze/PhoneList$PreviewTabsManager$1;-><init>(Lcom/waze/PhoneList$PreviewTabsManager;)V

    iput-object v0, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    .line 444
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTab:I

    .line 445
    iput-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTabView:Landroid/view/View;

    .line 446
    iput-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mHolder:Lcom/waze/PhoneList;

    .line 447
    iput-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/PhoneList$PreviewTabsManager;->isNavigate:Z

    .line 379
    iput-object p1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mHolder:Lcom/waze/PhoneList;

    .line 380
    return-void
.end method

.method static synthetic access$0(Lcom/waze/PhoneList$PreviewTabsManager;)I
    .locals 1
    .parameter

    .prologue
    .line 444
    iget v0, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTab:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/PhoneList$PreviewTabsManager;)Lcom/waze/PhoneList;
    .locals 1
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mHolder:Lcom/waze/PhoneList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/PhoneList$PreviewTabsManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 444
    iput p1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTab:I

    return-void
.end method

.method static synthetic access$3(Lcom/waze/PhoneList$PreviewTabsManager;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTabView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/PhoneList$PreviewTabsManager;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTabView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public initTabs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 386
    .local v0, mgr:Lcom/waze/NativeManager;
    iget-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mHolder:Lcom/waze/PhoneList;

    const v2, 0x7f0900e5

    invoke-virtual {v1, v2}, Lcom/waze/PhoneList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/tabs/TabBar;

    iput-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    .line 387
    iget-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    iget-object v2, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    invoke-virtual {v1, v2}, Lcom/waze/view/tabs/TabBar;->setListener(Lcom/waze/view/tabs/TabBar$IOnTabClickListener;)V

    .line 390
    iget-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    const-string v2, "Facebook friends"

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    const/4 v2, 0x1

    const-string v3, "Phone contacts"

    invoke-virtual {v0, v3}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    invoke-virtual {v1, v4}, Lcom/waze/view/tabs/TabBar;->setSelected(I)V

    .line 395
    iget-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mHolder:Lcom/waze/PhoneList;

    const v2, 0x7f0904eb

    invoke-virtual {v1, v2}, Lcom/waze/PhoneList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTabView:Landroid/view/View;

    .line 398
    iget v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTab:I

    if-ltz v1, :cond_0

    .line 399
    iget v1, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTab:I

    invoke-virtual {p0, v1}, Lcom/waze/PhoneList$PreviewTabsManager;->setSelectedTab(I)V

    .line 401
    :cond_0
    return-void
.end method

.method public setSelectedTab(I)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    invoke-virtual {v0, p1}, Lcom/waze/view/tabs/TabBar;->setSelected(I)V

    .line 406
    iget-object v0, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    invoke-interface {v0, p1}, Lcom/waze/view/tabs/TabBar$IOnTabClickListener;->onClick(I)V

    .line 407
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 412
    if-eqz p1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/tabs/TabBar;->setVisibility(I)V

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/waze/PhoneList$PreviewTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/tabs/TabBar;->setVisibility(I)V

    goto :goto_0
.end method
