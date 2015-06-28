.class public Lcom/waze/settings/SettingsSoundActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsSoundActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


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

.field private mPromptsSoundVolumeBar:Lcom/waze/settings/SettingsSeekbarView;

.field private mSpeakerChkBox:Lcom/waze/settings/SettingsSwitchView;

.field private navLanguageView:Lcom/waze/settings/SettingsSelectionView;

.field private navigationGuidanceValueStrings:[Ljava/lang/String;

.field private navigationGuidanceValues:[Lcom/waze/settings/SettingsValue;

.field private settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 142
    iput-object v0, p0, Lcom/waze/settings/SettingsSoundActivity;->mSpeakerChkBox:Lcom/waze/settings/SettingsSwitchView;

    .line 144
    iput-object v0, p0, Lcom/waze/settings/SettingsSoundActivity;->mPromptsSoundVolumeBar:Lcom/waze/settings/SettingsSeekbarView;

    .line 146
    iput-object v0, p0, Lcom/waze/settings/SettingsSoundActivity;->navigationGuidanceValueStrings:[Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/waze/settings/SettingsSoundActivity;->navigationGuidanceValues:[Lcom/waze/settings/SettingsValue;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/waze/settings/SettingsSoundActivity;)Lcom/waze/settings/SettingsSelectionView;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/waze/settings/SettingsSoundActivity;->navLanguageView:Lcom/waze/settings/SettingsSelectionView;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 152
    if-ne p2, v0, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsSoundActivity;->setResult(I)V

    .line 154
    invoke-virtual {p0}, Lcom/waze/settings/SettingsSoundActivity;->finish()V

    .line 156
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f090200

    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f0300f7

    invoke-virtual {p0, v1}, Lcom/waze/settings/SettingsSoundActivity;->setContentView(I)V

    .line 46
    const v1, 0x7f090058

    invoke-virtual {p0, v1}, Lcom/waze/settings/SettingsSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SOUND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, p0, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 48
    new-instance v1, Lcom/waze/settings/SettingsNativeManager;

    invoke-direct {v1}, Lcom/waze/settings/SettingsNativeManager;-><init>()V

    iput-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;

    .line 50
    const-string v1, "SETTINGS_CLICK"

    const-string v2, "VAUE"

    const-string v3, "SOUND"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->mConfigItems:Ljava/util/List;

    .line 53
    iget-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->mConfigItems:Ljava/util/List;

    sget-object v2, Lcom/waze/settings/SettingsSoundConstants;->CFG_ITEM_ROUTE_2_SPEAKER:Lcom/waze/ConfigItem;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->mConfigItems:Ljava/util/List;

    const/4 v2, 0x1

    sget-object v3, Lcom/waze/settings/SettingsSoundConstants;->CFG_ITEM_PROMPTS_VOLUME:Lcom/waze/ConfigItem;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 57
    invoke-virtual {p0, v5}, Lcom/waze/settings/SettingsSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsSelectionView;

    iput-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->navLanguageView:Lcom/waze/settings/SettingsSelectionView;

    .line 58
    iget-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->navLanguageView:Lcom/waze/settings/SettingsSelectionView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NAVIGATION_GUIDANCE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setKeyText(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v5}, Lcom/waze/settings/SettingsSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/settings/SettingsSoundActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/settings/SettingsSoundActivity$1;-><init>(Lcom/waze/settings/SettingsSoundActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f09066e

    invoke-virtual {p0, v1}, Lcom/waze/settings/SettingsSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsSwitchView;

    iput-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->mSpeakerChkBox:Lcom/waze/settings/SettingsSwitchView;

    .line 70
    iget-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->mSpeakerChkBox:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SOUND_ROUTE_2_SPEAKER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 71
    const-string v1, ""

    iget-object v2, p0, Lcom/waze/settings/SettingsSoundActivity;->mConfigItems:Ljava/util/List;

    iget-object v3, p0, Lcom/waze/settings/SettingsSoundActivity;->mSpeakerChkBox:Lcom/waze/settings/SettingsSwitchView;

    invoke-static {v1, v2, v3, v4}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 73
    iget-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->mSpeakerChkBox:Lcom/waze/settings/SettingsSwitchView;

    new-instance v2, Lcom/waze/settings/SettingsSoundActivity$2;

    invoke-direct {v2, p0}, Lcom/waze/settings/SettingsSoundActivity$2;-><init>(Lcom/waze/settings/SettingsSoundActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 83
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 84
    .local v0, nm:Lcom/waze/NativeManager;
    const v1, 0x7f09066d

    invoke-virtual {p0, v1}, Lcom/waze/settings/SettingsSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsSeekbarView;

    iput-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->mPromptsSoundVolumeBar:Lcom/waze/settings/SettingsSeekbarView;

    .line 85
    iget-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->mPromptsSoundVolumeBar:Lcom/waze/settings/SettingsSeekbarView;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SOUND_PROMPTS_VOLUME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSeekbarView;->setText(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->mPromptsSoundVolumeBar:Lcom/waze/settings/SettingsSeekbarView;

    new-instance v2, Lcom/waze/settings/SettingsSoundActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/settings/SettingsSoundActivity$3;-><init>(Lcom/waze/settings/SettingsSoundActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSeekbarView;->setOnSeekBarChangeListener(Lcom/waze/settings/SettingsSeekbarView$OnSeekBarChangeListenerBasic;)V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 121
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsSoundActivity;->mConfigItems:Ljava/util/List;

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/waze/settings/SettingsSoundActivity;->settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;

    new-instance v1, Lcom/waze/settings/SettingsSoundActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsSoundActivity$4;-><init>(Lcom/waze/settings/SettingsSoundActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNativeManager;->getNavigationGuidanceTypes(Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V

    .line 138
    return-void
.end method

.method protected setPromptsVolume(I)V
    .locals 5
    .parameter "level"

    .prologue
    .line 108
    invoke-static {}, Lcom/waze/NativeSoundManager;->getInstance()Lcom/waze/NativeSoundManager;

    move-result-object v2

    .line 110
    .local v2, nsm:Lcom/waze/NativeSoundManager;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, cfgValue:Ljava/lang/String;
    new-instance v1, Lcom/waze/ConfigItem;

    const-string v3, "Sound"

    .line 112
    const-string v4, "Prompts Volume"

    .line 111
    invoke-direct {v1, v3, v4, v0}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v1, item:Lcom/waze/ConfigItem;
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lcom/waze/ConfigManager;->setConfig(Lcom/waze/ConfigItem;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2, p1}, Lcom/waze/NativeSoundManager;->setVolume(I)V

    .line 116
    return-void
.end method

.method protected setRoute2Speaker(Z)V
    .locals 5
    .parameter "value"

    .prologue
    .line 97
    invoke-static {}, Lcom/waze/NativeSoundManager;->getInstance()Lcom/waze/NativeSoundManager;

    move-result-object v2

    .line 99
    .local v2, nsm:Lcom/waze/NativeSoundManager;
    if-eqz p1, :cond_0

    const-string v0, "yes"

    .line 100
    .local v0, cfgValue:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/waze/ConfigItem;

    const-string v3, "Sound"

    const-string v4, "Route2Speaker"

    invoke-direct {v1, v3, v4, v0}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v1, item:Lcom/waze/ConfigItem;
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lcom/waze/ConfigManager;->setConfig(Lcom/waze/ConfigItem;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, p1}, Lcom/waze/NativeSoundManager;->routeSoundToSpeaker(Z)V

    .line 104
    return-void

    .line 99
    .end local v0           #cfgValue:Ljava/lang/String;
    .end local v1           #item:Lcom/waze/ConfigItem;
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public updateConfigItems(Ljava/util/List;)V
    .locals 4
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
    .line 32
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 33
    .local v1, speakerOn:Z
    iget-object v2, p0, Lcom/waze/settings/SettingsSoundActivity;->mSpeakerChkBox:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v2, v1}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 36
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, promptsVolume:Ljava/lang/String;
    iget-object v2, p0, Lcom/waze/settings/SettingsSoundActivity;->mPromptsSoundVolumeBar:Lcom/waze/settings/SettingsSeekbarView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsSeekbarView;->setProgress(I)V

    .line 39
    return-void
.end method
