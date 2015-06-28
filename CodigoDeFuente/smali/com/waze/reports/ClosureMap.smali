.class public final Lcom/waze/reports/ClosureMap;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "ClosureMap.java"


# static fields
.field protected static final MORE_ANIMATION_TICK:J = 0x14L

.field protected static final MORE_OFFSET:I = -0x64

.field private static layout_manager:Lcom/waze/LayoutManager;

.field private static reportmenu:Lcom/waze/reports/ReportMenu;

.field private static sServerRequest:Z

.field private static selectedPin:I


# instance fields
.field private driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

.field private final mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

.field private final mNativeCanvasReadyEventReopen:Lcom/waze/ifs/async/RunnableExecutor;

.field private mapView:Lcom/waze/MapView;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/waze/reports/ClosureMap;->selectedPin:I

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/reports/ClosureMap;->sServerRequest:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 201
    new-instance v0, Lcom/waze/reports/ClosureMap$1;

    invoke-direct {v0, p0}, Lcom/waze/reports/ClosureMap$1;-><init>(Lcom/waze/reports/ClosureMap;)V

    iput-object v0, p0, Lcom/waze/reports/ClosureMap;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 217
    new-instance v0, Lcom/waze/reports/ClosureMap$2;

    invoke-direct {v0, p0}, Lcom/waze/reports/ClosureMap$2;-><init>(Lcom/waze/reports/ClosureMap;)V

    iput-object v0, p0, Lcom/waze/reports/ClosureMap;->mNativeCanvasReadyEventReopen:Lcom/waze/ifs/async/RunnableExecutor;

    .line 29
    return-void
.end method

