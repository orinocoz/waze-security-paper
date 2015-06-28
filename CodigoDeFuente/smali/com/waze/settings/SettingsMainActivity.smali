.class public Lcom/waze/settings/SettingsMainActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsMainActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field protected static final ACTIVITY_CODE:I = 0x3e8

.field private static final ASR_ENABLED:I = 0x2

.field private static final AUTO_NIGHT_MODE_INDEX:I = 0x3

.field private static final MAP_DISPLAY_INDEX:I = 0x1

.field private static final MAP_DISPLAY_OPTIONS:[Ljava/lang/String;

.field private static final MAP_DISPLAY_VALUES:[Ljava/lang/String;

.field private static final MAP_MODE_INDEX:I

.field private static final MAP_MODE_INDEXES:[I

.field private static final MAP_MODE_OPTIONS:[Ljava/lang/String;

.field private static final MAP_MODE_VALUES:[Ljava/lang/String;


# instance fields
.field protected editVideoUrl:Lcom/waze/ConfigItem;

.field mConfigItems:Ljava/util/List;
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

.field private mapDisplay:Lcom/waze/settings/SettingsSelectionView;

.field private mapMode:Lcom/waze/settings/SettingsSelectionView;

.field final screenName:Ljava/lang/String;

.field protected showGuidedTour:Z

.field protected showHowToEditMap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 31
    new-array v0, v2, [I

    aput v2, v0, v3

    sput-object v0, Lcom/waze/settings/SettingsMainActivity;->MAP_MODE_INDEXES:[I

    .line 33
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "Day"

    aput-object v1, v0, v4

    const-string v1, "Auto"

    aput-object v1, v0, v3

    const-string v1, "Night"

    aput-object v1, v0, v5

    sput-object v0, Lcom/waze/settings/SettingsMainActivity;->MAP_MODE_OPTIONS:[Ljava/lang/String;

    .line 34
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "day"

    aput-object v1, v0, v4

    const-string v1, "yes"

    aput-object v1, v0, v3

    const-string v1, "night"

    aput-object v1, v0, v5

    sput-object v0, Lcom/waze/settings/SettingsMainActivity;->MAP_MODE_VALUES:[Ljava/lang/String;

    .line 36
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "2D"

    aput-object v1, v0, v4

    const-string v1, "3D"

    aput-object v1, v0, v3

    const-string v1, "Auto"

    aput-object v1, v0, v5

    sput-object v0, Lcom/waze/settings/SettingsMainActivity;->MAP_DISPLAY_OPTIONS:[Ljava/lang/String;

    .line 37
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "2D"

    aput-object v1, v0, v4

    const-string v1, "3D"

    aput-object v1, v0, v3

    const-string v1, "Auto"

    aput-object v1, v0, v5

    sput-object v0, Lcom/waze/settings/SettingsMainActivity;->MAP_DISPLAY_VALUES:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 42
    const-string v0, "MainSettings"

    iput-object v0, p0, Lcom/waze/settings/SettingsMainActivity;->screenName:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/waze/settings/SettingsMainActivity;->showGuidedTour:Z

    .line 48
    iput-boolean v1, p0, Lcom/waze/settings/SettingsMainActivity;->showHowToEditMap:Z

    .line 52
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsMainActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 53
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

    .line 98
    if-ne p2, v0, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Lcom/waze/settings/SettingsMainActivity;->finish()V

    .line 102
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f09063b

    const/16 v11, 0x8

    const v10, 0x7f09063a

    const v9, 0x7f090639

    const/16 v8, 0x3e8

    .line 107
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f0300ef

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->setContentView(I)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/settings/SettingsMainActivity;->mConfigItems:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/waze/settings/SettingsMainActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Display"

    const-string v3, "Map sub_skin"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/waze/settings/SettingsMainActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Map"

    const-string v3, "Orientation"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/waze/settings/SettingsMainActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "ASR"

    const-string v3, "Feature enabled"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/waze/settings/SettingsMainActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Display"

    const-string v3, "Auto night mode"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/waze/settings/SettingsMainActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Help"

    const-string v3, "How to edit map url"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/waze/settings/SettingsMainActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Help"

    const-string v3, "Show Guided Tour"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/waze/settings/SettingsMainActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Help"

    const-string v3, "Show how to edit"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity;->mConfigItems:Ljava/util/List;

    const-string v2, "MainSettings"

    .line 118
    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/waze/settings/SettingsNativeManager;

    invoke-direct {v0}, Lcom/waze/settings/SettingsNativeManager;-><init>()V

    .line 123
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    .line 124
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SETTINGS:Lcom/waze/strings/DisplayStrings;

    .line 123
    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 126
    const v0, 0x7f090640

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsTitleText;

    .line 127
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 128
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_QUICK_SETTINGS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 129
    const v0, 0x7f090643

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsTitleText;

    .line 130
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 131
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SETTINGS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 132
    const v0, 0x7f090650

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsTitleText;

    .line 133
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 134
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HELP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 136
    const v0, 0x7f090641

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/settings/SettingsMainActivity;->mapDisplay:Lcom/waze/settings/SettingsSelectionView;

    .line 137
    const-string v1, "MainSettings"

    .line 138
    iget-object v2, p0, Lcom/waze/settings/SettingsMainActivity;->mConfigItems:Ljava/util/List;

    iget-object v3, p0, Lcom/waze/settings/SettingsMainActivity;->mapDisplay:Lcom/waze/settings/SettingsSelectionView;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_DISPLAY:Lcom/waze/strings/DisplayStrings;

    .line 139
    sget-object v5, Lcom/waze/settings/SettingsMainActivity;->MAP_DISPLAY_OPTIONS:[Ljava/lang/String;

    sget-object v6, Lcom/waze/settings/SettingsMainActivity;->MAP_DISPLAY_VALUES:[Ljava/lang/String;

    const/4 v7, 0x1

    move-object v0, p0

    .line 137
    invoke-static/range {v0 .. v7}, Lcom/waze/settings/SettingsUtils;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 140
    const v0, 0x7f090642

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/settings/SettingsMainActivity;->mapMode:Lcom/waze/settings/SettingsSelectionView;

    .line 142
    const-string v1, "MainSettings"

    iget-object v2, p0, Lcom/waze/settings/SettingsMainActivity;->mConfigItems:Ljava/util/List;

    iget-object v3, p0, Lcom/waze/settings/SettingsMainActivity;->mapMode:Lcom/waze/settings/SettingsSelectionView;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_MODE:Lcom/waze/strings/DisplayStrings;

    .line 143
    sget-object v5, Lcom/waze/settings/SettingsMainActivity;->MAP_MODE_OPTIONS:[Ljava/lang/String;

    sget-object v6, Lcom/waze/settings/SettingsMainActivity;->MAP_MODE_VALUES:[Ljava/lang/String;

    sget-object v7, Lcom/waze/settings/SettingsMainActivity;->MAP_MODE_INDEXES:[I

    move-object v0, p0

    .line 141
    invoke-static/range {v0 .. v7}, Lcom/waze/settings/SettingsUtilsMultipleConfig;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 146
    const v0, 0x7f090644

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_GENERAL:Lcom/waze/strings/DisplayStrings;

    .line 147
    const-class v2, Lcom/waze/settings/SettingsGeneralActivity;

    .line 145
    invoke-static {p0, v0, v1, v2, v8}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 149
    const v0, 0x7f090645

    .line 150
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SOCIAL_NETWORKS:Lcom/waze/strings/DisplayStrings;

    const-class v2, Lcom/waze/mywaze/social/SocialActivity;

    .line 148
    invoke-static {p0, v0, v1, v2, v8}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 153
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const v0, 0x7f09064b

    .line 157
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ACCOUNT_AND_SETTINGS:Lcom/waze/strings/DisplayStrings;

    .line 158
    const-class v2, Lcom/waze/profile/TempUserProfileActivity;

    .line 155
    invoke-static {p0, v0, v1, v2, v8}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 169
    :goto_0
    const v0, 0x7f09064a

    .line 170
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_VOICE_COMMANDS:Lcom/waze/strings/DisplayStrings;

    .line 171
    const-class v2, Lcom/waze/settings/SettingsVoiceCommandsActivity;

    .line 168
    invoke-static {p0, v0, v1, v2, v8}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 173
    const v0, 0x7f090646

    .line 174
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_DISPLAY_SETTINGS:Lcom/waze/strings/DisplayStrings;

    const-class v2, Lcom/waze/settings/SettingsMapActivity;

    .line 173
    invoke-static {p0, v0, v1, v2, v8}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 178
    const v0, 0x7f090647

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SOUND:Lcom/waze/strings/DisplayStrings;

    .line 179
    const-class v2, Lcom/waze/settings/SettingsSoundActivity;

    .line 177
    invoke-static {p0, v0, v1, v2, v8}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 182
    const v0, 0x7f09064c

    .line 183
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_NOTIFICATIONS:Lcom/waze/strings/DisplayStrings;

    .line 184
    const-class v2, Lcom/waze/settings/SettingsNotificationActivity;

    .line 181
    invoke-static {p0, v0, v1, v2, v8}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 187
    const v0, 0x7f090649

    .line 188
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_GAS_STATIONS:Lcom/waze/strings/DisplayStrings;

    .line 189
    const-class v2, Lcom/waze/settings/SettingsGasActivity;

    .line 186
    invoke-static {p0, v0, v1, v2, v8}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 191
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->ShouldDisplayGasInSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const v0, 0x7f090649

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_0
    const v0, 0x7f090648

    .line 197
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_NAVIGATION:Lcom/waze/strings/DisplayStrings;

    const-class v2, Lcom/waze/settings/SettingsNavigationActivity;

    .line 195
    invoke-static {p0, v0, v1, v2, v8}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 200
    const v0, 0x7f09064d

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ADVANCED:Lcom/waze/strings/DisplayStrings;

    .line 201
    const-class v2, Lcom/waze/settings/SettingsAdvancedActivity;

    .line 199
    invoke-static {p0, v0, v1, v2, v8}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 204
    const v0, 0x7f09064e

    .line 205
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SPREAD_THE_WORD:Lcom/waze/strings/DisplayStrings;

    const-class v2, Lcom/waze/share/SpreadTheWordActivity;

    .line 203
    invoke-static {p0, v0, v1, v2, v8}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    .line 208
    const v0, 0x7f09064f

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    .line 209
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 210
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ABOUT_AND_NOTICES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 212
    const v0, 0x7f09064f

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    new-instance v1, Lcom/waze/settings/SettingsMainActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsMainActivity$1;-><init>(Lcom/waze/settings/SettingsMainActivity;)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-boolean v0, p0, Lcom/waze/settings/SettingsMainActivity;->showGuidedTour:Z

    if-eqz v0, :cond_3

    .line 221
    invoke-virtual {p0, v9}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    .line 222
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 223
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_WATCH_THE_GUIDED_TOUR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 229
    :goto_1
    iget-boolean v0, p0, Lcom/waze/settings/SettingsMainActivity;->showHowToEditMap:Z

    if-eqz v0, :cond_1

    .line 231
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->GetIsShowHowToEditNTV()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {p0, v10}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    .line 233
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 234
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HOW_TO_EDIT_THE_MAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 240
    :cond_1
    :goto_2
    invoke-virtual {p0, v12}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    .line 241
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 242
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HELP_CENTER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 243
    const v0, 0x7f09063c

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    .line 244
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 245
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SEND_LOGS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0, v9}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 248
    new-instance v1, Lcom/waze/settings/SettingsMainActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsMainActivity$2;-><init>(Lcom/waze/settings/SettingsMainActivity;)V

    .line 247
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    invoke-virtual {p0, v10}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/waze/settings/SettingsMainActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsMainActivity$3;-><init>(Lcom/waze/settings/SettingsMainActivity;)V

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    invoke-virtual {p0, v12}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 286
    new-instance v1, Lcom/waze/settings/SettingsMainActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsMainActivity$4;-><init>(Lcom/waze/settings/SettingsMainActivity;)V

    .line 285
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v0, 0x7f09063c

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/waze/settings/SettingsMainActivity$5;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsMainActivity$5;-><init>(Lcom/waze/settings/SettingsMainActivity;)V

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    return-void

    .line 163
    :cond_2
    const v0, 0x7f09064b

    .line 164
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ACCOUNT_AND_SETTINGS:Lcom/waze/strings/DisplayStrings;

    .line 165
    const-class v2, Lcom/waze/profile/MyProfileActivity;

    .line 162
    invoke-static {p0, v0, v1, v2, v8}, Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 225
    :cond_3
    invoke-virtual {p0, v9}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    .line 226
    invoke-virtual {v0, v11}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto/16 :goto_1

    .line 236
    :cond_4
    invoke-virtual {p0, v10}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    .line 237
    invoke-virtual {v0, v11}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateConfigItems(Ljava/util/List;)V
    .locals 8
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
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    sget-object v3, Lcom/waze/settings/SettingsMainActivity;->MAP_MODE_VALUES:[Ljava/lang/String;

    .line 59
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 60
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v3, v4, v2}, Lcom/waze/settings/SettingsUtilsMultipleConfig;->findValueIndex([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, index:I
    iget-object v2, p0, Lcom/waze/settings/SettingsMainActivity;->mapMode:Lcom/waze/settings/SettingsSelectionView;

    iget-object v3, p0, Lcom/waze/settings/SettingsMainActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 62
    sget-object v4, Lcom/waze/settings/SettingsMainActivity;->MAP_MODE_OPTIONS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 63
    sget-object v3, Lcom/waze/settings/SettingsMainActivity;->MAP_DISPLAY_VALUES:[Ljava/lang/String;

    .line 64
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v3, v2}, Lcom/waze/settings/SettingsUtils;->findValueIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 65
    iget-object v2, p0, Lcom/waze/settings/SettingsMainActivity;->mapDisplay:Lcom/waze/settings/SettingsSelectionView;

    iget-object v3, p0, Lcom/waze/settings/SettingsMainActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 66
    sget-object v4, Lcom/waze/settings/SettingsMainActivity;->MAP_DISPLAY_OPTIONS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const v2, 0x7f09064a

    invoke-virtual {p0, v2}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ConfigItem;

    iput-object v2, p0, Lcom/waze/settings/SettingsMainActivity;->editVideoUrl:Lcom/waze/ConfigItem;

    .line 74
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, value:Ljava/lang/String;
    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    iput-boolean v6, p0, Lcom/waze/settings/SettingsMainActivity;->showGuidedTour:Z

    .line 84
    :goto_0
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    iput-boolean v6, p0, Lcom/waze/settings/SettingsMainActivity;->showHowToEditMap:Z

    .line 94
    :goto_1
    return-void

    .line 78
    :cond_1
    iput-boolean v5, p0, Lcom/waze/settings/SettingsMainActivity;->showGuidedTour:Z

    .line 79
    const v2, 0x7f090639

    invoke-virtual {p0, v2}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/DrillDownSettingView;

    .line 80
    invoke-virtual {v2, v7}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_2
    iput-boolean v5, p0, Lcom/waze/settings/SettingsMainActivity;->showHowToEditMap:Z

    .line 90
    const v2, 0x7f09063a

    invoke-virtual {p0, v2}, Lcom/waze/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/DrillDownSettingView;

    .line 91
    invoke-virtual {v2, v7}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto :goto_1
.end method
