.class public Lcom/waze/main/navigate/NavigationListActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "NavigationListActivity.java"


# instance fields
.field private adapter:Lcom/waze/main/navigate/NavigationListItemAdapter;

.field private list:Landroid/widget/ListView;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/main/navigate/NavigationListActivity;)Lcom/waze/main/navigate/NavigationListItemAdapter;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationListActivity;->adapter:Lcom/waze/main/navigate/NavigationListItemAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/main/navigate/NavigationListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationListActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/waze/main/navigate/NavigationListActivity;->requestWindowFeature(I)Z

    .line 27
    const v1, 0x7f030096

    invoke-virtual {p0, v1}, Lcom/waze/main/navigate/NavigationListActivity;->setContentView(I)V

    .line 28
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/main/navigate/NavigationListActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 29
    const-string v1, "NAV LIST"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 31
    const v1, 0x7f090058

    invoke-virtual {p0, v1}, Lcom/waze/main/navigate/NavigationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NAVIGATION_LIST:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, p0, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 32
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationListActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->getNavBarManager()Lcom/waze/NavBarManager;

    move-result-object v1

    new-instance v2, Lcom/waze/main/navigate/NavigationListActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/main/navigate/NavigationListActivity$1;-><init>(Lcom/waze/main/navigate/NavigationListActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/NavBarManager;->getNavigationItems(Lcom/waze/NavBarManager$NavigationListListener;)V

    .line 39
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationListActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->getNavBarManager()Lcom/waze/NavBarManager;

    move-result-object v0

    .line 40
    .local v0, navBarManager:Lcom/waze/NavBarManager;
    new-instance v1, Lcom/waze/main/navigate/NavigationListItemAdapter;

    invoke-virtual {v0}, Lcom/waze/NavBarManager;->getDriveOnLeft()Z

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/waze/main/navigate/NavigationListItemAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/waze/main/navigate/NavigationListActivity;->adapter:Lcom/waze/main/navigate/NavigationListItemAdapter;

    .line 41
    const v1, 0x7f090477

    invoke-virtual {p0, v1}, Lcom/waze/main/navigate/NavigationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/waze/main/navigate/NavigationListActivity;->list:Landroid/widget/ListView;

    .line 42
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationListActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/waze/main/navigate/NavigationListActivity;->adapter:Lcom/waze/main/navigate/NavigationListItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    return-void
.end method
