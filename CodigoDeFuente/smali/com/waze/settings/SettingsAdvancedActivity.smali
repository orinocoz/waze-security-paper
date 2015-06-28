.class public Lcom/waze/settings/SettingsAdvancedActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field protected static final ACTIVITY_CODE:I = 0x3e8

.field private static final AUTO_LEARN_INDEX:I = 0x1

.field private static final AUTO_ZOOM_INDEX:I = 0x2

.field public static final AUTO_ZOOM_OPTIONS:[Ljava/lang/String; = null

.field public static final AUTO_ZOOM_VALUES:[Ljava/lang/String; = null

.field private static final DISPLAY_MAP_INDEX:I = 0x0

.field private static final NORTH_UP_INDEX:I = 0x3

.field public static final screenName:Ljava/lang/String; = "SettingsAdvanced"


# instance fields
.field private AllowAccessToCalendarView:Lcom/waze/settings/SettingsSwitchView;

.field private NorthUpView:Lcom/waze/settings/SettingsSwitchView;

.field private TargetedAdsView:Lcom/waze/settings/SettingsSwitchView;

.field private autoZoomView:Lcom/waze/settings/SettingsSelectionView;

.field private displayView:Lcom/waze/settings/SettingsSwitchView;

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


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "According to speed"

    aput-object v1, v0, v2

    const-string v1, "According to distance"

    aput-object v1, v0, v3

    const-string v1, "No auto zoom"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/settings/SettingsAdvancedActivity;->AUTO_ZOOM_OPTIONS:[Ljava/lang/String;

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "speed"

    aput-object v1, v0, v2

    const-string v1, "yes"

    aput-object v1, v0, v3

    const-string v1, "no"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/settings/SettingsAdvancedActivity;->AUTO_ZOOM_VALUES:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 43
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 44
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v12, 0x8

    .line 61
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v0, "waze"

    const-string v1, "start settings activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const v0, 0x7f0300e4

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsAdvancedActivity;->setContentView(I)V

    .line 64
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ADVANCED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->mConfigItems:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Map Icons"

    const-string v3, "Show on screen on tap"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Alternative Routes"

    const-string v3, "Show Suggested"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Routing"

    const-string v3, "Auto zoom"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsAdvancedActivity;->mConfigItems:Ljava/util/List;

    const-string v2, "SettingsAdvanced"

    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 71
    const-string v0, "SETTINGS_CLICK"

    const-string v1, "VAUE"

    const-string v2, "ADVANCED"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const v0, 0x7f09061a

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSwitchView;

    iput-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->displayView:Lcom/waze/settings/SettingsSwitchView;

    .line 74
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_DISPLAY_MAP_CONTROLS_ON_TAP:Lcom/waze/strings/DisplayStrings;

    .line 77
    .local v9, displayStr:Lcom/waze/strings/DisplayStrings;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v11

    .line 78
    .local v11, nm:Lcom/waze/NativeManager;
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->displayView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v11, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 84
    const v0, 0x7f09061c

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSwitchView;

    iput-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->NorthUpView:Lcom/waze/settings/SettingsSwitchView;

    .line 85
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_LOCK_NORTH_UP_MODE:Lcom/waze/strings/DisplayStrings;

    .line 88
    .local v8, NorthUpStr:Lcom/waze/strings/DisplayStrings;
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->NorthUpView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v11, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->NorthUpView:Lcom/waze/settings/SettingsSwitchView;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_LOCK_NORTH_UP_MODE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->NorthUpView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v11}, Lcom/waze/NativeManager;->getNorthUp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 93
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->NorthUpView:Lcom/waze/settings/SettingsSwitchView;

    new-instance v1, Lcom/waze/settings/SettingsAdvancedActivity$1;

    invoke-direct {v1, p0, v11}, Lcom/waze/settings/SettingsAdvancedActivity$1;-><init>(Lcom/waze/settings/SettingsAdvancedActivity;Lcom/waze/NativeManager;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 109
    const v0, 0x7f09061e

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSwitchView;

    iput-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->AllowAccessToCalendarView:Lcom/waze/settings/SettingsSwitchView;

    .line 112
    invoke-virtual {v11}, Lcom/waze/NativeManager;->CalendarFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->AllowAccessToCalendarView:Lcom/waze/settings/SettingsSwitchView;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ALLOW_ACCESS_TO_CALENDAR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->AllowAccessToCalendarView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v11}, Lcom/waze/NativeManager;->getAccessToCalendarAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 116
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->AllowAccessToCalendarView:Lcom/waze/settings/SettingsSwitchView;

    new-instance v1, Lcom/waze/settings/SettingsAdvancedActivity$2;

    invoke-direct {v1, p0, v11}, Lcom/waze/settings/SettingsAdvancedActivity$2;-><init>(Lcom/waze/settings/SettingsAdvancedActivity;Lcom/waze/NativeManager;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 136
    :goto_0
    const v0, 0x7f09061b

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->autoZoomView:Lcom/waze/settings/SettingsSelectionView;

    .line 137
    const-string v1, "SettingsAdvanced"

    iget-object v2, p0, Lcom/waze/settings/SettingsAdvancedActivity;->mConfigItems:Ljava/util/List;

    iget-object v3, p0, Lcom/waze/settings/SettingsAdvancedActivity;->autoZoomView:Lcom/waze/settings/SettingsSelectionView;

    .line 138
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_AUTO_ZOOM:Lcom/waze/strings/DisplayStrings;

    sget-object v5, Lcom/waze/settings/SettingsAdvancedActivity;->AUTO_ZOOM_OPTIONS:[Ljava/lang/String;

    sget-object v6, Lcom/waze/settings/SettingsAdvancedActivity;->AUTO_ZOOM_VALUES:[Ljava/lang/String;

    const/4 v7, 0x2

    move-object v0, p0

    .line 137
    invoke-static/range {v0 .. v7}, Lcom/waze/settings/SettingsUtils;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 140
    const v0, 0x7f09061d

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_DATA_TRANSFER:Lcom/waze/strings/DisplayStrings;

    .line 141
    const-class v2, Lcom/waze/settings/SettingsDataTransferActivity;

    const/16 v3, 0x3e8

    .line 140
    invoke-static {p0, v0, v1, v2, v3}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 143
    const v0, 0x7f09061f

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSwitchView;

    iput-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->TargetedAdsView:Lcom/waze/settings/SettingsSwitchView;

    .line 144
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->TargetedAdsView:Lcom/waze/settings/SettingsSwitchView;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ADVANCED_SETTINGS_TARGETED_ADS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->TargetedAdsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v1

    .line 146
    const/4 v2, 0x0

    .line 145
    invoke-virtual {v1, v2}, Lcom/waze/ConfigManager;->getConfigSwitchValue(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 148
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->TargetedAdsView:Lcom/waze/settings/SettingsSwitchView;

    new-instance v1, Lcom/waze/settings/SettingsAdvancedActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsAdvancedActivity$3;-><init>(Lcom/waze/settings/SettingsAdvancedActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 156
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->TargetedAdsView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v0, v12}, Lcom/waze/settings/SettingsSwitchView;->setVisibility(I)V

    .line 158
    const v0, 0x7f090620

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 159
    .local v10, explain:Landroid/widget/TextView;
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_ADVANCED_SETTINGS_TARGETED_ADS_EXPLANATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    return-void

    .line 133
    .end local v10           #explain:Landroid/widget/TextView;
    :cond_0
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity;->AllowAccessToCalendarView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v0, v12}, Lcom/waze/settings/SettingsSwitchView;->setVisibility(I)V

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
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/4 v4, 0x0

    .line 49
    iget-object v2, p0, Lcom/waze/settings/SettingsAdvancedActivity;->displayView:Lcom/waze/settings/SettingsSwitchView;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "yes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 50
    const-string v1, "SettingsAdvanced"

    iget-object v2, p0, Lcom/waze/settings/SettingsAdvancedActivity;->mConfigItems:Ljava/util/List;

    iget-object v3, p0, Lcom/waze/settings/SettingsAdvancedActivity;->displayView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {v1, v2, v3, v4}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 55
    sget-object v2, Lcom/waze/settings/SettingsAdvancedActivity;->AUTO_ZOOM_VALUES:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/waze/settings/SettingsUtils;->findValueIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, index:I
    iget-object v1, p0, Lcom/waze/settings/SettingsAdvancedActivity;->autoZoomView:Lcom/waze/settings/SettingsSelectionView;

    iget-object v2, p0, Lcom/waze/settings/SettingsAdvancedActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/settings/SettingsAdvancedActivity;->AUTO_ZOOM_OPTIONS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 57
    return-void
.end method
