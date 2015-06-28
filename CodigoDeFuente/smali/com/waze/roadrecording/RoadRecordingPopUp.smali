.class public Lcom/waze/roadrecording/RoadRecordingPopUp;
.super Landroid/app/Dialog;
.source "RoadRecordingPopUp.java"


# instance fields
.field private mReportMenu:Lcom/waze/reports/ReportMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V
    .locals 1
    .parameter "context"
    .parameter "reportMenu"

    .prologue
    .line 24
    const v0, 0x7f06000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p2, p0, Lcom/waze/roadrecording/RoadRecordingPopUp;->mReportMenu:Lcom/waze/reports/ReportMenu;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/waze/roadrecording/RoadRecordingPopUp;)Lcom/waze/reports/ReportMenu;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/waze/roadrecording/RoadRecordingPopUp;->mReportMenu:Lcom/waze/reports/ReportMenu;

    return-object v0
.end method

.method private initDlg()V
    .locals 6

    .prologue
    const v5, 0x7f0903ef

    const/4 v4, -0x1

    .line 47
    const v3, 0x7f0300ce

    invoke-virtual {p0, v3}, Lcom/waze/roadrecording/RoadRecordingPopUp;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/waze/roadrecording/RoadRecordingPopUp;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 49
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 51
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->isEditorIgnoreNewRoadsNTV()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 53
    .local v1, isRecording:Z
    :goto_0
    invoke-direct {p0}, Lcom/waze/roadrecording/RoadRecordingPopUp;->setTitle()V

    .line 55
    const v3, 0x7f090033

    invoke-virtual {p0, v3}, Lcom/waze/roadrecording/RoadRecordingPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/button/AutoResizeTextButton;

    .line 56
    .local v0, closeButton:Lcom/waze/view/button/AutoResizeTextButton;
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_CLOSE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/waze/view/button/AutoResizeTextButton;->setText(Ljava/lang/String;)V

    .line 58
    new-instance v3, Lcom/waze/roadrecording/RoadRecordingPopUp$1;

    invoke-direct {v3, p0}, Lcom/waze/roadrecording/RoadRecordingPopUp$1;-><init>(Lcom/waze/roadrecording/RoadRecordingPopUp;)V

    invoke-virtual {v0, v3}, Lcom/waze/view/button/AutoResizeTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    if-eqz v1, :cond_1

    .line 65
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_DONEQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/waze/roadrecording/RoadRecordingPopUp;->setAdditionTextTitle(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_CLICK_STOP_AND_MAKE_SURE_TO_GO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/waze/roadrecording/RoadRecordingPopUp;->setAdditionText(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_STOP_PAVING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/waze/roadrecording/RoadRecordingPopUp;->setButtonText(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v5}, Lcom/waze/roadrecording/RoadRecordingPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0201ff

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    :goto_1
    const v3, 0x7f090598

    invoke-virtual {p0, v3}, Lcom/waze/roadrecording/RoadRecordingPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 78
    new-instance v4, Lcom/waze/roadrecording/RoadRecordingPopUp$2;

    invoke-direct {v4, p0, v1}, Lcom/waze/roadrecording/RoadRecordingPopUp$2;-><init>(Lcom/waze/roadrecording/RoadRecordingPopUp;Z)V

    .line 77
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void

    .line 51
    .end local v0           #closeButton:Lcom/waze/view/button/AutoResizeTextButton;
    .end local v1           #isRecording:Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    .restart local v0       #closeButton:Lcom/waze/view/button/AutoResizeTextButton;
    .restart local v1       #isRecording:Z
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_NO_ROAD_HEREQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/waze/roadrecording/RoadRecordingPopUp;->setAdditionTextTitle(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_CLICK_PAVE_AND_SIMPLY_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/waze/roadrecording/RoadRecordingPopUp;->setAdditionText(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_PAVE_ROAD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/waze/roadrecording/RoadRecordingPopUp;->setButtonText(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v5}, Lcom/waze/roadrecording/RoadRecordingPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020200

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private setAdditionText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 39
    const v0, 0x7f0903f1

    invoke-virtual {p0, v0}, Lcom/waze/roadrecording/RoadRecordingPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method private setAdditionTextTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 35
    const v0, 0x7f0903f0

    invoke-virtual {p0, v0}, Lcom/waze/roadrecording/RoadRecordingPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method private setButtonText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 43
    const v0, 0x7f090599

    invoke-virtual {p0, v0}, Lcom/waze/roadrecording/RoadRecordingPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method private setTitle()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PAVE_ROAD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, titleText:Ljava/lang/String;
    const v1, 0x7f090595

    invoke-virtual {p0, v1}, Lcom/waze/roadrecording/RoadRecordingPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->isEditorIgnoreNewRoadsNTV()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 106
    .local v0, isRecording:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/waze/roadrecording/RoadRecordingPopUp;->dismiss()V

    .line 108
    iget-object v1, p0, Lcom/waze/roadrecording/RoadRecordingPopUp;->mReportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v1, v0}, Lcom/waze/reports/ReportMenu;->setRoadPaving(Z)V

    .line 114
    :goto_1
    return-void

    .line 105
    .end local v0           #isRecording:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    .restart local v0       #isRecording:Z
    :cond_1
    invoke-virtual {p0}, Lcom/waze/roadrecording/RoadRecordingPopUp;->dismiss()V

    .line 112
    iget-object v1, p0, Lcom/waze/roadrecording/RoadRecordingPopUp;->mReportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v1}, Lcom/waze/reports/ReportMenu;->show()V

    goto :goto_1
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/waze/roadrecording/RoadRecordingPopUp;->initDlg()V

    .line 118
    return-void
.end method

.method public open()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/waze/roadrecording/RoadRecordingPopUp;->initDlg()V

    .line 101
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 102
    return-void
.end method
