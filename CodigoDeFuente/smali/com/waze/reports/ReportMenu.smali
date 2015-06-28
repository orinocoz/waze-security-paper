.class public Lcom/waze/reports/ReportMenu;
.super Landroid/app/Dialog;
.source "ReportMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final GPS_FREASH:J = 0x7530L


# instance fields
.field private closeAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private disableAnimation:Z

.field protected inMenu:Z

.field private inflater:Landroid/view/LayoutInflater;

.field private isClosureEnabled:Z

.field protected isFirstImage:Z

.field private isFoursquareEnabled:Z

.field private isRandomUser:Z

.field public volatile isVisible:Z

.field private layoutManager:Lcom/waze/LayoutManager;

.field private mDensity:F

.field private mRoadRecordingPopUp:Lcom/waze/roadrecording/RoadRecordingPopUp;

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private mainLayoutToAnimate:Landroid/widget/RelativeLayout;

.field private myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field private openAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private reportForm:Lcom/waze/reports/ReportForm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;ZZZ)V
    .locals 5
    .parameter "context"
    .parameter "layoutManager"
    .parameter "isRandomUser"
    .parameter "isFoursquareEnabled"
    .parameter "isClosureEnabled"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 70
    const v1, 0x7f060011

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 49
    iput-boolean v4, p0, Lcom/waze/reports/ReportMenu;->isFirstImage:Z

    .line 50
    iput-boolean v2, p0, Lcom/waze/reports/ReportMenu;->inMenu:Z

    .line 60
    iput-boolean v2, p0, Lcom/waze/reports/ReportMenu;->disableAnimation:Z

    .line 64
    iput-boolean v2, p0, Lcom/waze/reports/ReportMenu;->isVisible:Z

    .line 71
    iput-object p2, p0, Lcom/waze/reports/ReportMenu;->layoutManager:Lcom/waze/LayoutManager;

    .line 72
    iput-boolean p3, p0, Lcom/waze/reports/ReportMenu;->isRandomUser:Z

    .line 73
    iput-boolean p4, p0, Lcom/waze/reports/ReportMenu;->isFoursquareEnabled:Z

    .line 74
    iput-boolean p5, p0, Lcom/waze/reports/ReportMenu;->isClosureEnabled:Z

    .line 76
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/waze/reports/ReportMenu;->inflater:Landroid/view/LayoutInflater;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/waze/reports/ReportMenu;->mDensity:F

    .line 79
    const v1, 0x7f0300c8

    invoke-virtual {p0, v1}, Lcom/waze/reports/ReportMenu;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 81
    .local v0, window:Landroid/view/Window;
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 83
    const v1, 0x7f090570

    invoke-virtual {p0, v1}, Lcom/waze/reports/ReportMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/waze/reports/ReportMenu;->mainLayout:Landroid/widget/RelativeLayout;

    .line 84
    new-instance v1, Lcom/waze/reports/ReportMenu$1;

    invoke-direct {v1, p0}, Lcom/waze/reports/ReportMenu$1;-><init>(Lcom/waze/reports/ReportMenu;)V

    iput-object v1, p0, Lcom/waze/reports/ReportMenu;->closeAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 99
    invoke-static {}, Lcom/waze/MapView;->gpuSupported()I

    move-result v1

    sget v2, Lcom/waze/MapView;->GPU_NOT_SUPPORTED:I

    if-ne v1, v2, :cond_0

    .line 100
    iput-boolean v4, p0, Lcom/waze/reports/ReportMenu;->disableAnimation:Z

    .line 104
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    .line 105
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/reports/ReportMenu;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 107
    new-instance v1, Lcom/waze/reports/ReportMenu$2;

    invoke-direct {v1, p0}, Lcom/waze/reports/ReportMenu$2;-><init>(Lcom/waze/reports/ReportMenu;)V

    iput-object v1, p0, Lcom/waze/reports/ReportMenu;->openAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 122
    invoke-direct {p0}, Lcom/waze/reports/ReportMenu;->initLayout()V

    .line 123
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/ReportMenu;)F
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/waze/reports/ReportMenu;->mDensity:F

    return v0
.end method

