.class public Lcom/waze/settings/SettingsNavigationActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsNavigationActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field private static final AVOID_HIGHWAYS_INDEX:I = 0x2

.field private static final AVOID_PALESTINIAN_INDEX:I = 0x6

.field private static final AVOID_TOLL_INDEX:I = 0x4

.field private static final DIRT_ROADS_INDEX:I = 0x1

.field private static final DIRT_ROADS_OPTIONS:[Ljava/lang/String; = null

.field private static final DIRT_ROADS_VALUES:[Ljava/lang/String; = null

.field private static final PALESTINIAN_INDEX:I = 0x5

.field private static final TOLL_INDEX:I = 0x3

.field private static final TYPE_INDEX:I

.field private static final TYPE_OPTIONS:[Ljava/lang/String;

.field private static final TYPE_VALUES:[Ljava/lang/String;


# instance fields
.field private avoidHighwaysView:Lcom/waze/settings/SettingsSwitchView;

.field private avoidTollView:Lcom/waze/settings/SettingsSwitchView;

.field private dirtRoadsView:Lcom/waze/settings/SettingsSelectionView;

.field mConfigItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeManager:Lcom/waze/NativeManager;

.field private palestinianView:Lcom/waze/settings/SettingsSwitchView;

.field final screenName:Ljava/lang/String;

.field private typeView:Lcom/waze/settings/SettingsSelectionView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Fastest"

    aput-object v1, v0, v2

    const-string v1, "Shortest"

    aput-object v1, v0, v3

    sput-object v0, Lcom/waze/settings/SettingsNavigationActivity;->TYPE_OPTIONS:[Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/waze/settings/SettingsNavigationActivity;->TYPE_OPTIONS:[Ljava/lang/String;

    sput-object v0, Lcom/waze/settings/SettingsNavigationActivity;->TYPE_VALUES:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Allow"

    aput-object v1, v0, v2

    const-string v1, "Don\'t allow"

    aput-object v1, v0, v3

    const-string v1, "Avoid long ones"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/settings/SettingsNavigationActivity;->DIRT_ROADS_OPTIONS:[Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/waze/settings/SettingsNavigationActivity;->DIRT_ROADS_OPTIONS:[Ljava/lang/String;

    sput-object v0, Lcom/waze/settings/SettingsNavigationActivity;->DIRT_ROADS_VALUES:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 36
    const-string v0, "SettingsNavigation"

    iput-object v0, p0, Lcom/waze/settings/SettingsNavigationActivity;->screenName:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsNavigationActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 45
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super/range {p0 .. p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v1, 0x7f0300f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNavigationActivity;->setContentView(I)V

    .line 80
    const-string v1, "SETTINGS_CLICK"

    const-string v2, "VAUE"

    const-string v3, "NAVIGATION"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    .line 83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/waze/ConfigItem;

    const-string v3, "Routing"

    const-string v4, "Type"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v6}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/waze/ConfigItem;

    const-string v3, "Routing"

    const-string v4, "Avoid trails"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v6}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/waze/ConfigItem;

    const-string v3, "Routing"

    const-string v4, "Avoid primaries"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v6}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/waze/ConfigItem;

    const-string v3, "Routing"

    const-string v4, "Tolls roads"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v6}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/waze/ConfigItem;

    const-string v3, "Routing"

    const-string v4, "Avoid tolls"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v6}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/waze/ConfigItem;

    const-string v3, "Routing"

    const-string v4, "Palestinian Roads"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v6}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/waze/ConfigItem;

    const-string v3, "Routing"

    const-string v4, "Avoid Palestinian Roads"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v6}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    const-string v3, "SettingsNavigation"

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2, v3}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 94
    const v1, 0x7f090058

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NAVIGATION:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 96
    const v1, 0x7f090659

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsSelectionView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->typeView:Lcom/waze/settings/SettingsSelectionView;

    .line 97
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_TYPE:Lcom/waze/strings/DisplayStrings;

    .line 98
    .local v5, typeStr:Lcom/waze/strings/DisplayStrings;
    const-string v2, "SettingsNavigation"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/settings/SettingsNavigationActivity;->typeView:Lcom/waze/settings/SettingsSelectionView;

    .line 99
    sget-object v6, Lcom/waze/settings/SettingsNavigationActivity;->TYPE_OPTIONS:[Ljava/lang/String;

    sget-object v7, Lcom/waze/settings/SettingsNavigationActivity;->TYPE_VALUES:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 98
    invoke-static/range {v1 .. v8}, Lcom/waze/settings/SettingsUtils;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 100
    const v1, 0x7f090658

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsSelectionView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->dirtRoadsView:Lcom/waze/settings/SettingsSelectionView;

    .line 101
    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_DIRT_ROADS:Lcom/waze/strings/DisplayStrings;

    .line 102
    .local v10, dirtRoadsStr:Lcom/waze/strings/DisplayStrings;
    const-string v7, "SettingsNavigation"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/waze/settings/SettingsNavigationActivity;->dirtRoadsView:Lcom/waze/settings/SettingsSelectionView;

    .line 103
    sget-object v11, Lcom/waze/settings/SettingsNavigationActivity;->DIRT_ROADS_OPTIONS:[Ljava/lang/String;

    sget-object v12, Lcom/waze/settings/SettingsNavigationActivity;->DIRT_ROADS_VALUES:[Ljava/lang/String;

    const/4 v13, 0x1

    move-object/from16 v6, p0

    .line 102
    invoke-static/range {v6 .. v13}, Lcom/waze/settings/SettingsUtils;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 105
    const v1, 0x7f090657

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsSwitchView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->avoidHighwaysView:Lcom/waze/settings/SettingsSwitchView;

    .line 106
    sget-object v14, Lcom/waze/strings/DisplayStrings;->DS_AVOID_HIGHWAYS:Lcom/waze/strings/DisplayStrings;

    .line 107
    .local v14, avoidHighwaysStr:Lcom/waze/strings/DisplayStrings;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->avoidHighwaysView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 109
    const v1, 0x7f090656

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsSwitchView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->avoidTollView:Lcom/waze/settings/SettingsSwitchView;

    .line 110
    sget-object v15, Lcom/waze/strings/DisplayStrings;->DS_AVOID_TOLL_ROADS:Lcom/waze/strings/DisplayStrings;

    .line 112
    .local v15, avoidTollStr:Lcom/waze/strings/DisplayStrings;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->avoidTollView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 115
    const v1, 0x7f09065a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsSwitchView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->palestinianView:Lcom/waze/settings/SettingsSwitchView;

    .line 116
    sget-object v16, Lcom/waze/strings/DisplayStrings;->DS_KEEP_WITHIN_AREAS_UNDER_ISRAELI_AUTHORITY:Lcom/waze/strings/DisplayStrings;

    .line 118
    .local v16, palestinianStr:Lcom/waze/strings/DisplayStrings;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/settings/SettingsNavigationActivity;->palestinianView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public updateConfigItems(Ljava/util/List;)V
    .locals 10
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
    const/16 v9, 0x8

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x2

    .line 50
    sget-object v4, Lcom/waze/settings/SettingsNavigationActivity;->TYPE_VALUES:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ConfigItem;

    invoke-virtual {v3}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/waze/settings/SettingsUtils;->findValueIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, index:I
    iget-object v3, p0, Lcom/waze/settings/SettingsNavigationActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/settings/SettingsNavigationActivity;->TYPE_OPTIONS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, unitStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/settings/SettingsNavigationActivity;->typeView:Lcom/waze/settings/SettingsSelectionView;

    invoke-virtual {v3, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 53
    sget-object v4, Lcom/waze/settings/SettingsNavigationActivity;->DIRT_ROADS_VALUES:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ConfigItem;

    invoke-virtual {v3}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/waze/settings/SettingsUtils;->findValueIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 54
    iget-object v3, p0, Lcom/waze/settings/SettingsNavigationActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/settings/SettingsNavigationActivity;->DIRT_ROADS_OPTIONS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, dirtRoadsStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/settings/SettingsNavigationActivity;->dirtRoadsView:Lcom/waze/settings/SettingsSelectionView;

    invoke-virtual {v3, v0}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 58
    iget-object v4, p0, Lcom/waze/settings/SettingsNavigationActivity;->avoidHighwaysView:Lcom/waze/settings/SettingsSwitchView;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ConfigItem;

    invoke-virtual {v3}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v5, "yes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 59
    const-string v3, "SettingsNavigation"

    iget-object v4, p0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/waze/settings/SettingsNavigationActivity;->avoidHighwaysView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {v3, v4, v5, v6}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 61
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ConfigItem;

    invoke-virtual {v3}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    iget-object v4, p0, Lcom/waze/settings/SettingsNavigationActivity;->palestinianView:Lcom/waze/settings/SettingsSwitchView;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ConfigItem;

    invoke-virtual {v3}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v5, "yes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 63
    const-string v3, "SettingsNavigation"

    iget-object v4, p0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/waze/settings/SettingsNavigationActivity;->palestinianView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {v3, v4, v5, v8}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 67
    :goto_0
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ConfigItem;

    invoke-virtual {v3}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    iget-object v4, p0, Lcom/waze/settings/SettingsNavigationActivity;->avoidTollView:Lcom/waze/settings/SettingsSwitchView;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ConfigItem;

    invoke-virtual {v3}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v5, "yes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 69
    const-string v3, "SettingsNavigation"

    iget-object v4, p0, Lcom/waze/settings/SettingsNavigationActivity;->mConfigItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/waze/settings/SettingsNavigationActivity;->avoidTollView:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {v3, v4, v5, v7}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 73
    :goto_1
    return-void

    .line 65
    :cond_0
    iget-object v3, p0, Lcom/waze/settings/SettingsNavigationActivity;->palestinianView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v3, v9}, Lcom/waze/settings/SettingsSwitchView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/waze/settings/SettingsNavigationActivity;->avoidTollView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v3, v9}, Lcom/waze/settings/SettingsSwitchView;->setVisibility(I)V

    goto :goto_1
.end method
