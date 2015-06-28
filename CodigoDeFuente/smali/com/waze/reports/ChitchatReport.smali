.class public Lcom/waze/reports/ChitchatReport;
.super Lcom/waze/reports/ReportForm;
.source "ChitchatReport.java"


# static fields
.field private static final REPORT_TYPE:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V
    .locals 1
    .parameter "context"
    .parameter "reportMenu"

    .prologue
    .line 13
    const v0, 0x7f03002d

    invoke-direct {p0, p1, p2, v0}, Lcom/waze/reports/ReportForm;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;I)V

    .line 14
    invoke-virtual {p0}, Lcom/waze/reports/ChitchatReport;->initLayout()V

    .line 15
    return-void
.end method


# virtual methods
.method public getDelayedReportButtonResource()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f020017

    return v0
.end method

.method protected getReportSubtype()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    return v0
.end method

.method protected getReportType()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected initLayout()V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0}, Lcom/waze/reports/ReportForm;->initLayout()V

    .line 28
    iget-object v1, p0, Lcom/waze/reports/ChitchatReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CHIT_CHAT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, chitchatText:Ljava/lang/String;
    const v1, 0x7f090034

    invoke-virtual {p0, v1}, Lcom/waze/reports/ChitchatReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/waze/reports/ChitchatReport;->initLayout()V

    .line 18
    return-void
.end method
