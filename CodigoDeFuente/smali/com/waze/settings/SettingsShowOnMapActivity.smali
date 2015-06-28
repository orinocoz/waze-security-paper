.class public Lcom/waze/settings/SettingsShowOnMapActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsShowOnMapActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field private static final ENABLE_TOGGLE_CONSTRUCTION_INDEX:I = 0x5

.field private static final REPORT_TYPES_INDEX:I = 0x3

.field private static final ROAD_GOODIES_INDEX:I = 0x4

.field private static final SPEEDCAMS_INDEX:I = 0x2

.field private static final TRAFFIC_LOADS_INDEX:I = 0x1

.field private static final WAZERS_INDEX:I = 0x0

.field public static final screenName:Ljava/lang/String; = "SettingsAdvancedShowOnMap"


# instance fields
.field private accidentsView:Lcom/waze/settings/SettingsSwitchView;

.field private chitchatsView:Lcom/waze/settings/SettingsSwitchView;

.field private enableToggleConstruction:Z

.field private hazardsView:Lcom/waze/settings/SettingsSwitchView;

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

.field private mNativeManager:Lcom/waze/NativeManager;

.field private policeView:Lcom/waze/settings/SettingsSwitchView;

.field private reportTypes:[Z

.field private roadConstructionsView:Lcom/waze/settings/SettingsSwitchView;

.field private roadGoodiesView:Lcom/waze/settings/SettingsSwitchView;

.field private speedcamsView:Lcom/waze/settings/SettingsSwitchView;

.field private trafficJamsView:Lcom/waze/settings/SettingsSwitchView;

.field private trafficLoadsView:Lcom/waze/settings/SettingsSwitchView;

.field private wazersView:Lcom/waze/settings/SettingsSwitchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 43
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/waze/settings/SettingsShowOnMapActivity;)[Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/settings/SettingsShowOnMapActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    return-object v0
.end method

.method private createCheckbox(Lcom/waze/strings/DisplayStrings;Lcom/waze/settings/SettingsSwitchView;I)V
    .locals 2
    .parameter "regStr"
    .parameter "checkboxView"
    .parameter "index"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mNativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v1, p1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, langStr:Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 162
    new-instance v1, Lcom/waze/settings/SettingsShowOnMapActivity$1;

    invoke-direct {v1, p0, p3}, Lcom/waze/settings/SettingsShowOnMapActivity$1;-><init>(Lcom/waze/settings/SettingsShowOnMapActivity;I)V

    invoke-virtual {p2, v1}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 175
    return-void
.end method


# virtual methods
.method protected createReportTypesString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 178
    const-string v0, ""

    .line 179
    .local v0, finalString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    .line 213
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    return-object v0

    .line 180
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 179
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :pswitch_0
    iget-object v2, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_2

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "0-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    goto :goto_1

    .line 187
    :pswitch_1
    iget-object v2, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_2

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "1-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    goto :goto_1

    .line 192
    :pswitch_2
    iget-object v2, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_2

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "2-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    goto :goto_1

    .line 197
    :pswitch_3
    iget-object v2, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_2

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "3-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    goto :goto_1

    .line 202
    :pswitch_4
    iget-object v2, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_2

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "5-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    goto/16 :goto_1

    .line 207
    :pswitch_5
    iget-object v2, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_2

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "7-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x8

    .line 97
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const-string v4, "waze"

    const-string v5, "start settings activity show on map"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const v4, 0x7f0300f6

    invoke-virtual {p0, v4}, Lcom/waze/settings/SettingsShowOnMapActivity;->setContentView(I)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".reportTypes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v4

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    .line 105
    :cond_0
    const v4, 0x7f090058

    invoke-virtual {p0, v4}, Lcom/waze/settings/SettingsShowOnMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/title/TitleBar;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SHOW_ON_MAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, p0, v5}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    .line 107
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    new-instance v5, Lcom/waze/ConfigItem;

    const-string v6, "Map"

    const-string v7, "Show other wazers"

    const-string v8, ""

    invoke-direct {v5, v6, v7, v8}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    new-instance v5, Lcom/waze/ConfigItem;

    const-string v6, "Map"

    const-string v7, "Show traffic jams"

    const-string v8, ""

    invoke-direct {v5, v6, v7, v8}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    new-instance v5, Lcom/waze/ConfigItem;

    const-string v6, "Map"

    const-string v7, "Show speed cams"

    const-string v8, ""

    invoke-direct {v5, v6, v7, v8}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    new-instance v5, Lcom/waze/ConfigItem;

    const-string v6, "Map"

    const-string v7, "Dont Show reports types"

    const-string v8, ""

    invoke-direct {v5, v6, v7, v8}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    new-instance v5, Lcom/waze/ConfigItem;

    const-string v6, "Map"

    const-string v7, "Show road goodies"

    const-string v8, ""

    invoke-direct {v5, v6, v7, v8}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    new-instance v5, Lcom/waze/ConfigItem;

    const-string v6, "Map"

    const-string v7, "Enable Toggle Construction"

    const-string v8, ""

    invoke-direct {v5, v6, v7, v8}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    const-string v6, "SettingsAdvancedShowOnMap"

    invoke-virtual {v4, p0, v5, v6}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 115
    const v4, 0x7f090662

    invoke-virtual {p0, v4}, Lcom/waze/settings/SettingsShowOnMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->wazersView:Lcom/waze/settings/SettingsSwitchView;

    .line 116
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_WAZERS:Lcom/waze/strings/DisplayStrings;

    .line 118
    .local v3, wazersStr:Lcom/waze/strings/DisplayStrings;
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->wazersView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 119
    const v4, 0x7f090663

    invoke-virtual {p0, v4}, Lcom/waze/settings/SettingsShowOnMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->trafficLoadsView:Lcom/waze/settings/SettingsSwitchView;

    .line 120
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TRAFFIC_LAYER_OCOLOR_CODEDU:Lcom/waze/strings/DisplayStrings;

    .line 122
    .local v2, trafficLoadsStr:Lcom/waze/strings/DisplayStrings;
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->trafficLoadsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 123
    const v4, 0x7f090664

    invoke-virtual {p0, v4}, Lcom/waze/settings/SettingsShowOnMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->speedcamsView:Lcom/waze/settings/SettingsSwitchView;

    .line 124
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SPEED_CAMS:Lcom/waze/strings/DisplayStrings;

    .line 126
    .local v1, speedcamsStr:Lcom/waze/strings/DisplayStrings;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/NativeManager;->isEnforcementAlertsEnabledNTV()Z

    move-result v4

    if-nez v4, :cond_1

    .line 127
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->speedcamsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v4, v9}, Lcom/waze/settings/SettingsSwitchView;->setVisibility(I)V

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->speedcamsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 131
    const v4, 0x7f09066b

    invoke-virtual {p0, v4}, Lcom/waze/settings/SettingsShowOnMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->roadGoodiesView:Lcom/waze/settings/SettingsSwitchView;

    .line 132
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_ROAD_GOODIES:Lcom/waze/strings/DisplayStrings;

    .line 134
    .local v0, roadGoodiesStr:Lcom/waze/strings/DisplayStrings;
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->roadGoodiesView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 136
    const v4, 0x7f090665

    invoke-virtual {p0, v4}, Lcom/waze/settings/SettingsShowOnMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->chitchatsView:Lcom/waze/settings/SettingsSwitchView;

    .line 137
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_CHIT_CHATS:Lcom/waze/strings/DisplayStrings;

    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->chitchatsView:Lcom/waze/settings/SettingsSwitchView;

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/waze/settings/SettingsShowOnMapActivity;->createCheckbox(Lcom/waze/strings/DisplayStrings;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 138
    const v4, 0x7f090666

    invoke-virtual {p0, v4}, Lcom/waze/settings/SettingsShowOnMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->policeView:Lcom/waze/settings/SettingsSwitchView;

    .line 139
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_POLICE:Lcom/waze/strings/DisplayStrings;

    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->policeView:Lcom/waze/settings/SettingsSwitchView;

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/waze/settings/SettingsShowOnMapActivity;->createCheckbox(Lcom/waze/strings/DisplayStrings;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 140
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/NativeManager;->isEnforcementPoliceEnabledNTV()I

    move-result v4

    if-nez v4, :cond_2

    .line 141
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->policeView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v4, v9}, Lcom/waze/settings/SettingsSwitchView;->setVisibility(I)V

    .line 143
    :cond_2
    const v4, 0x7f090667

    invoke-virtual {p0, v4}, Lcom/waze/settings/SettingsShowOnMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->accidentsView:Lcom/waze/settings/SettingsSwitchView;

    .line 144
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ACCIDENTS:Lcom/waze/strings/DisplayStrings;

    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->accidentsView:Lcom/waze/settings/SettingsSwitchView;

    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, v6}, Lcom/waze/settings/SettingsShowOnMapActivity;->createCheckbox(Lcom/waze/strings/DisplayStrings;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 145
    const v4, 0x7f090668

    invoke-virtual {p0, v4}, Lcom/waze/settings/SettingsShowOnMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->trafficJamsView:Lcom/waze/settings/SettingsSwitchView;

    .line 146
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TRAFFIC_JAMS_:Lcom/waze/strings/DisplayStrings;

    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->trafficJamsView:Lcom/waze/settings/SettingsSwitchView;

    const/4 v6, 0x3

    invoke-direct {p0, v4, v5, v6}, Lcom/waze/settings/SettingsShowOnMapActivity;->createCheckbox(Lcom/waze/strings/DisplayStrings;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 147
    const v4, 0x7f090669

    invoke-virtual {p0, v4}, Lcom/waze/settings/SettingsShowOnMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->hazardsView:Lcom/waze/settings/SettingsSwitchView;

    .line 148
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_HAZARDS:Lcom/waze/strings/DisplayStrings;

    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->hazardsView:Lcom/waze/settings/SettingsSwitchView;

    const/4 v6, 0x4

    invoke-direct {p0, v4, v5, v6}, Lcom/waze/settings/SettingsShowOnMapActivity;->createCheckbox(Lcom/waze/strings/DisplayStrings;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 149
    const v4, 0x7f09066a

    invoke-virtual {p0, v4}, Lcom/waze/settings/SettingsShowOnMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->roadConstructionsView:Lcom/waze/settings/SettingsSwitchView;

    .line 150
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ROAD_CONSTRUCTIONS:Lcom/waze/strings/DisplayStrings;

    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->roadConstructionsView:Lcom/waze/settings/SettingsSwitchView;

    const/4 v6, 0x5

    invoke-direct {p0, v4, v5, v6}, Lcom/waze/settings/SettingsShowOnMapActivity;->createCheckbox(Lcom/waze/strings/DisplayStrings;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 151
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".reportTypes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 157
    return-void
.end method

.method public updateConfigItems(Ljava/util/List;)V
    .locals 13
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
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/4 v12, 0x3

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/ConfigItem;

    invoke-virtual {v4}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, reportTypesStr:Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, reportTypesStrings:[Ljava/lang/String;
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/ConfigItem;

    invoke-virtual {v4}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v6, "yes"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->enableToggleConstruction:Z

    .line 51
    iget-boolean v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->enableToggleConstruction:Z

    if-nez v4, :cond_0

    .line 52
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->roadConstructionsView:Lcom/waze/settings/SettingsSwitchView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/waze/settings/SettingsSwitchView;->setVisibility(I)V

    .line 54
    :cond_0
    const/4 v4, 0x6

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x6

    if-lt v0, v4, :cond_1

    .line 58
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->chitchatsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v4, v9}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 59
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->policeView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v4, v9}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 60
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->accidentsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v4, v9}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 61
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->trafficJamsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v4, v9}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 62
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->hazardsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v4, v9}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 63
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->roadConstructionsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v4, v9}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 64
    array-length v6, v3

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_2

    .line 85
    iget-object v6, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->wazersView:Lcom/waze/settings/SettingsSwitchView;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/ConfigItem;

    invoke-virtual {v4}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v7, "yes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 86
    const-string v4, "SettingsAdvancedShowOnMap"

    iget-object v6, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->wazersView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {v4, v6, v7, v5}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 87
    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->trafficLoadsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/ConfigItem;

    invoke-virtual {v4}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v6, "yes"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 88
    const-string v4, "SettingsAdvancedShowOnMap"

    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    iget-object v6, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->trafficLoadsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {v4, v5, v6, v9}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 89
    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->speedcamsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/ConfigItem;

    invoke-virtual {v4}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v6, "yes"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 90
    const-string v4, "SettingsAdvancedShowOnMap"

    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    iget-object v6, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->speedcamsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {v4, v5, v6, v10}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 91
    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->roadGoodiesView:Lcom/waze/settings/SettingsSwitchView;

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/ConfigItem;

    invoke-virtual {v4}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v6, "yes"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 92
    const-string v4, "SettingsAdvancedShowOnMap"

    iget-object v5, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;

    iget-object v6, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->roadGoodiesView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {v4, v5, v6, v11}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 93
    return-void

    .line 56
    :cond_1
    iget-object v4, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    aput-boolean v9, v4, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 64
    :cond_2
    aget-object v1, v3, v4

    .line 65
    .local v1, reportTypeStr:Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 66
    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    aput-boolean v5, v7, v5

    .line 67
    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->chitchatsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v7, v5}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 64
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 68
    :cond_4
    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 69
    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    aput-boolean v5, v7, v9

    .line 70
    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->policeView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v7, v5}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    goto :goto_2

    .line 71
    :cond_5
    const-string v7, "2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 72
    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    aput-boolean v5, v7, v10

    .line 73
    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->accidentsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v7, v5}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    goto :goto_2

    .line 74
    :cond_6
    const-string v7, "3"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 75
    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    aput-boolean v5, v7, v12

    .line 76
    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->trafficJamsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v7, v5}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    goto :goto_2

    .line 77
    :cond_7
    const-string v7, "5"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 78
    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    aput-boolean v5, v7, v11

    .line 79
    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->hazardsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v7, v5}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    goto :goto_2

    .line 80
    :cond_8
    const-string v7, "7"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 81
    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z

    const/4 v8, 0x5

    aput-boolean v5, v7, v8

    .line 82
    iget-object v7, p0, Lcom/waze/settings/SettingsShowOnMapActivity;->roadConstructionsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v7, v5}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    goto :goto_2
.end method