.method public static SetLayoutMgr(Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter "lmgr"

    .prologue
    .line 90
    sput-object p0, Lcom/waze/reports/ClosureMap;->layout_manager:Lcom/waze/LayoutManager;

    .line 91
    return-void
.end method

.method public static SetReportMenu(Lcom/waze/reports/ReportMenu;)V
    .locals 0
    .parameter "report"

    .prologue
    .line 85
    sput-object p0, Lcom/waze/reports/ClosureMap;->reportmenu:Lcom/waze/reports/ReportMenu;

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/ClosureMap;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/waze/reports/ClosureMap;->sServerRequest:Z

    return v0
.end method

.method static synthetic access$2(Lcom/waze/reports/ClosureMap;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/waze/reports/ClosureMap;->selectedPin:I

    return v0
.end method

.method static synthetic access$4()Lcom/waze/reports/ReportMenu;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/waze/reports/ClosureMap;->reportmenu:Lcom/waze/reports/ReportMenu;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/reports/ReportMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    sput-object p0, Lcom/waze/reports/ClosureMap;->reportmenu:Lcom/waze/reports/ReportMenu;

    return-void
.end method

.method static synthetic access$6()Lcom/waze/LayoutManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/waze/reports/ClosureMap;->layout_manager:Lcom/waze/LayoutManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    sput-object p0, Lcom/waze/reports/ClosureMap;->layout_manager:Lcom/waze/LayoutManager;

    return-void
.end method

.method static synthetic access$8(Z)V
    .locals 0
    .parameter

    .prologue
    .line 40
    sput-boolean p0, Lcom/waze/reports/ClosureMap;->sServerRequest:Z

    return-void
.end method

.method public static launch(Landroid/content/Context;Lcom/waze/reports/ReportMenu;Lcom/waze/LayoutManager;Z)V
    .locals 1
    .parameter "context"
    .parameter "reportMenu"
    .parameter "layoutManager"
    .parameter "bIsServerRequest"

    .prologue
    .line 44
    new-instance v0, Lcom/waze/reports/ClosureMap$3;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/waze/reports/ClosureMap$3;-><init>(Lcom/waze/reports/ReportMenu;Lcom/waze/LayoutManager;ZLandroid/content/Context;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method private setUpActivity()V
    .locals 5

    .prologue
    const v4, 0x7f090208

    const v3, 0x7f090203

    .line 95
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/waze/reports/ClosureMap;->setContentView(I)V

    .line 97
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/reports/ClosureMap;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CLOSURE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v0, 0x7f090207

    invoke-virtual {p0, v0}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/reports/ClosureMap$4;

    invoke-direct {v1, p0}, Lcom/waze/reports/ClosureMap$4;-><init>(Lcom/waze/reports/ClosureMap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/reports/ClosureMap$5;

    invoke-direct {v1, p0}, Lcom/waze/reports/ClosureMap$5;-><init>(Lcom/waze/reports/ClosureMap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/reports/ClosureMap$6;

    invoke-direct {v1, p0}, Lcom/waze/reports/ClosureMap$6;-><init>(Lcom/waze/reports/ClosureMap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v0, 0x7f090202

    invoke-virtual {p0, v0}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/MapView;

    iput-object v0, p0, Lcom/waze/reports/ClosureMap;->mapView:Lcom/waze/MapView;

    .line 133
    sget-object v0, Lcom/waze/reports/ClosureMap;->layout_manager:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->IsClosureRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->mapView:Lcom/waze/MapView;

    iget-object v1, p0, Lcom/waze/reports/ClosureMap;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v0, v1}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 136
    const/4 v0, -0x1

    sput v0, Lcom/waze/reports/ClosureMap;->selectedPin:I

    .line 143
    :goto_0
    sget-boolean v0, Lcom/waze/reports/ClosureMap;->sServerRequest:Z

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {p0, v4}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/reports/ClosureMap;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CONFIRM:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0, v3}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/reports/ClosureMap;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CONFIRM_THE_LOCATION_OF:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_1
    const v0, 0x7f090205

    invoke-virtual {p0, v0}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/reports/ClosureMap;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LATER_CAPITAL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    sget v0, Lcom/waze/reports/ClosureMap;->selectedPin:I

    invoke-virtual {p0, v0}, Lcom/waze/reports/ClosureMap;->EnableNextButton(I)V

    .line 158
    sget-object v0, Lcom/waze/reports/ClosureMap;->layout_manager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->SetClosureMap(Lcom/waze/reports/ClosureMap;)V

    .line 160
    sget-object v0, Lcom/waze/reports/ClosureMap;->layout_manager:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->IsClosureRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/waze/reports/ClosureMap;->start()V

    .line 165
    :cond_0
    sget-object v0, Lcom/waze/reports/ClosureMap;->layout_manager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->setClosureRunning(Z)V

    .line 166
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->mapView:Lcom/waze/MapView;

    iget-object v1, p0, Lcom/waze/reports/ClosureMap;->mNativeCanvasReadyEventReopen:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v0, v1}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0, v4}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/reports/ClosureMap;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p0, v3}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/reports/ClosureMap;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TAP_ON_AN_ARROW:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public EnableNextButton(I)V
    .locals 5
    .parameter "Index"

    .prologue
    const v4, 0x7f090208

    const v3, 0x7f090207

    const/4 v2, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/waze/reports/ClosureMap;->stop()V

    .line 229
    if-ltz p1, :cond_0

    .line 230
    invoke-virtual {p0, v3}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 231
    invoke-virtual {p0, v3}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 232
    invoke-virtual {p0, v4}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    invoke-virtual {p0, v3}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 240
    :goto_0
    sput p1, Lcom/waze/reports/ClosureMap;->selectedPin:I

    .line 241
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0, v3}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 236
    invoke-virtual {p0, v3}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 237
    invoke-virtual {p0, v4}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    invoke-virtual {p0, v3}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public increaseMapClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->mapView:Lcom/waze/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/MapView;->setHandleTouch(Z)V

    .line 187
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 194
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->ClearClosureObject()V

    .line 195
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetRoadClosureView()V

    .line 196
    invoke-direct {p0}, Lcom/waze/reports/ClosureMap;->setUpActivity()V

    .line 197
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 199
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/reports/ClosureMap;->requestWindowFeature(I)Z

    .line 72
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/ClosureMap;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    .line 73
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/ClosureMap;->nativeManager:Lcom/waze/NativeManager;

    .line 75
    const-string v1, "ROAD_CLOSURE_DETECTED_POPUP_SHOWN"

    .line 76
    const-string v2, "FROM_SERVER"

    sget-boolean v0, Lcom/waze/reports/ClosureMap;->sServerRequest:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "TRUE"

    .line 75
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/waze/reports/ClosureMap;->setUpActivity()V

    .line 81
    return-void

    .line 78
    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 172
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 173
    invoke-virtual {p0}, Lcom/waze/reports/ClosureMap;->stop()V

    .line 175
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->ClearClosureObject()V

    .line 176
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetRoadClosureView()V

    .line 177
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 182
    iget-object v0, p0, Lcom/waze/reports/ClosureMap;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 183
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 244
    const v1, 0x7f090206

    invoke-virtual {p0, v1}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    .line 245
    .local v0, timerView:Lcom/waze/view/timer/TimerView;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->start()V

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/timer/TimerView;->setVisibility(I)V

    .line 249
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 251
    const v1, 0x7f090206

    invoke-virtual {p0, v1}, Lcom/waze/reports/ClosureMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    .line 252
    .local v0, timerView:Lcom/waze/view/timer/TimerView;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 254
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/timer/TimerView;->setVisibility(I)V

    .line 256
    :cond_0
    return-void
.end method
