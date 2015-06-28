.class public Lcom/waze/reports/AccidentReport;
.super Lcom/waze/reports/ReportForm;
.source "AccidentReport.java"


# static fields
.field private static final MAJOR:I = 0x1

.field private static final MINOR:I = 0x0

.field private static final NONE:I = -0x1

.field private static final REPORT_TYPE:I = 0x2


# instance fields
.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V
    .locals 1
    .parameter "context"
    .parameter "reportMenu"

    .prologue
    .line 19
    const v0, 0x7f030001

    invoke-direct {p0, p1, p2, v0}, Lcom/waze/reports/ReportForm;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;I)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/reports/AccidentReport;->selected:I

    .line 20
    invoke-virtual {p0}, Lcom/waze/reports/AccidentReport;->initLayout()V

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/AccidentReport;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/waze/reports/AccidentReport;->selected:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/reports/AccidentReport;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput p1, p0, Lcom/waze/reports/AccidentReport;->selected:I

    return-void
.end method


# virtual methods
.method public getDelayedReportButtonResource()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f020013

    return v0
.end method

.method protected getReportSubtype()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/waze/reports/AccidentReport;->selected:I

    return v0
.end method

.method protected getReportType()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x2

    return v0
.end method

.method protected initLayout()V
    .locals 5

    .prologue
    .line 29
    invoke-super {p0}, Lcom/waze/reports/ReportForm;->initLayout()V

    .line 30
    iget-object v3, p0, Lcom/waze/reports/AccidentReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ACCIDENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, accidentText:Ljava/lang/String;
    const v3, 0x7f090034

    invoke-virtual {p0, v3}, Lcom/waze/reports/AccidentReport;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v3, p0, Lcom/waze/reports/AccidentReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_MINOR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, trafficJamLightText:Ljava/lang/String;
    const v3, 0x7f090039

    invoke-virtual {p0, v3}, Lcom/waze/reports/AccidentReport;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v3, p0, Lcom/waze/reports/AccidentReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_MAJOR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, trafficJamHeavyText:Ljava/lang/String;
    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/waze/reports/AccidentReport;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v3, 0x7f090037

    invoke-virtual {p0, v3}, Lcom/waze/reports/AccidentReport;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/waze/reports/AccidentReport$1;

    invoke-direct {v4, p0}, Lcom/waze/reports/AccidentReport$1;-><init>(Lcom/waze/reports/AccidentReport;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v3, 0x7f09003b

    invoke-virtual {p0, v3}, Lcom/waze/reports/AccidentReport;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/waze/reports/AccidentReport$2;

    invoke-direct {v4, p0}, Lcom/waze/reports/AccidentReport$2;-><init>(Lcom/waze/reports/AccidentReport;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/waze/reports/AccidentReport;->initLayout()V

    .line 84
    return-void
.end method
