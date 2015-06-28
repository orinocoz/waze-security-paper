.class public Lcom/waze/reports/CameraReport;
.super Lcom/waze/reports/ReportForm;
.source "CameraReport.java"


# static fields
.field private static final FAKE:I = 0x2

.field private static final NONE:I = -0x1

.field private static final REDLIGHT:I = 0x1

.field private static final REPORT_TYPE:I = 0xa

.field private static final SPEED:I


# instance fields
.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V
    .locals 1
    .parameter "context"
    .parameter "reportMenu"

    .prologue
    .line 21
    const v0, 0x7f030029

    invoke-direct {p0, p1, p2, v0}, Lcom/waze/reports/ReportForm;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;I)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/reports/CameraReport;->selected:I

    .line 22
    invoke-virtual {p0}, Lcom/waze/reports/CameraReport;->initLayout()V

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/CameraReport;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/waze/reports/CameraReport;->selected:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/reports/CameraReport;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/waze/reports/CameraReport;->selected:I

    return-void
.end method

.method static synthetic access$2(Lcom/waze/reports/CameraReport;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/waze/reports/CameraReport;->setSendEnabled(Z)V

    return-void
.end method

.method private setSendEnabled(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    .line 126
    const v0, -0x777778

    .line 127
    .local v0, color:I
    if-nez p1, :cond_0

    .line 128
    const v0, -0x777778

    .line 132
    :goto_0
    const v1, 0x7f090370

    invoke-virtual {p0, v1}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    const v1, 0x7f09036f

    invoke-virtual {p0, v1}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    return-void

    .line 130
    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method


# virtual methods
.method public getDelayedReportButtonResource()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0203b4

    return v0
.end method

.method protected getReportSubtype()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/waze/reports/CameraReport;->selected:I

    return v0
.end method

.method protected getReportType()I
    .locals 1

    .prologue
    .line 143
    const/16 v0, 0xa

    return v0
.end method

.method protected initLayout()V
    .locals 10

    .prologue
    const v8, -0x777778

    const/4 v9, 0x0

    .line 35
    invoke-super {p0}, Lcom/waze/reports/ReportForm;->initLayout()V

    .line 36
    invoke-virtual {p0}, Lcom/waze/reports/CameraReport;->stop()V

    .line 38
    const v7, 0x7f090205

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    const v7, 0x7f090204

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    const v7, 0x7f0901f7

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    const v7, 0x7f090569

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 43
    .local v6, reportPicture:Landroid/widget/ImageView;
    if-eqz v6, :cond_0

    .line 44
    const v7, 0x7f020219

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    const v7, 0x7f09056a

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    :cond_0
    iget-object v7, p0, Lcom/waze/reports/CameraReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_WAZERS_ARE_NOTIFIED_OF_SPEED_CAMS_ONLY_WHEN_APPROACHING_AT_AN_EXCESSIVE_SPEED_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, cameraText1:Ljava/lang/String;
    const v7, 0x7f0901f2

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v7, p0, Lcom/waze/reports/CameraReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_NOTEC_NEW_SPEED_CAMS_NEED_TO_BE_VALIDATED_BY_COMMUNITY_MAP_EDITORS__YOU_CAN_DO_IT_TOO_AT_WWW_WAZE_COMSLIVEMAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, cameraText2:Ljava/lang/String;
    const v7, 0x7f0901f3

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v7, p0, Lcom/waze/reports/CameraReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_CAMERA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, cameraText:Ljava/lang/String;
    const v7, 0x7f090034

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v7, p0, Lcom/waze/reports/CameraReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_SPEED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, cameraSpeedText:Ljava/lang/String;
    const v7, 0x7f0901e9

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v7, p0, Lcom/waze/reports/CameraReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_RED_LIGHT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, cameraRedlightText:Ljava/lang/String;
    const v7, 0x7f0901ed

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v7, p0, Lcom/waze/reports/CameraReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_FAKE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, cameraFakeText:Ljava/lang/String;
    const v7, 0x7f0901f1

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-direct {p0, v9}, Lcom/waze/reports/CameraReport;->setSendEnabled(Z)V

    .line 63
    const v7, 0x7f0901e7

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/waze/reports/CameraReport$1;

    invoke-direct {v8, p0}, Lcom/waze/reports/CameraReport$1;-><init>(Lcom/waze/reports/CameraReport;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v7, 0x7f0901eb

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/waze/reports/CameraReport$2;

    invoke-direct {v8, p0}, Lcom/waze/reports/CameraReport$2;-><init>(Lcom/waze/reports/CameraReport;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v7, 0x7f0901ef

    invoke-virtual {p0, v7}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/waze/reports/CameraReport$3;

    invoke-direct {v8, p0}, Lcom/waze/reports/CameraReport$3;-><init>(Lcom/waze/reports/CameraReport;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/waze/reports/CameraReport;->initLayout()V

    .line 27
    return-void
.end method
