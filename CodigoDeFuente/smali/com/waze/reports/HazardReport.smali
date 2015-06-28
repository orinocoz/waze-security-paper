.class public Lcom/waze/reports/HazardReport;
.super Lcom/waze/reports/ReportForm;
.source "HazardReport.java"


# static fields
.field private static final NONE:I = -0x1

.field private static final ON_ROAD:I = 0x0

.field private static final ON_ROAD_CAR_STOPPED:I = 0x17

.field private static final ON_ROAD_CONSTRUCTION:I = 0x16

.field private static final ON_ROAD_OBJECT:I = 0x3

.field private static final ON_ROAD_POT_HOLE:I = 0x4

.field private static final ON_ROAD_ROAD_KILL:I = 0x5

.field private static final ON_SHOULDER:I = 0x1

.field private static final ON_SHOULDER_ANIMALS:I = 0x7

.field private static final ON_SHOULDER_CAR_STOPPED:I = 0x6

.field private static final ON_SHOULDER_MISSING_SIGN:I = 0x8

.field private static final REPORT_TYPE:I = 0x5

.field private static final WEATHER:I = 0x2

.field private static final WEATHER_FOG:I = 0x9

.field private static final WEATHER_HAIL:I = 0xa

.field private static final WEATHER_HEAVY_RAIN:I = 0xd

.field private static final WEATHER_HEAVY_SNOW:I = 0x15


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

    .line 35
    const v0, 0x7f030064

    invoke-direct {p0, p1, p2, v0}, Lcom/waze/reports/ReportForm;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;I)V

    .line 32
    iput v1, p0, Lcom/waze/reports/HazardReport;->selected:I

    .line 33
    iput v1, p0, Lcom/waze/reports/HazardReport;->subSelected:I

    .line 36
    invoke-virtual {p0}, Lcom/waze/reports/HazardReport;->initLayout()V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/HazardReport;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/waze/reports/HazardReport;->selected:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/reports/HazardReport;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/waze/reports/HazardReport;->selected:I

    return-void
.end method

.method static synthetic access$2(Lcom/waze/reports/HazardReport;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/waze/reports/HazardReport;->subSelected:I

    return-void
.end method

.method static synthetic access$3(Lcom/waze/reports/HazardReport;Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/reports/HazardReport;->showSubmenu(Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method

.method private showSubmenu(Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 3
    .parameter "dialogTitle"
    .parameter "options"
    .parameter "optionValues"

    .prologue
    .line 142
    const/4 v2, -0x1

    iput v2, p0, Lcom/waze/reports/HazardReport;->subSelected:I

    .line 143
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/waze/reports/HazardReport;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 145
    new-instance v2, Lcom/waze/reports/HazardReport$4;

    invoke-direct {v2, p0, p2, p3}, Lcom/waze/reports/HazardReport$4;-><init>(Lcom/waze/reports/HazardReport;[Ljava/lang/String;[I)V

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
    .line 45
    const v0, 0x7f020018

    return v0
.end method

.method protected getReportSubtype()I
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/waze/reports/HazardReport;->subSelected:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 158
    iget v0, p0, Lcom/waze/reports/HazardReport;->selected:I

    .line 160
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/waze/reports/HazardReport;->subSelected:I

    goto :goto_0
.end method

.method protected getReportType()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x5

    return v0
.end method

.method protected initLayout()V
    .locals 6

    .prologue
    .line 49
    invoke-super {p0}, Lcom/waze/reports/ReportForm;->initLayout()V

    .line 50
    iget-object v4, p0, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_HAZARD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, hazardText:Ljava/lang/String;
    const v4, 0x7f090034

    invoke-virtual {p0, v4}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v4, p0, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_ON_ROAD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, hazardRoadText:Ljava/lang/String;
    const v4, 0x7f09030f

    invoke-virtual {p0, v4}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v4, p0, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SHOULDER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, hazardShoulderText:Ljava/lang/String;
    const v4, 0x7f090313

    invoke-virtual {p0, v4}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v4, p0, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_WEATHER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, hazardWeatherText:Ljava/lang/String;
    const v4, 0x7f090317

    invoke-virtual {p0, v4}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v4, 0x7f09030d

    invoke-virtual {p0, v4}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/reports/HazardReport$1;

    invoke-direct {v5, p0}, Lcom/waze/reports/HazardReport$1;-><init>(Lcom/waze/reports/HazardReport;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v4, 0x7f090311

    invoke-virtual {p0, v4}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/reports/HazardReport$2;

    invoke-direct {v5, p0}, Lcom/waze/reports/HazardReport$2;-><init>(Lcom/waze/reports/HazardReport;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v4, 0x7f090315

    invoke-virtual {p0, v4}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/reports/HazardReport$3;

    invoke-direct {v5, p0}, Lcom/waze/reports/HazardReport$3;-><init>(Lcom/waze/reports/HazardReport;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/waze/reports/HazardReport;->initLayout()V

    .line 41
    return-void
.end method
