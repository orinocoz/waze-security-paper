.class public Lcom/waze/settings/SettingsGeneralActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsGeneralActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field private static final KEEP_BACK_LIGHT_INDEX:I = 0x1

.field private static final RADIUS_INDEX:I = 0x2

.field private static final RADIUS_VALUES_KM:[I = null

.field private static final RADIUS_VALUES_MILES:[I = null

.field private static final RETURN_TO_CALL_INDEX:I = 0x3

.field private static final UNIT_INDEX:I

.field private static final UNIT_OPTIONS:[Ljava/lang/String;

.field private static final UNIT_VALUES:[Ljava/lang/String;

.field static firstCreate:Z


# instance fields
.field private keepBackLightView:Lcom/waze/settings/SettingsSwitchView;

.field private languageView:Lcom/waze/settings/SettingsSelectionView;

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

.field private nativeManager:Lcom/waze/settings/SettingsNativeManager;

.field private radiusView:Lcom/waze/settings/SettingsSelectionView;

.field private returnToWazeView:Lcom/waze/settings/SettingsSwitchView;

.field final screenName:Ljava/lang/String;

.field private unitView:Lcom/waze/settings/SettingsSelectionView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 25
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Mile"

    aput-object v1, v0, v3

    const-string v1, "Km"

    aput-object v1, v0, v2

    sput-object v0, Lcom/waze/settings/SettingsGeneralActivity;->UNIT_OPTIONS:[Ljava/lang/String;

    .line 26
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "imperial"

    aput-object v1, v0, v3

    const-string v1, "metric"

    aput-object v1, v0, v2

    sput-object v0, Lcom/waze/settings/SettingsGeneralActivity;->UNIT_VALUES:[Ljava/lang/String;

    .line 30
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/waze/settings/SettingsGeneralActivity;->RADIUS_VALUES_KM:[I

    .line 31
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/waze/settings/SettingsGeneralActivity;->RADIUS_VALUES_MILES:[I

    .line 42
    sput-boolean v2, Lcom/waze/settings/SettingsGeneralActivity;->firstCreate:Z

    return-void

    .line 30
    nop

    :array_0
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0x8t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 35
    const-string v0, "SettingsGeneral"

    iput-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->screenName:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 46
    return-void
.end method

.method static synthetic access$0()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/waze/settings/SettingsGeneralActivity;->RADIUS_VALUES_KM:[I

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/settings/SettingsGeneralActivity;)Lcom/waze/settings/SettingsSelectionView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->radiusView:Lcom/waze/settings/SettingsSelectionView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/settings/SettingsGeneralActivity;)Lcom/waze/settings/SettingsSelectionView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->languageView:Lcom/waze/settings/SettingsSelectionView;

    return-object v0
.end method

.method private setString(II)V
    .locals 3
    .parameter "id"
    .parameter "string"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/waze/settings/SettingsGeneralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/settings/SettingsGeneralActivity;->mNativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0, p2}, Lcom/waze/settings/SettingsGeneralActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
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

    .line 186
    if-ne p2, v0, :cond_0

    .line 188
    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGeneralActivity;->setResult(I)V

    .line 189
    invoke-virtual {p0}, Lcom/waze/settings/SettingsGeneralActivity;->finish()V

    .line 191
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 192
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f0901ff

    .line 123
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f0300ea

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGeneralActivity;->setContentView(I)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->mConfigItems:Ljava/util/ArrayList;

    .line 126
    iget-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "General"

    const-string v3, "User Unit V2"

    const-string v5, ""

    invoke-direct {v1, v2, v3, v5}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Display"

    const-string v3, "BackLight"

    const-string v5, ""

    invoke-direct {v1, v2, v3, v5}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Events"

    const-string v3, "Radius"

    const-string v5, ""

    invoke-direct {v1, v2, v3, v5}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Display"

    const-string v3, "ReturnFromPhoneCall"

    const-string v5, ""

    invoke-direct {v1, v2, v3, v5}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsGeneralActivity;->mConfigItems:Ljava/util/ArrayList;

    const-string v2, "SettingsGeneral"

    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 133
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGeneralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_GENERAL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 135
    const-string v0, "SETTINGS_CLICK"

    const-string v1, "VAUE"

    const-string v2, "GENERAL"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const v0, 0x7f090201

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGeneralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->unitView:Lcom/waze/settings/SettingsSelectionView;

    .line 138
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_UNIT:Lcom/waze/strings/DisplayStrings;

    .line 139
    .local v4, unitStr:Lcom/waze/strings/DisplayStrings;
    const-string v1, "SettingsGeneral"

    iget-object v2, p0, Lcom/waze/settings/SettingsGeneralActivity;->mConfigItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/waze/settings/SettingsGeneralActivity;->unitView:Lcom/waze/settings/SettingsSelectionView;

    .line 140
    sget-object v5, Lcom/waze/settings/SettingsGeneralActivity;->UNIT_OPTIONS:[Ljava/lang/String;

    sget-object v6, Lcom/waze/settings/SettingsGeneralActivity;->UNIT_VALUES:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    .line 139
    invoke-static/range {v0 .. v7}, Lcom/waze/settings/SettingsUtils;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 142
    const v0, 0x7f090634

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGeneralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSwitchView;

    iput-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->keepBackLightView:Lcom/waze/settings/SettingsSwitchView;

    .line 144
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_KEEP_BACK_LIGHT_ON:Lcom/waze/strings/DisplayStrings;

    .line 145
    .local v8, keepBackLightStr:Lcom/waze/strings/DisplayStrings;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, langDisplayStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->keepBackLightView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v0, v9}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 148
    const v0, 0x7f090635

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGeneralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSwitchView;

    iput-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->returnToWazeView:Lcom/waze/settings/SettingsSwitchView;

    .line 150
    const v0, 0x7f090636

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGeneralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TAKES_YOU_BACK_TO_WAZE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_KEEP_WAZE_ON_TOP:Lcom/waze/strings/DisplayStrings;

    .line 153
    .local v12, returnStr:Lcom/waze/strings/DisplayStrings;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, langDisplayStr1:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->returnToWazeView:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v0, v10}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, v13}, Lcom/waze/settings/SettingsGeneralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->languageView:Lcom/waze/settings/SettingsSelectionView;

    .line 157
    iget-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->languageView:Lcom/waze/settings/SettingsSelectionView;

    iget-object v1, p0, Lcom/waze/settings/SettingsGeneralActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LANGUAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSelectionView;->setKeyText(Ljava/lang/String;)V

    .line 159
    const v0, 0x7f090633

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGeneralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->radiusView:Lcom/waze/settings/SettingsSelectionView;

    .line 160
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_EVENTS_RADIUS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, radiusStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->radiusView:Lcom/waze/settings/SettingsSelectionView;

    invoke-virtual {v0, v11}, Lcom/waze/settings/SettingsSelectionView;->setKeyText(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v13}, Lcom/waze/settings/SettingsGeneralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/settings/SettingsGeneralActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsGeneralActivity$2;-><init>(Lcom/waze/settings/SettingsGeneralActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v0, Lcom/waze/settings/SettingsNativeManager;

    invoke-direct {v0}, Lcom/waze/settings/SettingsNativeManager;-><init>()V

    iput-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->nativeManager:Lcom/waze/settings/SettingsNativeManager;

    .line 171
    iget-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity;->nativeManager:Lcom/waze/settings/SettingsNativeManager;

    new-instance v1, Lcom/waze/settings/SettingsGeneralActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsGeneralActivity$3;-><init>(Lcom/waze/settings/SettingsGeneralActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNativeManager;->getLanguages(Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V

    .line 182
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 197
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
    .line 51
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/waze/ConfigItem;

    invoke-virtual {v9}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, unitValue:Ljava/lang/String;
    sget-object v9, Lcom/waze/settings/SettingsGeneralActivity;->UNIT_VALUES:[Ljava/lang/String;

    invoke-static {v9, v7}, Lcom/waze/settings/SettingsUtils;->findValueIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 53
    .local v1, index:I
    iget-object v9, p0, Lcom/waze/settings/SettingsGeneralActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/settings/SettingsGeneralActivity;->UNIT_OPTIONS:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, unitStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/settings/SettingsGeneralActivity;->unitView:Lcom/waze/settings/SettingsSelectionView;

    invoke-virtual {v9, v6}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 55
    iget-object v10, p0, Lcom/waze/settings/SettingsGeneralActivity;->keepBackLightView:Lcom/waze/settings/SettingsSwitchView;

    const/4 v9, 0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/waze/ConfigItem;

    invoke-virtual {v9}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v11, "yes"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 56
    iget-object v10, p0, Lcom/waze/settings/SettingsGeneralActivity;->returnToWazeView:Lcom/waze/settings/SettingsSwitchView;

    const/4 v9, 0x3

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/waze/ConfigItem;

    invoke-virtual {v9}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v11, "yes"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 58
    const-string v9, "SettingsGeneral"

    iget-object v10, p0, Lcom/waze/settings/SettingsGeneralActivity;->mConfigItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/waze/settings/SettingsGeneralActivity;->keepBackLightView:Lcom/waze/settings/SettingsSwitchView;

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 59
    const-string v9, "SettingsGeneral"

    iget-object v10, p0, Lcom/waze/settings/SettingsGeneralActivity;->mConfigItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/waze/settings/SettingsGeneralActivity;->returnToWazeView:Lcom/waze/settings/SettingsSwitchView;

    const/4 v12, 0x3

    invoke-static {v9, v10, v11, v12}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V

    .line 60
    sget-object v5, Lcom/waze/settings/SettingsGeneralActivity;->RADIUS_VALUES_KM:[I

    .line 61
    .local v5, tmpRadiuses:[I
    const-string v9, "imperial"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 62
    sget-object v5, Lcom/waze/settings/SettingsGeneralActivity;->RADIUS_VALUES_MILES:[I

    .line 64
    :cond_0
    move-object v4, v5

    .line 66
    .local v4, radiuses:[I
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/waze/ConfigItem;

    invoke-virtual {v9}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, radiusValue:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 68
    const-string v9, "-1"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 69
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    .line 70
    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_ALL:Lcom/waze/strings/DisplayStrings;

    .line 69
    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, radiusValueStr:Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/waze/settings/SettingsGeneralActivity;->radiusView:Lcom/waze/settings/SettingsSelectionView;

    invoke-virtual {v9, v3}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 89
    iget-object v9, p0, Lcom/waze/settings/SettingsGeneralActivity;->radiusView:Lcom/waze/settings/SettingsSelectionView;

    const v10, 0x7f09062b

    invoke-virtual {v9, v10}, Lcom/waze/settings/SettingsSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/waze/settings/SettingsGeneralActivity$1;

    invoke-direct {v10, p0, v4, v6}, Lcom/waze/settings/SettingsGeneralActivity$1;-><init>(Lcom/waze/settings/SettingsGeneralActivity;[ILjava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .end local v3           #radiusValueStr:Ljava/lang/String;
    :cond_1
    return-void

    .line 71
    :cond_2
    const-string v9, "-2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 72
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_ON_ROUTE_ONLY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .restart local v3       #radiusValueStr:Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v3           #radiusValueStr:Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 76
    .local v8, value:I
    const-string v9, "imperial"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, i:I
    :goto_1
    const/4 v9, 0x6

    if-ge v0, v9, :cond_4

    sget-object v9, Lcom/waze/settings/SettingsGeneralActivity;->RADIUS_VALUES_MILES:[I

    aget v9, v9, v0

    if-ne v9, v8, :cond_6

    .line 81
    :cond_4
    const/4 v9, 0x6

    if-ge v0, v9, :cond_7

    .line 82
    sget-object v9, Lcom/waze/settings/SettingsGeneralActivity;->RADIUS_VALUES_KM:[I

    aget v8, v9, v0

    .line 86
    .end local v0           #i:I
    :cond_5
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #radiusValueStr:Ljava/lang/String;
    goto :goto_0

    .line 79
    .end local v3           #radiusValueStr:Ljava/lang/String;
    .restart local v0       #i:I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2
.end method
