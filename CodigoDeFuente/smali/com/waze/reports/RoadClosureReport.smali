.class public Lcom/waze/reports/RoadClosureReport;
.super Lcom/waze/reports/ReportForm;
.source "RoadClosureReport.java"


# static fields
.field private static final CONSTRUCTION:I = 0x1

.field private static final EVENT:I = 0x2

.field private static final HAZARD:I = 0x0

.field private static final NONE:I = -0x1

.field private static final REPORT_TYPE:I = 0xc

.field private static final TIME_ALL_DAY:I = 0x3

.field private static final TIME_LESS_THAN_HOUR:I = 0x1

.field private static final TIME_LONG_TERM:I = 0x5

.field private static final TIME_SEVERAL_DAYS:I = 0x4

.field private static final TIME_SEVERAL_HOURS:I = 0x2

.field private static final TIME_UNKNOWN:I


# instance fields
.field private selected:I

.field private subSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V
    .locals 2
    .parameter "context"
    .parameter "reportMenu"

    .prologue
    const/4 v1, -0x1

    .line 31
    const v0, 0x7f0300cd

    invoke-direct {p0, p1, p2, v0}, Lcom/waze/reports/ReportForm;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;I)V

    .line 28
    iput v1, p0, Lcom/waze/reports/RoadClosureReport;->selected:I

    .line 29
    iput v1, p0, Lcom/waze/reports/RoadClosureReport;->subSelected:I

    .line 32
    invoke-virtual {p0}, Lcom/waze/reports/RoadClosureReport;->initLayout()V

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/RoadClosureReport;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/waze/reports/RoadClosureReport;->selected:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/reports/RoadClosureReport;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/waze/reports/RoadClosureReport;->selected:I

    return-void
.end method

.method static synthetic access$2(Lcom/waze/reports/RoadClosureReport;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/waze/reports/RoadClosureReport;->subSelected:I

    return-void
.end method

.method static synthetic access$3(Lcom/waze/reports/RoadClosureReport;Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/reports/RoadClosureReport;->showSubmenu(Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method

.method private showSubmenu(Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 3
    .parameter "dialogTitle"
    .parameter "options"
    .parameter "optionValues"

    .prologue
    .line 143
    const/4 v2, -0x1

    iput v2, p0, Lcom/waze/reports/RoadClosureReport;->subSelected:I

    .line 144
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/waze/reports/RoadClosureReport;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 146
    new-instance v2, Lcom/waze/reports/RoadClosureReport$5;

    invoke-direct {v2, p0, p3}, Lcom/waze/reports/RoadClosureReport$5;-><init>(Lcom/waze/reports/RoadClosureReport;[I)V

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 152
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 153
    return-void
.end method


# virtual methods
.method public getDelayedReportButtonResource()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0200b9

    return v0
.end method

.method protected getDuration()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/waze/reports/RoadClosureReport;->subSelected:I

    return v0
.end method

.method protected getReportSubtype()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/waze/reports/RoadClosureReport;->selected:I

    return v0
.end method

.method protected getReportType()I
    .locals 1

    .prologue
    .line 167
    const/16 v0, 0xc

    return v0
.end method

.method protected initLayout()V
    .locals 6

    .prologue
    .line 45
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/waze/reports/ReportForm;->SetIsLaneActive(Z)V

    .line 46
    invoke-super {p0}, Lcom/waze/reports/ReportForm;->initLayout()V

    .line 47
    iget-object v4, p0, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_CLOSURE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, hazardText:Ljava/lang/String;
    const v4, 0x7f090034

    invoke-virtual {p0, v4}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v4, p0, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_HAZARD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, hazardRoadText:Ljava/lang/String;
    const v4, 0x7f09030f

    invoke-virtual {p0, v4}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v4, p0, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_CONSTRUCTION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, hazardShoulderText:Ljava/lang/String;
    const v4, 0x7f090313

    invoke-virtual {p0, v4}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v4, p0, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_EVENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, hazardWeatherText:Ljava/lang/String;
    const v4, 0x7f090317

    invoke-virtual {p0, v4}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v4, 0x7f09030d

    invoke-virtual {p0, v4}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/reports/RoadClosureReport$1;

    invoke-direct {v5, p0}, Lcom/waze/reports/RoadClosureReport$1;-><init>(Lcom/waze/reports/RoadClosureReport;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v4, 0x7f090311

    invoke-virtual {p0, v4}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/reports/RoadClosureReport$2;

    invoke-direct {v5, p0}, Lcom/waze/reports/RoadClosureReport$2;-><init>(Lcom/waze/reports/RoadClosureReport;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v4, 0x7f090315

    invoke-virtual {p0, v4}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/reports/RoadClosureReport$3;

    invoke-direct {v5, p0}, Lcom/waze/reports/RoadClosureReport$3;-><init>(Lcom/waze/reports/RoadClosureReport;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v4, 0x7f090567

    invoke-virtual {p0, v4}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/reports/RoadClosureReport$4;

    invoke-direct {v5, p0}, Lcom/waze/reports/RoadClosureReport$4;-><init>(Lcom/waze/reports/RoadClosureReport;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/waze/reports/RoadClosureReport;->initLayout()V

    .line 37
    return-void
.end method
