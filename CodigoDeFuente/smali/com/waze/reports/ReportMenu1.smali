.class public Lcom/waze/reports/ReportMenu1;
.super Landroid/widget/RelativeLayout;
.source "ReportMenu1.java"


# instance fields
.field private myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V
    .locals 10
    .parameter "context"
    .parameter "reportMenu"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 25
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f0300c9

    invoke-virtual {v4, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v8

    iput-object v8, p0, Lcom/waze/reports/ReportMenu1;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 27
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v8

    iput-object v8, p0, Lcom/waze/reports/ReportMenu1;->nativeManager:Lcom/waze/NativeManager;

    .line 28
    iget-object v8, p0, Lcom/waze/reports/ReportMenu1;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_TRAFFIC_JAM:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 29
    .local v7, trafficText:Ljava/lang/String;
    const v8, 0x7f090573

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v8, p0, Lcom/waze/reports/ReportMenu1;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_POLICE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 31
    .local v5, policeText:Ljava/lang/String;
    const v8, 0x7f090576

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/waze/NativeManager;->isEnforcementPoliceEnabledNTV()I

    move-result v8

    if-nez v8, :cond_0

    .line 33
    const v8, 0x7f090575

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 34
    .local v3, icon:Landroid/widget/ImageView;
    const v8, 0x7f020329

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    .end local v3           #icon:Landroid/widget/ImageView;
    :cond_0
    iget-object v8, p0, Lcom/waze/reports/ReportMenu1;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_ACCIDENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, accidentText:Ljava/lang/String;
    const v8, 0x7f090578

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v8, p0, Lcom/waze/reports/ReportMenu1;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_HAZARD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, hazardText:Ljava/lang/String;
    const v8, 0x7f09057a

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v8, p0, Lcom/waze/reports/ReportMenu1;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_CAMERA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, speedcamText:Ljava/lang/String;
    const v8, 0x7f09057d

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/waze/NativeManager;->isEnforcementAlertsEnabledNTV()Z

    move-result v8

    if-nez v8, :cond_1

    .line 45
    const v8, 0x7f09057c

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 46
    .restart local v3       #icon:Landroid/widget/ImageView;
    const v8, 0x7f0203c4

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .end local v3           #icon:Landroid/widget/ImageView;
    :cond_1
    iget-object v8, p0, Lcom/waze/reports/ReportMenu1;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_CHIT_CHAT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, chatText:Ljava/lang/String;
    const v8, 0x7f09057f

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v8, 0x7f090572

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/reports/ReportMenu1$1;

    invoke-direct {v9, p0, p2}, Lcom/waze/reports/ReportMenu1$1;-><init>(Lcom/waze/reports/ReportMenu1;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v8, 0x7f090574

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/reports/ReportMenu1$2;

    invoke-direct {v9, p0, p2}, Lcom/waze/reports/ReportMenu1$2;-><init>(Lcom/waze/reports/ReportMenu1;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v8, 0x7f090577

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/reports/ReportMenu1$3;

    invoke-direct {v9, p0, p2}, Lcom/waze/reports/ReportMenu1$3;-><init>(Lcom/waze/reports/ReportMenu1;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v8, 0x7f090579

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/reports/ReportMenu1$4;

    invoke-direct {v9, p0, p2}, Lcom/waze/reports/ReportMenu1$4;-><init>(Lcom/waze/reports/ReportMenu1;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v8, 0x7f09057e

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/reports/ReportMenu1$5;

    invoke-direct {v9, p0, p2}, Lcom/waze/reports/ReportMenu1$5;-><init>(Lcom/waze/reports/ReportMenu1;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v8, 0x7f09057b

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/reports/ReportMenu1$6;

    invoke-direct {v9, p0, p2}, Lcom/waze/reports/ReportMenu1$6;-><init>(Lcom/waze/reports/ReportMenu1;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/ReportMenu1;)Lcom/waze/mywaze/MyWazeNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/waze/reports/ReportMenu1;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/reports/ReportMenu1;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/waze/reports/ReportMenu1;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method
