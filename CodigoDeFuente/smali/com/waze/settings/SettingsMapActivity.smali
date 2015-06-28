.class public Lcom/waze/settings/SettingsMapActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsMapActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field protected static final ACTIVITY_CODE:I = 0x3e8

.field private static final MAP_COLORS_CODE:I = 0x3e8

.field public static final MAP_COLORS_ICONS:[Ljava/lang/String; = null

.field public static final MAP_COLORS_INDEX:I = 0x1

.field public static final MAP_COLORS_OPTIONS:[Ljava/lang/String; = null

.field public static final MAP_COLORS_VALUES:[Ljava/lang/String; = null

.field private static final SHOW_SPEEDOMETER_INDEX:I = 0x0

.field public static final screenName:Ljava/lang/String; = "SettingsMap"


# instance fields
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

.field private mapColors:Lcom/waze/settings/SettingsSelectionView;

.field private speedometerView:Lcom/waze/settings/SettingsSwitchView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Default"

    aput-object v1, v0, v3

    const-string v1, "Green peace"

    aput-object v1, v0, v4

    const-string v1, "Minimalism"

    aput-object v1, v0, v5

    const-string v1, "Vitamin C"

    aput-object v1, v0, v6

    const-string v1, "The blues"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Mochaccino"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Snow day"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Twilight"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Tutti-fruiti"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Rosebud"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Electrolytes"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Map editors"

    aput-object v2, v0, v1

    sput-object v0, Lcom/waze/settings/SettingsMapActivity;->MAP_COLORS_OPTIONS:[Ljava/lang/String;

    .line 33
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "12"

    aput-object v1, v0, v3

    const-string v1, "9"

    aput-object v1, v0, v4

    const-string v1, "10"

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, "1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/waze/settings/SettingsMapActivity;->MAP_COLORS_VALUES:[Ljava/lang/String;

    .line 34
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "schema12"

    aput-object v1, v0, v3

    const-string v1, "schema9"

    aput-object v1, v0, v4

    const-string v1, "schema10"

    aput-object v1, v0, v5

    const-string v1, "schema"

    aput-object v1, v0, v6

    const-string v1, "schema1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "schema2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "schema3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "schema4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "schema5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "schema6"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "schema7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "schema8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/waze/settings/SettingsMapActivity;->MAP_COLORS_ICONS:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 38
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsMapActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 39
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 92
    if-ne p2, v0, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMapActivity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/waze/settings/SettingsMapActivity;->finish()V

    .line 96
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x3e8

    .line 52
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v2, "waze"

    const-string v3, "start settings activity"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const v2, 0x7f0300f0

    invoke-virtual {p0, v2}, Lcom/waze/settings/SettingsMapActivity;->setContentView(I)V

    .line 55
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lcom/waze/settings/SettingsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_DISPLAY_SETTINGS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, p0, v3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/waze/settings/SettingsMapActivity;->mConfigItems:Ljava/util/List;

    .line 57
    iget-object v2, p0, Lcom/waze/settings/SettingsMapActivity;->mConfigItems:Ljava/util/List;

    new-instance v3, Lcom/waze/ConfigItem;

    const-string v4, "Map"

    const-string v5, "Show speedometer"

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v2, p0, Lcom/waze/settings/SettingsMapActivity;->mConfigItems:Ljava/util/List;

    new-instance v3, Lcom/waze/ConfigItem;

    const-string v4, "Display"

    const-string v5, "Map scheme V3"

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v2, "SETTINGS_CLICK"

    const-string v3, "VAUE"

    const-string v4, "DISPLAY_SETTINGS"

    invoke-static {v2, v3, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const v2, 0x7f090653

    invoke-virtual {p0, v2}, Lcom/waze/settings/SettingsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsSelectionView;

    iput-object v2, p0, Lcom/waze/settings/SettingsMapActivity;->mapColors:Lcom/waze/settings/SettingsSelectionView;

    .line 63
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MAP_COLOR_SCHEME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, mapColorsStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/waze/settings/SettingsMapActivity;->mapColors:Lcom/waze/settings/SettingsSelectionView;

    invoke-virtual {v2, v0}, Lcom/waze/settings/SettingsSelectionView;->setKeyText(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/waze/settings/SettingsMapActivity;->mapColors:Lcom/waze/settings/SettingsSelectionView;

    new-instance v3, Lcom/waze/settings/SettingsMapActivity$1;

    invoke-direct {v3, p0}, Lcom/waze/settings/SettingsMapActivity$1;-><init>(Lcom/waze/settings/SettingsMapActivity;)V

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsSelectionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v2, 0x7f090652

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SHOW_ON_MAP:Lcom/waze/strings/DisplayStrings;

    .line 74
    const-class v4, Lcom/waze/settings/SettingsShowOnMapActivity;

    .line 73
    invoke-static {p0, v2, v3, v4, v7}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 76
    const v2, 0x7f090651

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MY_CAR:Lcom/waze/strings/DisplayStrings;

    .line 77
    const-class v4, Lcom/waze/profile/CarsActivity;

    .line 76
    invoke-static {p0, v2, v3, v4, v7}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 79
    const v2, 0x7f090654

    invoke-virtual {p0, v2}, Lcom/waze/settings/SettingsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsSwitchView;

    iput-object v2, p0, Lcom/waze/settings/SettingsMapActivity;->speedometerView:Lcom/waze/settings/SettingsSwitchView;

    .line 80
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SPEEDOMETER:Lcom/waze/strings/DisplayStrings;

    .line 81
    .local v1, speedometerStr:Lcom/waze/strings/DisplayStrings;
    iget-object v2, p0, Lcom/waze/settings/SettingsMapActivity;->speedometerView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 87
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsMapActivity;->mConfigItems:Ljava/util/List;

    const-string v2, "SettingsMap"

    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 88
    return-void
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

    .line 44
    iget-object v2, p0, Lcom/waze/settings/SettingsMapActivity;->speedometerView:Lcom/waze/settings/SettingsSwitchView;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "yes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 45
    const-string v1, "SettingsMap"

    iget-object v2, p0, Lcom/waze/settings/SettingsMapActivity;->mConfigItems:Ljava/util/List;

    iget-object v3, p0, Lcom/waze/settings/SettingsMapActivity;->speedometerView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {v1, v2, v3, v4}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 46
    sget-object v2, Lcom/waze/settings/SettingsMapActivity;->MAP_COLORS_VALUES:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/waze/settings/SettingsUtils;->findValueIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, index:I
    iget-object v1, p0, Lcom/waze/settings/SettingsMapActivity;->mapColors:Lcom/waze/settings/SettingsSelectionView;

    iget-object v2, p0, Lcom/waze/settings/SettingsMapActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/settings/SettingsMapActivity;->MAP_COLORS_OPTIONS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 48
    return-void
.end method
