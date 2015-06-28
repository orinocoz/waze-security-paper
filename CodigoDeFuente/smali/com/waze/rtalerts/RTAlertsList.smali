.class public Lcom/waze/rtalerts/RTAlertsList;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "RTAlertsList.java"


# static fields
.field private static mAlertSelected:Lcom/waze/rtalerts/RTAlertsAlertData;

.field private static mAlertsData:[Lcom/waze/rtalerts/RTAlertsAlertData;


# instance fields
.field private mAlertsTypeIdMask:I

.field private mAroundMeTab:I

.field private final mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMyGroupsTab:I

.field private mOnRouteTab:I

.field private mSelectedTab:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/rtalerts/RTAlertsList;->mAlertSelected:Lcom/waze/rtalerts/RTAlertsAlertData;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 139
    new-instance v0, Lcom/waze/rtalerts/RTAlertsList$1;

    invoke-direct {v0, p0}, Lcom/waze/rtalerts/RTAlertsList$1;-><init>(Lcom/waze/rtalerts/RTAlertsList;)V

    iput-object v0, p0, Lcom/waze/rtalerts/RTAlertsList;->mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 173
    iput v1, p0, Lcom/waze/rtalerts/RTAlertsList;->mAroundMeTab:I

    .line 174
    const/4 v0, 0x1

    iput v0, p0, Lcom/waze/rtalerts/RTAlertsList;->mOnRouteTab:I

    .line 175
    const/4 v0, 0x2

    iput v0, p0, Lcom/waze/rtalerts/RTAlertsList;->mMyGroupsTab:I

    .line 176
    iput v1, p0, Lcom/waze/rtalerts/RTAlertsList;->mSelectedTab:I

    .line 177
    iput v1, p0, Lcom/waze/rtalerts/RTAlertsList;->mAlertsTypeIdMask:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/rtalerts/RTAlertsList;->mTitle:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/waze/rtalerts/RTAlertsAlertData;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    sput-object p0, Lcom/waze/rtalerts/RTAlertsList;->mAlertSelected:Lcom/waze/rtalerts/RTAlertsAlertData;

    return-void
.end method

.method static synthetic access$1()Lcom/waze/rtalerts/RTAlertsAlertData;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/waze/rtalerts/RTAlertsList;->mAlertSelected:Lcom/waze/rtalerts/RTAlertsAlertData;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/rtalerts/RTAlertsList;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput p1, p0, Lcom/waze/rtalerts/RTAlertsList;->mSelectedTab:I

    return-void
.end method

.method static synthetic access$3()[Lcom/waze/rtalerts/RTAlertsAlertData;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/waze/rtalerts/RTAlertsList;->mAlertsData:[Lcom/waze/rtalerts/RTAlertsAlertData;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/rtalerts/RTAlertsList;[Lcom/waze/rtalerts/RTAlertsAlertData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/waze/rtalerts/RTAlertsList;->updateList([Lcom/waze/rtalerts/RTAlertsAlertData;)V

    return-void
.end method

.method public static getAlertSelected()Lcom/waze/rtalerts/RTAlertsAlertData;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/waze/rtalerts/RTAlertsList;->mAlertSelected:Lcom/waze/rtalerts/RTAlertsAlertData;

    return-object v0
.end method

.method public static getAlertsData()[Lcom/waze/rtalerts/RTAlertsAlertData;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/waze/rtalerts/RTAlertsList;->mAlertsData:[Lcom/waze/rtalerts/RTAlertsAlertData;

    return-object v0
.end method

.method private updateList([Lcom/waze/rtalerts/RTAlertsAlertData;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, filteredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/rtalerts/RTAlertsAlertData;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p1

    if-lt v2, v4, :cond_1

    .line 133
    const v4, 0x7f0905c9

    invoke-virtual {p0, v4}, Lcom/waze/rtalerts/RTAlertsList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 134
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/waze/rtalerts/RTAlertsListAdapter;

    .line 135
    .local v0, adapter:Lcom/waze/rtalerts/RTAlertsListAdapter;
    invoke-virtual {v0, v1}, Lcom/waze/rtalerts/RTAlertsListAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 136
    invoke-virtual {v0}, Lcom/waze/rtalerts/RTAlertsListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 120
    .end local v0           #adapter:Lcom/waze/rtalerts/RTAlertsListAdapter;
    .end local v3           #listView:Landroid/widget/ListView;
    :cond_1
    aget-object v4, p1, v2

    iget v4, v4, Lcom/waze/rtalerts/RTAlertsAlertData;->mAlertsTypesMask:I

    iget v5, p0, Lcom/waze/rtalerts/RTAlertsList;->mAlertsTypeIdMask:I

    and-int/2addr v4, v5

    if-lez v4, :cond_4

    .line 122
    iget v4, p0, Lcom/waze/rtalerts/RTAlertsList;->mSelectedTab:I

    iget v5, p0, Lcom/waze/rtalerts/RTAlertsList;->mAroundMeTab:I

    if-eq v4, v5, :cond_3

    .line 123
    iget v4, p0, Lcom/waze/rtalerts/RTAlertsList;->mSelectedTab:I

    iget v5, p0, Lcom/waze/rtalerts/RTAlertsList;->mOnRouteTab:I

    if-ne v4, v5, :cond_2

    aget-object v4, p1, v2

    iget-boolean v4, v4, Lcom/waze/rtalerts/RTAlertsAlertData;->mIsAlertOnRoute:Z

    if-nez v4, :cond_3

    .line 124
    :cond_2
    iget v4, p0, Lcom/waze/rtalerts/RTAlertsList;->mSelectedTab:I

    iget v5, p0, Lcom/waze/rtalerts/RTAlertsList;->mMyGroupsTab:I

    if-ne v4, v5, :cond_4

    aget-object v4, p1, v2

    iget-boolean v4, v4, Lcom/waze/rtalerts/RTAlertsAlertData;->mGroupRelevance:Z

    if-eqz v4, :cond_4

    .line 126
    :cond_3
    aget-object v4, p1, v2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static updateListData([Lcom/waze/rtalerts/RTAlertsAlertData;)V
    .locals 0
    .parameter "alertsData"

    .prologue
    .line 93
    sput-object p0, Lcom/waze/rtalerts/RTAlertsList;->mAlertsData:[Lcom/waze/rtalerts/RTAlertsAlertData;

    .line 94
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 165
    const/16 v0, 0x3ea

    if-eq p2, v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 166
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    .line 168
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/waze/rtalerts/RTAlertsList;->setResult(ILandroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsList;->finish()V

    .line 171
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v4, 0x7f0300d9

    invoke-virtual {p0, v4}, Lcom/waze/rtalerts/RTAlertsList;->setContentView(I)V

    .line 45
    new-instance v0, Lcom/waze/rtalerts/RTAlertsListAdapter;

    invoke-direct {v0, p0}, Lcom/waze/rtalerts/RTAlertsListAdapter;-><init>(Landroid/app/Activity;)V

    .line 46
    .local v0, adapter:Lcom/waze/rtalerts/RTAlertsListAdapter;
    const v4, 0x7f0905c9

    invoke-virtual {p0, v4}, Lcom/waze/rtalerts/RTAlertsList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 47
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    iget-object v4, p0, Lcom/waze/rtalerts/RTAlertsList;->mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    const v4, 0x7f0905c8

    invoke-virtual {p0, v4}, Lcom/waze/rtalerts/RTAlertsList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/tabs/TabBar;

    .line 51
    .local v2, tabBar:Lcom/waze/view/tabs/TabBar;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_AROUND_ME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 52
    const/4 v4, 0x1

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_ON_ROUTE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 53
    const/4 v4, 0x2

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_MY_GROUPS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 55
    invoke-virtual {v2, v7}, Lcom/waze/view/tabs/TabBar;->setSelected(I)V

    .line 57
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Type Name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Type Name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/rtalerts/RTAlertsList;->mTitle:Ljava/lang/String;

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Type Id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Type Id"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/waze/rtalerts/RTAlertsList;->mAlertsTypeIdMask:I

    .line 68
    :cond_1
    const v4, 0x7f0905c7

    invoke-virtual {p0, v4}, Lcom/waze/rtalerts/RTAlertsList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    .line 69
    .local v3, titleBar:Lcom/waze/view/title/TitleBar;
    iget-object v4, p0, Lcom/waze/rtalerts/RTAlertsList;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, p0, v4}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 75
    new-instance v4, Lcom/waze/rtalerts/RTAlertsList$2;

    invoke-direct {v4, p0}, Lcom/waze/rtalerts/RTAlertsList$2;-><init>(Lcom/waze/rtalerts/RTAlertsList;)V

    invoke-virtual {v2, v4}, Lcom/waze/view/tabs/TabBar;->setListener(Lcom/waze/view/tabs/TabBar$IOnTabClickListener;)V

    .line 83
    sget-object v4, Lcom/waze/rtalerts/RTAlertsList;->mAlertsData:[Lcom/waze/rtalerts/RTAlertsAlertData;

    invoke-direct {p0, v4}, Lcom/waze/rtalerts/RTAlertsList;->updateList([Lcom/waze/rtalerts/RTAlertsAlertData;)V

    .line 88
    const/4 v4, 0x0

    sput-object v4, Lcom/waze/rtalerts/RTAlertsList;->mAlertSelected:Lcom/waze/rtalerts/RTAlertsAlertData;

    .line 89
    return-void
.end method
