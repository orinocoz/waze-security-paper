.class public Lcom/waze/settings/SettingsGasActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsGasActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field private static final SORT_BY_INDEX:I

.field private static final SORT_BY_OPTIONS:[Ljava/lang/String;

.field private static final SORT_BY_VALUES:[Ljava/lang/String;


# instance fields
.field private GasPopUpVisibilty:Lcom/waze/settings/SettingsCheckboxView;

.field private gasSortBy:Lcom/waze/settings/SettingsSelectionView;

.field private mConfigItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field private preferredGasStations:Lcom/waze/settings/SettingsSelectionView;

.field private preferredGasType:Lcom/waze/settings/SettingsSelectionView;

.field private final screenName:Ljava/lang/String;

.field private settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;

.field private stationStrings:[Ljava/lang/String;

.field private typeStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Price"

    aput-object v1, v0, v2

    const-string v1, "Distance"

    aput-object v1, v0, v3

    const-string v1, "Brand"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/settings/SettingsGasActivity;->SORT_BY_OPTIONS:[Ljava/lang/String;

    .line 25
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/settings/SettingsGasActivity;->SORT_BY_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 26
    const-string v0, "SettingsGas"

    iput-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->screenName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/waze/settings/SettingsGasActivity;)Lcom/waze/settings/SettingsSelectionView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->preferredGasStations:Lcom/waze/settings/SettingsSelectionView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/settings/SettingsGasActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/waze/settings/SettingsGasActivity;->stationStrings:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/waze/settings/SettingsGasActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->stationStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/settings/SettingsGasActivity;)Lcom/waze/settings/SettingsNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/settings/SettingsGasActivity;)Lcom/waze/settings/SettingsSelectionView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->preferredGasType:Lcom/waze/settings/SettingsSelectionView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/settings/SettingsGasActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/waze/settings/SettingsGasActivity;->typeStrings:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/waze/settings/SettingsGasActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->typeStrings:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f09062b

    const/4 v7, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->mConfigItems:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Provider Search"

    const-string v3, "Gas stations sort"

    const-string v5, ""

    invoke-direct {v1, v2, v3, v5}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsGasActivity;->mConfigItems:Ljava/util/List;

    const-string v2, "SettingsGas"

    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 44
    const-string v0, "SETTINGS_CLICK"

    const-string v1, "VAUE"

    const-string v2, "GAS_STATIONS"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    .line 47
    .local v9, mgr:Lcom/waze/NativeManager;
    const v0, 0x7f0300e9

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGasActivity;->setContentView(I)V

    .line 48
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_GAS_STATIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 49
    const v0, 0x7f090631

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->gasSortBy:Lcom/waze/settings/SettingsSelectionView;

    .line 50
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SORT_BY:Lcom/waze/strings/DisplayStrings;

    .line 51
    .local v4, gasSortByDisplayStr:Lcom/waze/strings/DisplayStrings;
    const-string v1, "SettingsGas"

    iget-object v2, p0, Lcom/waze/settings/SettingsGasActivity;->mConfigItems:Ljava/util/List;

    iget-object v3, p0, Lcom/waze/settings/SettingsGasActivity;->gasSortBy:Lcom/waze/settings/SettingsSelectionView;

    .line 52
    sget-object v5, Lcom/waze/settings/SettingsGasActivity;->SORT_BY_OPTIONS:[Ljava/lang/String;

    sget-object v6, Lcom/waze/settings/SettingsGasActivity;->SORT_BY_VALUES:[Ljava/lang/String;

    move-object v0, p0

    .line 51
    invoke-static/range {v0 .. v7}, Lcom/waze/settings/SettingsUtils;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 53
    const v0, 0x7f090630

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->preferredGasType:Lcom/waze/settings/SettingsSelectionView;

    .line 54
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_PREFERRED_GAS_TYPE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, gasTypeStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->preferredGasType:Lcom/waze/settings/SettingsSelectionView;

    invoke-virtual {v0, v8}, Lcom/waze/settings/SettingsSelectionView;->setKeyText(Ljava/lang/String;)V

    .line 56
    const v0, 0x7f09062f

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->preferredGasStations:Lcom/waze/settings/SettingsSelectionView;

    .line 57
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_PREFERRED_STATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, preferredStationStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->preferredGasStations:Lcom/waze/settings/SettingsSelectionView;

    invoke-virtual {v0, v11}, Lcom/waze/settings/SettingsSelectionView;->setKeyText(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/waze/settings/SettingsNativeManager;

    invoke-direct {v0}, Lcom/waze/settings/SettingsNativeManager;-><init>()V

    iput-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;

    .line 60
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;

    new-instance v1, Lcom/waze/settings/SettingsGasActivity$1;

    invoke-direct {v1, p0, v9}, Lcom/waze/settings/SettingsGasActivity$1;-><init>(Lcom/waze/settings/SettingsGasActivity;Lcom/waze/NativeManager;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNativeManager;->getPreferredGasStations(Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V

    .line 79
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->preferredGasStations:Lcom/waze/settings/SettingsSelectionView;

    invoke-virtual {v0, v12}, Lcom/waze/settings/SettingsSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/settings/SettingsGasActivity$2;

    invoke-direct {v1, p0, v11}, Lcom/waze/settings/SettingsGasActivity$2;-><init>(Lcom/waze/settings/SettingsGasActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;

    new-instance v1, Lcom/waze/settings/SettingsGasActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsGasActivity$3;-><init>(Lcom/waze/settings/SettingsGasActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNativeManager;->getPreferredGasType(Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V

    .line 107
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->preferredGasType:Lcom/waze/settings/SettingsSelectionView;

    invoke-virtual {v0, v12}, Lcom/waze/settings/SettingsSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/settings/SettingsGasActivity$4;

    invoke-direct {v1, p0, v8}, Lcom/waze/settings/SettingsGasActivity$4;-><init>(Lcom/waze/settings/SettingsGasActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f090632

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsCheckboxView;

    iput-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->GasPopUpVisibilty:Lcom/waze/settings/SettingsCheckboxView;

    .line 123
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->IsGasPopUpFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->GasPopUpVisibilty:Lcom/waze/settings/SettingsCheckboxView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsCheckboxView;->setVisibility(I)V

    .line 131
    :goto_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->getGasPopupVisibilty()Z

    move-result v10

    .line 132
    .local v10, on:Z
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->GasPopUpVisibilty:Lcom/waze/settings/SettingsCheckboxView;

    invoke-virtual {v0, v10}, Lcom/waze/settings/SettingsCheckboxView;->setValue(Z)V

    .line 134
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->GasPopUpVisibilty:Lcom/waze/settings/SettingsCheckboxView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_AUTO_SUGGEST_GAS_UPDATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsCheckboxView;->setText(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->GasPopUpVisibilty:Lcom/waze/settings/SettingsCheckboxView;

    new-instance v1, Lcom/waze/settings/SettingsGasActivity$5;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsGasActivity$5;-><init>(Lcom/waze/settings/SettingsGasActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsCheckboxView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    return-void

    .line 128
    .end local v10           #on:Z
    :cond_0
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity;->GasPopUpVisibilty:Lcom/waze/settings/SettingsCheckboxView;

    invoke-virtual {v0, v7}, Lcom/waze/settings/SettingsCheckboxView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateConfigItems(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 146
    .local v1, mgr:Lcom/waze/NativeManager;
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/ConfigItem;

    invoke-virtual {v4}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, sortByValue:Ljava/lang/String;
    sget-object v4, Lcom/waze/settings/SettingsGasActivity;->SORT_BY_VALUES:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/waze/settings/SettingsUtils;->findValueIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, index:I
    sget-object v4, Lcom/waze/settings/SettingsGasActivity;->SORT_BY_OPTIONS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, sortByStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/settings/SettingsGasActivity;->gasSortBy:Lcom/waze/settings/SettingsSelectionView;

    invoke-virtual {v4, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 150
    return-void
.end method
