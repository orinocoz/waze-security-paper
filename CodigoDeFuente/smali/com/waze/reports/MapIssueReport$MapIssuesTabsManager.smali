.class Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;
.super Ljava/lang/Object;
.source "MapIssueReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/MapIssueReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIssuesTabsManager"
.end annotation


# instance fields
.field private mHolder:Lcom/waze/reports/MapIssueReport;

.field private mTabBar:Lcom/waze/view/tabs/TabBar;

.field private final mTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;


# direct methods
.method public constructor <init>(Lcom/waze/reports/MapIssueReport;)V
    .locals 2
    .parameter "holder"

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;

    invoke-direct {v0, p0}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;-><init>(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)V

    iput-object v0, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    .line 229
    iput-object v1, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;

    .line 230
    iput-object v1, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    .line 151
    iput-object p1, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;

    .line 152
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;

    return-object v0
.end method


# virtual methods
.method public initTabs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 158
    .local v0, mgr:Lcom/waze/NativeManager;
    iget-object v1, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;

    const v2, 0x7f0903e9

    invoke-virtual {v1, v2}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/tabs/TabBar;

    iput-object v1, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    .line 159
    iget-object v1, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    iget-object v2, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    invoke-virtual {v1, v2}, Lcom/waze/view/tabs/TabBar;->setListener(Lcom/waze/view/tabs/TabBar$IOnTabClickListener;)V

    .line 162
    iget-object v1, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_MAP_ISSUE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    const/4 v2, 0x1

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PAVE_ROAD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mTabBar:Lcom/waze/view/tabs/TabBar;

    invoke-virtual {v1, v4}, Lcom/waze/view/tabs/TabBar;->setSelected(I)V

    .line 170
    return-void
.end method