.method static synthetic access$1(Lcom/waze/reports/ReportMenu;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->mainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/reports/ReportMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/waze/reports/ReportMenu;->showBottomNotification()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/reports/ReportMenu;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/waze/reports/ReportMenu;->isRandomUser:Z

    return v0
.end method

.method static synthetic access$4(Lcom/waze/reports/ReportMenu;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/reports/ReportMenu;)Lcom/waze/LayoutManager;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->layoutManager:Lcom/waze/LayoutManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/reports/ReportMenu;)Lcom/waze/mywaze/MyWazeNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/reports/ReportMenu;)Lcom/waze/reports/ReportForm;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    return-object v0
.end method

.method static synthetic access$8(Lcom/waze/reports/ReportMenu;Lcom/waze/reports/ReportForm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    return-void
.end method

.method private initLayout()V
    .locals 14

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 157
    const v10, 0x7f090571

    invoke-virtual {p0, v10}, Lcom/waze/reports/ReportMenu;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ViewFlipper;

    .line 159
    .local v9, viewFlipper:Landroid/widget/ViewFlipper;
    invoke-virtual {v9, v11}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 160
    invoke-virtual {v9, v11}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v4, :cond_5

    move v1, v4

    .line 168
    .local v1, isVertical:Z
    :goto_0
    if-eqz v1, :cond_6

    .line 169
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->inflater:Landroid/view/LayoutInflater;

    const v12, 0x7f0300cc

    invoke-virtual {v10, v12, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 170
    .local v8, view:Landroid/view/View;
    const/4 v3, 0x3

    .line 180
    .local v3, numLines:I
    :goto_1
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_REPORT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, menuTitle:Ljava/lang/String;
    const v10, 0x7f09058b

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const v10, 0x7f09058c

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 186
    .local v6, reportsContainer:Landroid/widget/RelativeLayout;
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 187
    new-instance v7, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;

    invoke-direct {v7, p0, v6, v3, v1}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;-><init>(Lcom/waze/reports/ReportMenu;Landroid/widget/RelativeLayout;IZ)V

    .line 189
    .local v7, rmo:Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_TRAFFIC_JAM:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 190
    const v12, 0x7f0201e5

    new-instance v13, Lcom/waze/reports/ReportMenu$3;

    invoke-direct {v13, p0}, Lcom/waze/reports/ReportMenu$3;-><init>(Lcom/waze/reports/ReportMenu;)V

    .line 189
    invoke-virtual {v7, v10, v12, v13}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->addReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 198
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/waze/NativeManager;->isEnforcementPoliceEnabledNTV()I

    move-result v10

    if-eqz v10, :cond_7

    .line 199
    .local v4, policeEnabled:Z
    :goto_2
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_POLICE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    if-eqz v4, :cond_8

    .line 200
    const v10, 0x7f0201e1

    .line 201
    :goto_3
    new-instance v12, Lcom/waze/reports/ReportMenu$4;

    invoke-direct {v12, p0}, Lcom/waze/reports/ReportMenu$4;-><init>(Lcom/waze/reports/ReportMenu;)V

    .line 199
    invoke-virtual {v7, v11, v10, v12}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->addReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 209
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_ACCIDENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 210
    const v11, 0x7f0201d5

    new-instance v12, Lcom/waze/reports/ReportMenu$5;

    invoke-direct {v12, p0}, Lcom/waze/reports/ReportMenu$5;-><init>(Lcom/waze/reports/ReportMenu;)V

    .line 209
    invoke-virtual {v7, v10, v11, v12}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->addReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 218
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_HAZARD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 219
    const v11, 0x7f0201db

    new-instance v12, Lcom/waze/reports/ReportMenu$6;

    invoke-direct {v12, p0}, Lcom/waze/reports/ReportMenu$6;-><init>(Lcom/waze/reports/ReportMenu;)V

    .line 218
    invoke-virtual {v7, v10, v11, v12}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->addReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 227
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v10}, Lcom/waze/NativeManager;->isGasUpdateable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 228
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_GAS_PRICES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 229
    const v11, 0x7f0201da

    new-instance v12, Lcom/waze/reports/ReportMenu$7;

    invoke-direct {v12, p0}, Lcom/waze/reports/ReportMenu$7;-><init>(Lcom/waze/reports/ReportMenu;)V

    .line 228
    invoke-virtual {v7, v10, v11, v12}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->addReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 239
    :cond_1
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_CHIT_CHAT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 240
    const v11, 0x7f0201d9

    new-instance v12, Lcom/waze/reports/ReportMenu$8;

    invoke-direct {v12, p0}, Lcom/waze/reports/ReportMenu$8;-><init>(Lcom/waze/reports/ReportMenu;)V

    .line 239
    invoke-virtual {v7, v10, v11, v12}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->addReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 252
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_MAP_ISSUE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 253
    const v11, 0x7f0201dc

    new-instance v12, Lcom/waze/reports/ReportMenu$9;

    invoke-direct {v12, p0}, Lcom/waze/reports/ReportMenu$9;-><init>(Lcom/waze/reports/ReportMenu;)V

    .line 252
    invoke-virtual {v7, v10, v11, v12}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->addReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 261
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_PLACE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 262
    const v11, 0x7f0201e0

    new-instance v12, Lcom/waze/reports/ReportMenu$10;

    invoke-direct {v12, p0}, Lcom/waze/reports/ReportMenu$10;-><init>(Lcom/waze/reports/ReportMenu;)V

    .line 261
    invoke-virtual {v7, v10, v11, v12}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->addReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 302
    iget-boolean v10, p0, Lcom/waze/reports/ReportMenu;->isClosureEnabled:Z

    if-eqz v10, :cond_2

    .line 303
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_CLOSURE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 304
    const v11, 0x7f0200ba

    new-instance v12, Lcom/waze/reports/ReportMenu$11;

    invoke-direct {v12, p0}, Lcom/waze/reports/ReportMenu$11;-><init>(Lcom/waze/reports/ReportMenu;)V

    .line 303
    invoke-virtual {v7, v10, v11, v12}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->addReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 312
    :cond_2
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/waze/NativeManager;->isEnforcementAlertsEnabledNTV()Z

    move-result v0

    .line 313
    .local v0, alertEnabled:Z
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_CAMERA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    if-eqz v0, :cond_9

    .line 314
    const v10, 0x7f0201e4

    .line 315
    :goto_4
    new-instance v12, Lcom/waze/reports/ReportMenu$12;

    invoke-direct {v12, p0}, Lcom/waze/reports/ReportMenu$12;-><init>(Lcom/waze/reports/ReportMenu;)V

    .line 313
    invoke-virtual {v7, v11, v10, v12}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->addReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 333
    iget-boolean v10, p0, Lcom/waze/reports/ReportMenu;->isFoursquareEnabled:Z

    if-eqz v10, :cond_3

    .line 334
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_CHECK_IN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 335
    const v11, 0x7f0201d7

    new-instance v12, Lcom/waze/reports/ReportMenu$13;

    invoke-direct {v12, p0}, Lcom/waze/reports/ReportMenu$13;-><init>(Lcom/waze/reports/ReportMenu;)V

    .line 334
    invoke-virtual {v7, v10, v11, v12}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->addReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 344
    :cond_3
    const v10, 0x7f090592

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    .line 345
    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_ALL_REPORTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    .line 344
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    const v10, 0x7f09058a

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/waze/reports/ReportMenu;->mainLayoutToAnimate:Landroid/widget/RelativeLayout;

    .line 348
    const v10, 0x7f090589

    invoke-virtual {p0, v10}, Lcom/waze/reports/ReportMenu;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 349
    .local v5, reportMenuButton:Landroid/view/View;
    if-eqz v5, :cond_4

    .line 350
    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->initButton()V

    .line 351
    new-instance v10, Lcom/waze/reports/ReportMenu$14;

    invoke-direct {v10, p0}, Lcom/waze/reports/ReportMenu$14;-><init>(Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    :cond_4
    const v10, 0x7f090591

    invoke-virtual {p0, v10}, Lcom/waze/reports/ReportMenu;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/waze/reports/ReportMenu$15;

    invoke-direct {v11, p0}, Lcom/waze/reports/ReportMenu$15;-><init>(Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    const v10, 0x7f090590

    invoke-virtual {p0, v10}, Lcom/waze/reports/ReportMenu;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/waze/reports/ReportMenu$16;

    invoke-direct {v11, p0}, Lcom/waze/reports/ReportMenu$16;-><init>(Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    const v10, 0x7f090570

    invoke-virtual {p0, v10}, Lcom/waze/reports/ReportMenu;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/waze/reports/ReportMenu$17;

    invoke-direct {v11, p0}, Lcom/waze/reports/ReportMenu$17;-><init>(Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    const v10, 0x7f090033

    invoke-virtual {p0, v10}, Lcom/waze/reports/ReportMenu;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/waze/reports/ReportMenu$18;

    invoke-direct {v11, p0}, Lcom/waze/reports/ReportMenu$18;-><init>(Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    return-void

    .end local v0           #alertEnabled:Z
    .end local v1           #isVertical:Z
    .end local v2           #menuTitle:Ljava/lang/String;
    .end local v3           #numLines:I
    .end local v4           #policeEnabled:Z
    .end local v5           #reportMenuButton:Landroid/view/View;
    .end local v6           #reportsContainer:Landroid/widget/RelativeLayout;
    .end local v7           #rmo:Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;
    .end local v8           #view:Landroid/view/View;
    :cond_5
    move v1, v11

    .line 166
    goto/16 :goto_0

    .line 172
    .restart local v1       #isVertical:Z
    :cond_6
    iget-object v10, p0, Lcom/waze/reports/ReportMenu;->inflater:Landroid/view/LayoutInflater;

    const v12, 0x7f0300cb

    invoke-virtual {v10, v12, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 173
    .restart local v8       #view:Landroid/view/View;
    const/4 v3, 0x2

    .restart local v3       #numLines:I
    goto/16 :goto_1

    .restart local v2       #menuTitle:Ljava/lang/String;
    .restart local v6       #reportsContainer:Landroid/widget/RelativeLayout;
    .restart local v7       #rmo:Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;
    :cond_7
    move v4, v11

    .line 198
    goto/16 :goto_2

    .line 201
    .restart local v4       #policeEnabled:Z
    :cond_8
    const v10, 0x7f020329

    goto/16 :goto_3

    .line 315
    .restart local v0       #alertEnabled:Z
    :cond_9
    const v10, 0x7f0203c4

    goto/16 :goto_4
.end method

.method private showBottomNotification()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->layoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->getBottomNotification()Lcom/waze/view/bottom/BottomNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LOCATION_AND_TIME_SAVED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/waze/view/bottom/BottomNotification;->setShortMessage(Ljava/lang/String;I)V

    .line 135
    return-void
.end method


# virtual methods
.method public ClearDimEffect()V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 127
    return-void
.end method

.method public SetDimEffect()V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 131
    return-void
.end method

.method protected close()V
    .locals 2

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/waze/reports/ReportMenu;->disableAnimation:Z

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/reports/ReportMenu;->hideBottomNotification(Z)V

    .line 479
    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->dismiss()V

    .line 483
    :goto_0
    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->removeReportForm()V

    .line 485
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/waze/reports/ReportForm;->SetIsLaneActive(Z)V

    .line 486
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->mainLayoutToAnimate:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->closeAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v0, v1}, Lcom/waze/view/anim/AnimationUtils;->closeAnimateReport(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/reports/ReportMenu;->isVisible:Z

    .line 551
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->restorePoiFocus()V

    .line 552
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 553
    return-void
.end method

.method public flipView()V
    .locals 3

    .prologue
    .line 605
    iget-object v2, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    if-nez v2, :cond_0

    .line 627
    :goto_0
    return-void

    .line 608
    :cond_0
    const v2, 0x7f090571

    invoke-virtual {p0, v2}, Lcom/waze/reports/ReportMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    .line 609
    .local v1, viewFlipper:Landroid/widget/ViewFlipper;
    iget-object v2, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 610
    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 611
    iget-object v2, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    iget-object v0, v2, Lcom/waze/reports/ReportForm;->animation:Landroid/view/animation/Animation;

    .line 612
    .local v0, animation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 614
    new-instance v2, Lcom/waze/reports/ReportMenu$21;

    invoke-direct {v2, p0}, Lcom/waze/reports/ReportMenu$21;-><init>(Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 626
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/waze/reports/ReportMenu;->inMenu:Z

    goto :goto_0

    .line 624
    :cond_1
    iget-object v2, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v2}, Lcom/waze/reports/ReportForm;->start()V

    goto :goto_1
.end method

.method public getDelayedReportButtonResource()I
    .locals 3

    .prologue
    .line 538
    const v1, 0x7f090571

    invoke-virtual {p0, v1}, Lcom/waze/reports/ReportMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 539
    .local v0, viewFlipper:Landroid/widget/ViewFlipper;
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 540
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v1}, Lcom/waze/reports/ReportForm;->getDelayedReportButtonResource()I

    move-result v1

    .line 544
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f0200b9

    goto :goto_0
.end method

.method public hideBottomNotification(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->layoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->getBottomNotification()Lcom/waze/view/bottom/BottomNotification;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/waze/view/bottom/BottomNotification;->hide(Z)V

    .line 139
    return-void
.end method

.method public initButton()V
    .locals 4

    .prologue
    .line 585
    const/4 v0, 0x1

    .line 586
    .local v0, bIsDay:Z
    const/4 v1, 0x0

    .line 587
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 588
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/navigate/DriveToNativeManager;->isDayMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 590
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020327

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 596
    :goto_0
    invoke-virtual {p0, v1}, Lcom/waze/reports/ReportMenu;->setMenuButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    :cond_0
    return-void

    .line 593
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 594
    const v3, 0x7f020328

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 592
    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/waze/reports/ReportForm;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 559
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/waze/reports/ReportMenu;->inMenu:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->removeReportForm()V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->close()V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 562
    const v1, 0x7f090571

    invoke-virtual {p0, v1}, Lcom/waze/reports/ReportMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 563
    .local v0, viewFlipper:Landroid/widget/ViewFlipper;
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 565
    invoke-direct {p0}, Lcom/waze/reports/ReportMenu;->initLayout()V

    .line 567
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v1}, Lcom/waze/reports/ReportForm;->beforeOrientationChanged()V

    .line 569
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v1}, Lcom/waze/reports/ReportForm;->stop()V

    .line 570
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v1}, Lcom/waze/reports/ReportForm;->removeAllViews()V

    .line 571
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v1, p1}, Lcom/waze/reports/ReportForm;->onOrientationChanged(I)V

    .line 572
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v1}, Lcom/waze/reports/ReportForm;->afterOrientationChanged()V

    .line 573
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v1}, Lcom/waze/reports/ReportForm;->stop()V

    .line 575
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 576
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->mRoadRecordingPopUp:Lcom/waze/roadrecording/RoadRecordingPopUp;

    if-eqz v1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->mRoadRecordingPopUp:Lcom/waze/roadrecording/RoadRecordingPopUp;

    invoke-virtual {v1, p1}, Lcom/waze/roadrecording/RoadRecordingPopUp;->onOrientationChanged(I)V

    .line 582
    :cond_1
    return-void
.end method

.method public open(Z)V
    .locals 6
    .parameter "delayed"

    .prologue
    const/4 v3, 0x1

    .line 515
    iput-boolean v3, p0, Lcom/waze/reports/ReportMenu;->isVisible:Z

    .line 516
    iget-boolean v1, p0, Lcom/waze/reports/ReportMenu;->disableAnimation:Z

    if-eqz v1, :cond_0

    .line 517
    new-instance v1, Lcom/waze/reports/ReportMenu$20;

    invoke-direct {v1, p0}, Lcom/waze/reports/ReportMenu$20;-><init>(Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {p0, v1}, Lcom/waze/reports/ReportMenu;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 525
    invoke-direct {p0}, Lcom/waze/reports/ReportMenu;->showBottomNotification()V

    .line 535
    :goto_0
    return-void

    .line 527
    :cond_0
    if-eqz p1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->layoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v1}, Lcom/waze/LayoutManager;->getDelayedReportButtonLocation()[I

    move-result-object v0

    .line 529
    .local v0, location:[I
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->mainLayoutToAnimate:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    aget v3, v0, v3

    int-to-float v3, v3

    .line 530
    const/16 v4, 0x12c

    iget-object v5, p0, Lcom/waze/reports/ReportMenu;->openAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 529
    invoke-static {v1, v2, v3, v4, v5}, Lcom/waze/view/anim/AnimationUtils;->openAnimateFromPoint(Landroid/view/View;FFILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 532
    .end local v0           #location:[I
    :cond_1
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->mainLayoutToAnimate:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/waze/reports/ReportMenu;->openAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v1, v2}, Lcom/waze/view/anim/AnimationUtils;->openAnimateReport(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public removeReportForm()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 435
    iget-boolean v2, p0, Lcom/waze/reports/ReportMenu;->inMenu:Z

    if-eqz v2, :cond_1

    .line 436
    const v2, 0x7f090571

    invoke-virtual {p0, v2}, Lcom/waze/reports/ReportMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    .line 437
    .local v1, viewFlipper:Landroid/widget/ViewFlipper;
    iget-object v2, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    if-eqz v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v2}, Lcom/waze/reports/ReportForm;->stop()V

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    iget-object v2, v2, Lcom/waze/reports/ReportForm;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_2

    .line 441
    iget-object v2, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    iget-object v0, v2, Lcom/waze/reports/ReportForm;->animation:Landroid/view/animation/Animation;

    .line 442
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 443
    new-instance v2, Lcom/waze/reports/ReportMenu$19;

    invoke-direct {v2, p0, v1}, Lcom/waze/reports/ReportMenu$19;-><init>(Lcom/waze/reports/ReportMenu;Landroid/widget/ViewFlipper;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 462
    .end local v0           #animation:Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 463
    iget-object v2, p0, Lcom/waze/reports/ReportMenu;->layoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v2}, Lcom/waze/LayoutManager;->removeDelayedReportButton()V

    .line 464
    iput-boolean v3, p0, Lcom/waze/reports/ReportMenu;->inMenu:Z

    .line 466
    .end local v1           #viewFlipper:Landroid/widget/ViewFlipper;
    :cond_1
    return-void

    .line 459
    .restart local v1       #viewFlipper:Landroid/widget/ViewFlipper;
    :cond_2
    iget-object v2, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 460
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    goto :goto_0
.end method

.method public setDelayedReport()V
    .locals 6

    .prologue
    .line 489
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->layoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v1}, Lcom/waze/LayoutManager;->getDelayedReportButtonLocation()[I

    move-result-object v0

    .line 490
    .local v0, location:[I
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->mainLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    const/16 v4, 0x12c

    .line 491
    iget-object v5, p0, Lcom/waze/reports/ReportMenu;->closeAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 490
    invoke-static {v1, v2, v3, v4, v5}, Lcom/waze/view/anim/AnimationUtils;->closeAnimateToPoint(Landroid/view/View;FFILandroid/view/animation/Animation$AnimationListener;)V

    .line 492
    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->layoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v1, p0}, Lcom/waze/LayoutManager;->setDelayedReport(Lcom/waze/reports/ReportMenu;)V

    .line 493
    return-void
.end method

.method public setMenuButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 469
    const v1, 0x7f090589

    invoke-virtual {p0, v1}, Lcom/waze/reports/ReportMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 470
    .local v0, button:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    :cond_0
    return-void
.end method

.method public setReportForm(Lcom/waze/reports/ReportForm;)V
    .locals 0
    .parameter "reportForm"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;

    .line 602
    return-void
.end method

.method public setRoadPaving(Z)V
    .locals 2
    .parameter "recording"

    .prologue
    .line 498
    if-eqz p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->layoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->removeRoadPavingTab()V

    .line 500
    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->close()V

    .line 506
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->layoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->setRoadPavingTab(Lcom/waze/reports/ReportMenu;)V

    .line 504
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->mainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/waze/reports/ReportMenu;->closeAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v0, v1}, Lcom/waze/view/anim/AnimationUtils;->closeAnimateReport(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public setRoadRecording(Lcom/waze/roadrecording/RoadRecordingPopUp;)V
    .locals 0
    .parameter "roadRecordingPopUp"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/waze/reports/ReportMenu;->mRoadRecordingPopUp:Lcom/waze/roadrecording/RoadRecordingPopUp;

    .line 153
    return-void
.end method

.method public showMapProblemReport()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/waze/reports/MapIssueReport;

    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/waze/reports/MapIssueReport;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {p0, v0}, Lcom/waze/reports/ReportMenu;->setReportForm(Lcom/waze/reports/ReportForm;)V

    .line 148
    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->flipView()V

    .line 149
    return-void
.end method

.method public showRoadRecording()V
    .locals 2

    .prologue
    .line 509
    new-instance v0, Lcom/waze/roadrecording/RoadRecordingPopUp;

    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/waze/roadrecording/RoadRecordingPopUp;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V

    iput-object v0, p0, Lcom/waze/reports/ReportMenu;->mRoadRecordingPopUp:Lcom/waze/roadrecording/RoadRecordingPopUp;

    .line 510
    iget-object v0, p0, Lcom/waze/reports/ReportMenu;->mRoadRecordingPopUp:Lcom/waze/roadrecording/RoadRecordingPopUp;

    invoke-virtual {v0}, Lcom/waze/roadrecording/RoadRecordingPopUp;->open()V

    .line 511
    return-void
.end method

.method public showTrafficJamReport()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/waze/reports/TrafficJamReport;

    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/waze/reports/TrafficJamReport;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {p0, v0}, Lcom/waze/reports/ReportMenu;->setReportForm(Lcom/waze/reports/ReportForm;)V

    .line 143
    invoke-virtual {p0}, Lcom/waze/reports/ReportMenu;->flipView()V

    .line 144
    return-void
.end method
