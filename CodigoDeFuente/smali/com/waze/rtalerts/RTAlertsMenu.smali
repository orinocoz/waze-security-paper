.class public Lcom/waze/rtalerts/RTAlertsMenu;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "RTAlertsMenu.java"


# static fields
.field public static final RTALERTS_TYPE_ID_MASK_EXTRA:Ljava/lang/String; = "Type Id"

.field public static final RTALERTS_TYPE_NAME_EXTRA:Ljava/lang/String; = "Type Name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 119
    const/16 v0, 0x3e9

    if-eq p2, v0, :cond_0

    .line 120
    const/16 v0, 0x3ea

    if-eq p2, v0, :cond_0

    .line 121
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 123
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/waze/rtalerts/RTAlertsMenu;->setResult(ILandroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsMenu;->finish()V

    .line 126
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;

    move-result-object v4

    .line 43
    .local v4, mgr:Lcom/waze/rtalerts/RTAlertsNativeManager;
    const v5, 0x7f0300db

    invoke-virtual {p0, v5}, Lcom/waze/rtalerts/RTAlertsMenu;->setContentView(I)V

    .line 48
    new-instance v2, Lcom/waze/rtalerts/RTAlertsMenu$1;

    invoke-direct {v2, p0}, Lcom/waze/rtalerts/RTAlertsMenu$1;-><init>(Lcom/waze/rtalerts/RTAlertsMenu;)V

    .line 55
    .local v2, dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsMenuDataHandler;
    invoke-virtual {v4, v2}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getAlertsMenuData(Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsMenuDataHandler;)V

    .line 59
    new-instance v1, Lcom/waze/rtalerts/RTAlertsMenu$2;

    invoke-direct {v1, p0}, Lcom/waze/rtalerts/RTAlertsMenu$2;-><init>(Lcom/waze/rtalerts/RTAlertsMenu;)V

    .line 66
    .local v1, alertsListHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler;
    invoke-virtual {v4, v1}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getAlertsListData(Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler;)V

    .line 70
    new-instance v0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;

    invoke-direct {v0, p0}, Lcom/waze/rtalerts/RTAlertsMenuAdapter;-><init>(Landroid/app/Activity;)V

    .line 71
    .local v0, adapter:Lcom/waze/rtalerts/RTAlertsMenuAdapter;
    const v5, 0x7f0905df

    invoke-virtual {p0, v5}, Lcom/waze/rtalerts/RTAlertsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 72
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    new-instance v5, Lcom/waze/rtalerts/RTAlertsMenu$3;

    invoke-direct {v5, p0, v0}, Lcom/waze/rtalerts/RTAlertsMenu$3;-><init>(Lcom/waze/rtalerts/RTAlertsMenu;Lcom/waze/rtalerts/RTAlertsMenuAdapter;)V

    .line 74
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/rtalerts/RTAlertsList;->updateListData([Lcom/waze/rtalerts/RTAlertsAlertData;)V

    .line 92
    return-void
.end method

.method public updateMenu(Ljava/lang/String;[Lcom/waze/rtalerts/RTAlertsMenuData;)V
    .locals 4
    .parameter "title"
    .parameter "data"

    .prologue
    .line 104
    const v3, 0x7f0905de

    invoke-virtual {p0, v3}, Lcom/waze/rtalerts/RTAlertsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    .line 105
    .local v2, titleBar:Lcom/waze/view/title/TitleBar;
    invoke-virtual {v2, p0, p1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 109
    const v3, 0x7f0905df

    invoke-virtual {p0, v3}, Lcom/waze/rtalerts/RTAlertsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 110
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;

    .line 111
    .local v0, adapter:Lcom/waze/rtalerts/RTAlertsMenuAdapter;
    invoke-virtual {v0, p2}, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->updateList([Lcom/waze/rtalerts/RTAlertsMenuData;)V

    .line 112
    invoke-virtual {v0}, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method
