.class public Lcom/waze/reports/ReportMenu2;
.super Landroid/widget/RelativeLayout;
.source "ReportMenu2.java"


# instance fields
.field mReportMenu:Lcom/waze/reports/ReportMenu;


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
    const v8, 0x7f0300ca

    invoke-virtual {v4, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v6

    .line 27
    .local v6, nativeManager:Lcom/waze/NativeManager;
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_MAP_ISSUE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, mapEditorText:Ljava/lang/String;
    const v8, 0x7f090581

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_PAVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 30
    .local v7, recordText:Ljava/lang/String;
    const v8, 0x7f090583

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_GAS_PRICES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, gasText:Ljava/lang/String;
    const v8, 0x7f090585

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_CHECK_IN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, checkinText:Ljava/lang/String;
    const v8, 0x7f090588

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v8, 0x7f090580

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/reports/ReportMenu2$1;

    invoke-direct {v9, p0, p2}, Lcom/waze/reports/ReportMenu2$1;-><init>(Lcom/waze/reports/ReportMenu2;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v8, 0x7f090582

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/reports/ReportMenu2$2;

    invoke-direct {v9, p0, p2}, Lcom/waze/reports/ReportMenu2$2;-><init>(Lcom/waze/reports/ReportMenu2;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v8, 0x7f090584

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/reports/ReportMenu2$3;

    invoke-direct {v9, p0, p2}, Lcom/waze/reports/ReportMenu2$3;-><init>(Lcom/waze/reports/ReportMenu2;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v6}, Lcom/waze/NativeManager;->isGasUpdateable()Z

    move-result v8

    if-nez v8, :cond_0

    .line 62
    const v8, 0x7f090584

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 63
    const v8, 0x7f090582

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :goto_0
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/waze/mywaze/MyWazeNativeManager;->FoursquareEnabledNTV()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 70
    const v8, 0x7f090586

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/reports/ReportMenu2$4;

    invoke-direct {v9, p0, p2}, Lcom/waze/reports/ReportMenu2$4;-><init>(Lcom/waze/reports/ReportMenu2;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :goto_1
    return-void

    .line 65
    :cond_0
    const v8, 0x7f090584

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 66
    const v8, 0x7f090582

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 80
    :cond_1
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_BAD_ROUTE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, badRouteText:Ljava/lang/String;
    const v8, 0x7f090588

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v8, 0x7f090587

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 84
    .local v1, buttonImage:Landroid/widget/ImageView;
    const v8, 0x7f0201d6

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    const v8, 0x7f090586

    invoke-virtual {p0, v8}, Lcom/waze/reports/ReportMenu2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/reports/ReportMenu2$5;

    invoke-direct {v9, p0, p2}, Lcom/waze/reports/ReportMenu2$5;-><init>(Lcom/waze/reports/ReportMenu2;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
