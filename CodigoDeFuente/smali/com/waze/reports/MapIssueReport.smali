.class public Lcom/waze/reports/MapIssueReport;
.super Lcom/waze/reports/ReportForm;
.source "MapIssueReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;
    }
.end annotation


# instance fields
.field private mIsInPaveMode:Z

.field private mapIssueAdapter:Lcom/waze/reports/MapIssueAdapter;

.field private mapIssueTabsmanager:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V
    .locals 1
    .parameter "context"
    .parameter "reportMenu"

    .prologue
    .line 28
    const v0, 0x7f03007f

    invoke-direct {p0, p1, p2, v0}, Lcom/waze/reports/ReportForm;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/reports/MapIssueReport;->mIsInPaveMode:Z

    .line 29
    invoke-virtual {p0}, Lcom/waze/reports/MapIssueReport;->initLayout()V

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/MapIssueReport;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/waze/reports/MapIssueReport;->mIsInPaveMode:Z

    return-void
.end method

.method static synthetic access$1(Lcom/waze/reports/MapIssueReport;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/waze/reports/MapIssueReport;->setAdditionTextTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/reports/MapIssueReport;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/waze/reports/MapIssueReport;->setAdditionText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/reports/MapIssueReport;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/waze/reports/MapIssueReport;->setButtonText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/reports/MapIssueReport;)Lcom/waze/reports/MapIssueAdapter;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/waze/reports/MapIssueReport;->mapIssueAdapter:Lcom/waze/reports/MapIssueAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/reports/MapIssueReport;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/waze/reports/MapIssueReport;->onSend()V

    return-void
.end method

.method private onSend()V
    .locals 5

    .prologue
    .line 34
    iget-boolean v3, p0, Lcom/waze/reports/MapIssueReport;->mIsInPaveMode:Z

    if-nez v3, :cond_0

    .line 35
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;

    move-result-object v2

    .line 36
    .local v2, nativeManager:Lcom/waze/rtalerts/RTAlertsNativeManager;
    const v3, 0x7f0903eb

    invoke-virtual {p0, v3}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    .local v0, descriptionView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/reports/MapIssueReport;->mapIssueAdapter:Lcom/waze/reports/MapIssueAdapter;

    invoke-virtual {v4}, Lcom/waze/reports/MapIssueAdapter;->getSelected()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/waze/rtalerts/RTAlertsNativeManager;->reportMapIssue(Ljava/lang/String;I)V

    .line 53
    .end local v0           #descriptionView:Landroid/widget/TextView;
    .end local v2           #nativeManager:Lcom/waze/rtalerts/RTAlertsNativeManager;
    :goto_0
    iget-object v3, p0, Lcom/waze/reports/MapIssueReport;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v3}, Lcom/waze/reports/ReportMenu;->close()V

    .line 54
    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->isEditorIgnoreNewRoadsNTV()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 42
    .local v1, isRecording:Z
    :goto_1
    new-instance v3, Lcom/waze/reports/MapIssueReport$1;

    invoke-direct {v3, p0}, Lcom/waze/reports/MapIssueReport$1;-><init>(Lcom/waze/reports/MapIssueReport;)V

    invoke-static {v3}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 50
    iget-object v3, p0, Lcom/waze/reports/MapIssueReport;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v3, v1}, Lcom/waze/reports/ReportMenu;->setRoadPaving(Z)V

    goto :goto_0

    .line 41
    .end local v1           #isRecording:Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private setAdditionText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 77
    const v0, 0x7f0903f1

    invoke-virtual {p0, v0}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method private setAdditionTextTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 73
    const v0, 0x7f0903f0

    invoke-virtual {p0, v0}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method private setButtonText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 81
    const v0, 0x7f090370

    invoke-virtual {p0, v0}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method private setTitle()V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PAVE_ROAD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, titleText:Ljava/lang/String;
    const v1, 0x7f090595

    invoke-virtual {p0, v1}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getDelayedReportButtonResource()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method protected getReportSubtype()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method protected getReportType()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, -0x1

    return v0
.end method

.method public hideSoftInput()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lcom/waze/reports/MapIssueReport;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 60
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/waze/reports/MapIssueReport;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 61
    return-void
.end method

.method protected initLayout()V
    .locals 8

    .prologue
    .line 86
    invoke-super {p0}, Lcom/waze/reports/ReportForm;->initLayout()V

    .line 88
    new-instance v6, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    invoke-direct {v6, p0}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;-><init>(Lcom/waze/reports/MapIssueReport;)V

    iput-object v6, p0, Lcom/waze/reports/MapIssueReport;->mapIssueTabsmanager:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    .line 89
    iget-object v6, p0, Lcom/waze/reports/MapIssueReport;->mapIssueTabsmanager:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    invoke-virtual {v6}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->initTabs()V

    .line 91
    iget-object v6, p0, Lcom/waze/reports/MapIssueReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_MAP_ISSUE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, titleText:Ljava/lang/String;
    const v6, 0x7f090034

    invoke-virtual {p0, v6}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v6, p0, Lcom/waze/reports/MapIssueReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_DESCRIBE_MAP_ISSUE_HERE____:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, describeText:Ljava/lang/String;
    const v6, 0x7f0903eb

    invoke-virtual {p0, v6}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    .local v1, descriptionView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    const v6, 0x7f0903ed

    invoke-virtual {p0, v6}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 100
    .local v4, roadRecordingView:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 101
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_1
    const v6, 0x7f0903ec

    invoke-virtual {p0, v6}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 104
    .local v2, mapIssueList:Landroid/widget/ListView;
    new-instance v6, Lcom/waze/reports/MapIssueAdapter;

    invoke-virtual {p0}, Lcom/waze/reports/MapIssueReport;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/waze/reports/MapIssueAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/waze/reports/MapIssueReport;->mapIssueAdapter:Lcom/waze/reports/MapIssueAdapter;

    .line 105
    iget-object v6, p0, Lcom/waze/reports/MapIssueReport;->mapIssueAdapter:Lcom/waze/reports/MapIssueAdapter;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/waze/reports/MapIssueAdapter;->setSelected(I)V

    .line 106
    iget-object v6, p0, Lcom/waze/reports/MapIssueReport;->mapIssueAdapter:Lcom/waze/reports/MapIssueAdapter;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    new-instance v6, Lcom/waze/reports/MapIssueReport$2;

    invoke-direct {v6, p0, v2}, Lcom/waze/reports/MapIssueReport$2;-><init>(Lcom/waze/reports/MapIssueReport;Landroid/widget/ListView;)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;

    move-result-object v3

    .line 115
    .local v3, nativeManager:Lcom/waze/rtalerts/RTAlertsNativeManager;
    new-instance v6, Lcom/waze/reports/MapIssueReport$3;

    invoke-direct {v6, p0, v2}, Lcom/waze/reports/MapIssueReport$3;-><init>(Lcom/waze/reports/MapIssueReport;Landroid/widget/ListView;)V

    invoke-virtual {v3, v6}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getMapProblems(Lcom/waze/rtalerts/RTAlertsNativeManager$MapProblemsListener;)V

    .line 122
    const v6, 0x7f0903f2

    invoke-virtual {p0, v6}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/waze/reports/MapIssueReport$4;

    invoke-direct {v7, p0}, Lcom/waze/reports/MapIssueReport$4;-><init>(Lcom/waze/reports/MapIssueReport;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/waze/reports/MapIssueReport;->initLayout()V

    .line 64
    return-void
.end method
