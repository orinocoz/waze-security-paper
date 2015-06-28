.class public Lcom/waze/reports/ReportGroupsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "ReportGroupsActivity.java"


# instance fields
.field protected groups:[Lcom/waze/mywaze/Group;

.field private myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/reports/ReportGroupsActivity;->groups:[Lcom/waze/mywaze/Group;

    .line 22
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/ReportGroupsActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 23
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v2, 0x7f0300c5

    invoke-virtual {p0, v2}, Lcom/waze/reports/ReportGroupsActivity;->setContentView(I)V

    .line 28
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lcom/waze/reports/ReportGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_GROUPS:Lcom/waze/strings/DisplayStrings;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Z)V

    .line 29
    new-instance v0, Lcom/waze/reports/ReportGroupAdapter;

    invoke-direct {v0, p0}, Lcom/waze/reports/ReportGroupAdapter;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, adapter:Lcom/waze/reports/ReportGroupAdapter;
    const v2, 0x7f09056f

    invoke-virtual {p0, v2}, Lcom/waze/reports/ReportGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 31
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    iget-object v2, p0, Lcom/waze/reports/ReportGroupsActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    new-instance v3, Lcom/waze/reports/ReportGroupsActivity$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/waze/reports/ReportGroupsActivity$1;-><init>(Lcom/waze/reports/ReportGroupsActivity;Lcom/waze/reports/ReportGroupAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Lcom/waze/mywaze/MyWazeNativeManager;->getGroups(Lcom/waze/mywaze/MyWazeNativeManager$GetGroupsListener;)V

    .line 40
    new-instance v2, Lcom/waze/reports/ReportGroupsActivity$2;

    invoke-direct {v2, p0}, Lcom/waze/reports/ReportGroupsActivity$2;-><init>(Lcom/waze/reports/ReportGroupsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    return-void
.end method
