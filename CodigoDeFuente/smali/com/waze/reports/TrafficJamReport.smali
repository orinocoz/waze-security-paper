.class public Lcom/waze/reports/TrafficJamReport;
.super Lcom/waze/reports/ReportForm;
.source "TrafficJamReport.java"


# static fields
.field private static final HEAVY:I = 0x1

.field private static final MODERATE:I = 0x0

.field private static final NONE:I = -0x1

.field private static final REPORT_TYPE:I = 0x3

.field private static final STANDSTILL:I = 0x2


# instance fields
.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V
    .locals 1
    .parameter "context"
    .parameter "reportMenu"

    .prologue
    .line 20
    const v0, 0x7f030129

    invoke-direct {p0, p1, p2, v0}, Lcom/waze/reports/ReportForm;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;I)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/reports/TrafficJamReport;->selected:I

    .line 21
    invoke-virtual {p0}, Lcom/waze/reports/TrafficJamReport;->initLayout()V

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/TrafficJamReport;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/waze/reports/TrafficJamReport;->selected:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/reports/TrafficJamReport;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/waze/reports/TrafficJamReport;->selected:I

    return-void
.end method


# virtual methods
.method public getDelayedReportButtonResource()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f020020

    return v0
.end method

.method protected getReportSubtype()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/waze/reports/TrafficJamReport;->selected:I

    return v0
.end method

.method protected getReportType()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x3

    return v0
.end method

.method protected initLayout()V
    .locals 6

    .prologue
    .line 34
    invoke-super {p0}, Lcom/waze/reports/ReportForm;->initLayout()V

    .line 35
    iget-object v4, p0, Lcom/waze/reports/TrafficJamReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_TRAFFIC_JAM:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, trafficText:Ljava/lang/String;
    const v4, 0x7f090034

    invoke-virtual {p0, v4}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v4, p0, Lcom/waze/reports/TrafficJamReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_MODERATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, trafficJamLightText:Ljava/lang/String;
    const v4, 0x7f09075a

    invoke-virtual {p0, v4}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v4, p0, Lcom/waze/reports/TrafficJamReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_HEAVY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, trafficJamHeavyText:Ljava/lang/String;
    const v4, 0x7f09075e

    invoke-virtual {p0, v4}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v4, p0, Lcom/waze/reports/TrafficJamReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_STANDSTILL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, trafficJamStandstillText:Ljava/lang/String;
    const v4, 0x7f090762

    invoke-virtual {p0, v4}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v4, 0x7f090758

    invoke-virtual {p0, v4}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/reports/TrafficJamReport$1;

    invoke-direct {v5, p0}, Lcom/waze/reports/TrafficJamReport$1;-><init>(Lcom/waze/reports/TrafficJamReport;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v4, 0x7f09075c

    invoke-virtual {p0, v4}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/reports/TrafficJamReport$2;

    invoke-direct {v5, p0}, Lcom/waze/reports/TrafficJamReport$2;-><init>(Lcom/waze/reports/TrafficJamReport;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v4, 0x7f090760

    invoke-virtual {p0, v4}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/reports/TrafficJamReport$3;

    invoke-direct {v5, p0}, Lcom/waze/reports/TrafficJamReport$3;-><init>(Lcom/waze/reports/TrafficJamReport;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/waze/reports/TrafficJamReport;->initLayout()V

    .line 26
    return-void
.end method
