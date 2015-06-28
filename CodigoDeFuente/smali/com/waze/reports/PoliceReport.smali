.class public Lcom/waze/reports/PoliceReport;
.super Lcom/waze/reports/ReportForm;
.source "PoliceReport.java"


# static fields
.field private static final HIDDEN:I = 0x1

.field private static final NONE:I = -0x1

.field private static final REPORT_TYPE:I = 0x1

.field private static final VISIBLE:I


# instance fields
.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V
    .locals 1
    .parameter "context"
    .parameter "reportMenu"

    .prologue
    .line 99
    const v0, 0x7f0300b5

    invoke-direct {p0, p1, p2, v0}, Lcom/waze/reports/ReportForm;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;I)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/reports/PoliceReport;->selected:I

    .line 100
    invoke-virtual {p0}, Lcom/waze/reports/PoliceReport;->initLayout()V

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/PoliceReport;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/waze/reports/PoliceReport;->selected:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/reports/PoliceReport;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/waze/reports/PoliceReport;->selected:I

    return-void
.end method


# virtual methods
.method public getDelayedReportButtonResource()I
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isEnforcementPoliceEnabledNTV()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/waze/reports/PoliceReport;->selected:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isEnforcementPoliceEnabledNTV()I

    move-result v0

    if-nez v0, :cond_2

    .line 107
    :cond_1
    const v0, 0x7f020227

    .line 109
    :goto_0
    return v0

    :cond_2
    const v0, 0x7f02001d

    goto :goto_0
.end method

.method protected getReportSubtype()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/waze/reports/PoliceReport;->selected:I

    return v0
.end method

.method protected getReportType()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method protected initLayout()V
    .locals 10

    .prologue
    const v9, 0x7f090549

    const v8, 0x7f090545

    const/16 v7, 0x8

    .line 27
    invoke-super {p0}, Lcom/waze/reports/ReportForm;->initLayout()V

    .line 28
    iget-object v5, p0, Lcom/waze/reports/PoliceReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_POLICE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, titleText:Ljava/lang/String;
    const v5, 0x7f090034

    invoke-virtual {p0, v5}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/NativeManager;->isEnforcementPoliceEnabledNTV()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 33
    iget-object v5, p0, Lcom/waze/reports/PoliceReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_SPEED_TRAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, hiddenText:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v5, p0, Lcom/waze/reports/PoliceReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_POLICE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, visibleText:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :goto_0
    const v5, 0x7f090543

    invoke-virtual {p0, v5}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/waze/reports/PoliceReport$1;

    invoke-direct {v6, p0}, Lcom/waze/reports/PoliceReport$1;-><init>(Lcom/waze/reports/PoliceReport;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v5, 0x7f090547

    invoke-virtual {p0, v5}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/waze/reports/PoliceReport$2;

    invoke-direct {v6, p0}, Lcom/waze/reports/PoliceReport$2;-><init>(Lcom/waze/reports/PoliceReport;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v2, Lcom/waze/rtalerts/RTAlertsNativeManager;

    invoke-direct {v2}, Lcom/waze/rtalerts/RTAlertsNativeManager;-><init>()V

    .line 89
    .local v2, nativeManager:Lcom/waze/rtalerts/RTAlertsNativeManager;
    invoke-virtual {v2}, Lcom/waze/rtalerts/RTAlertsNativeManager;->isPoliceSubtypesAllowed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 90
    const v5, 0x7f090035

    invoke-virtual {p0, v5}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v5, 0x7f09003e

    invoke-virtual {p0, v5}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, buttonsSeparator:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .end local v0           #buttonsSeparator:Landroid/view/View;
    :cond_0
    return-void

    .line 39
    .end local v1           #hiddenText:Ljava/lang/String;
    .end local v2           #nativeManager:Lcom/waze/rtalerts/RTAlertsNativeManager;
    .end local v4           #visibleText:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/waze/reports/PoliceReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_HIDDEN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .restart local v1       #hiddenText:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v5, p0, Lcom/waze/reports/PoliceReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_VISIBLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .restart local v4       #visibleText:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/waze/reports/PoliceReport;->initLayout()V

    .line 23
    return-void
.end method
