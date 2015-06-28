.class public Lcom/waze/mywaze/social/SocialActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SocialActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;
.implements Lcom/waze/mywaze/MyWazeNativeManager$FoursquareCallback;
.implements Lcom/waze/mywaze/MyWazeNativeManager$TwitterCallback;
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field private static final GROUPS_ICONS_INDEX:I = 0x1

.field public static final GROUP_ICONS_OPTIONS:[Ljava/lang/String; = null

.field public static final GROUP_ICONS_VALUES:[Ljava/lang/String; = null

.field private static final POPUP_REPORTS_INDEX:I = 0x0

.field public static final POPUP_REPORTS_OPTIONS:[Ljava/lang/String; = null

.field public static final POPUP_REPORTS_VALUES:[Ljava/lang/String; = null

.field public static final screenName:Ljava/lang/String; = "SocialActivity"


# instance fields
.field private PMView:Lcom/waze/settings/SettingsSwitchView;

.field private iconsView:Lcom/waze/settings/SettingsSelectionView;

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

.field private nativeManager:Lcom/waze/NativeManager;

.field private pingView:Lcom/waze/settings/SettingsSwitchView;

.field private reportsView:Lcom/waze/settings/SettingsSelectionView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v2

    const-string v1, "From all groups I follow"

    aput-object v1, v0, v3

    const-string v1, "From my main group"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/mywaze/social/SocialActivity;->POPUP_REPORTS_OPTIONS:[Ljava/lang/String;

    .line 45
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "none"

    aput-object v1, v0, v2

    const-string v1, "following"

    aput-object v1, v0, v3

    const-string v1, "main"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/mywaze/social/SocialActivity;->POPUP_REPORTS_VALUES:[Ljava/lang/String;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "All groups"

    aput-object v1, v0, v2

    const-string v1, "From all groups I follow"

    aput-object v1, v0, v3

    const-string v1, "From my main group"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/mywaze/social/SocialActivity;->GROUP_ICONS_OPTIONS:[Ljava/lang/String;

    .line 47
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "All"

    aput-object v1, v0, v2

    const-string v1, "following"

    aput-object v1, v0, v3

    const-string v1, "main"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/mywaze/social/SocialActivity;->GROUP_ICONS_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 50
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/social/SocialActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 51
    return-void
.end method


# virtual methods
.method public SetAllowPM(Z)V
    .locals 1
    .parameter "bIsAllow"

    .prologue
    .line 190
    const v0, 0x7f090701

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v0, p1}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 191
    return-void
.end method

.method public SetAllowPing(Z)V
    .locals 1
    .parameter "bIsAllow"

    .prologue
    .line 186
    const v0, 0x7f090700

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v0, p1}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 187
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 195
    if-ne p2, v0, :cond_0

    .line 196
    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->setResult(I)V

    .line 197
    invoke-virtual {p0}, Lcom/waze/mywaze/social/SocialActivity;->finish()V

    .line 199
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 200
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f0906fc

    const v10, 0x7f0906fa

    const v9, 0x7f0906f8

    const/16 v8, 0x8

    .line 64
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f03010e

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->setContentView(I)V

    .line 67
    const v0, 0x7f0906f6

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SOCIAL_NETWORKS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 69
    const-string v0, "SETTINGS_CLICK"

    const-string v1, "VAUE"

    const-string v2, "SOCIAL_NETWORKS"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const v0, 0x7f0906f9

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v0, 0x7f0906f7

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsTitleText;

    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CONNECT_TO_NETWORK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 73
    const v0, 0x7f0906fb

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TWITTER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v0, 0x7f0906fd

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_FOURSQUARE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v0, 0x7f0906fe

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsTitleText;

    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CHIT_CHATS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 77
    const v0, 0x7f0906ff

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CHIT_CHATS_ARE_PUBLIC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v0, 0x7f090702

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsTitleText;

    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_GROUPS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/mywaze/social/SocialActivity;->mConfigItems:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/waze/mywaze/social/SocialActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Groups"

    const-string v3, "Pop-up reports"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/waze/mywaze/social/SocialActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Groups"

    const-string v3, "Show wazers"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity;->mConfigItems:Ljava/util/List;

    const-string v2, "SocialActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 85
    const v0, 0x7f090637

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/mywaze/social/SocialActivity;->reportsView:Lcom/waze/settings/SettingsSelectionView;

    .line 86
    const-string v1, "SocialActivity"

    iget-object v2, p0, Lcom/waze/mywaze/social/SocialActivity;->mConfigItems:Ljava/util/List;

    iget-object v3, p0, Lcom/waze/mywaze/social/SocialActivity;->reportsView:Lcom/waze/settings/SettingsSelectionView;

    .line 87
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_POPHUP_REPORTS:Lcom/waze/strings/DisplayStrings;

    sget-object v5, Lcom/waze/mywaze/social/SocialActivity;->POPUP_REPORTS_OPTIONS:[Ljava/lang/String;

    sget-object v6, Lcom/waze/mywaze/social/SocialActivity;->POPUP_REPORTS_VALUES:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    .line 86
    invoke-static/range {v0 .. v7}, Lcom/waze/settings/SettingsUtils;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 88
    const v0, 0x7f090638

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/mywaze/social/SocialActivity;->iconsView:Lcom/waze/settings/SettingsSelectionView;

    .line 89
    const-string v1, "SocialActivity"

    iget-object v2, p0, Lcom/waze/mywaze/social/SocialActivity;->mConfigItems:Ljava/util/List;

    iget-object v3, p0, Lcom/waze/mywaze/social/SocialActivity;->iconsView:Lcom/waze/settings/SettingsSelectionView;

    .line 90
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_GROUP_ICONS:Lcom/waze/strings/DisplayStrings;

    sget-object v5, Lcom/waze/mywaze/social/SocialActivity;->GROUP_ICONS_OPTIONS:[Ljava/lang/String;

    sget-object v6, Lcom/waze/mywaze/social/SocialActivity;->GROUP_ICONS_VALUES:[Ljava/lang/String;

    const/4 v7, 0x1

    move-object v0, p0

    .line 89
    invoke-static/range {v0 .. v7}, Lcom/waze/settings/SettingsUtils;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 92
    const v0, 0x7f090700

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSwitchView;

    iput-object v0, p0, Lcom/waze/mywaze/social/SocialActivity;->pingView:Lcom/waze/settings/SettingsSwitchView;

    .line 94
    const v0, 0x7f090701

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSwitchView;

    iput-object v0, p0, Lcom/waze/mywaze/social/SocialActivity;->PMView:Lcom/waze/settings/SettingsSwitchView;

    .line 96
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->GetAllowPM(Lcom/waze/mywaze/social/SocialActivity;)V

    .line 98
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->GetAllowPing(Lcom/waze/mywaze/social/SocialActivity;)V

    .line 100
    iget-object v0, p0, Lcom/waze/mywaze/social/SocialActivity;->PMView:Lcom/waze/settings/SettingsSwitchView;

    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LET_OTHER_SEND_ME_PRIVATE_PINGS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/waze/mywaze/social/SocialActivity;->pingView:Lcom/waze/settings/SettingsSwitchView;

    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LET_OTHER_SEND_ME_PUBLIC_PINGS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/waze/mywaze/social/SocialActivity;->pingView:Lcom/waze/settings/SettingsSwitchView;

    new-instance v1, Lcom/waze/mywaze/social/SocialActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/mywaze/social/SocialActivity$1;-><init>(Lcom/waze/mywaze/social/SocialActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 113
    iget-object v0, p0, Lcom/waze/mywaze/social/SocialActivity;->PMView:Lcom/waze/settings/SettingsSwitchView;

    new-instance v1, Lcom/waze/mywaze/social/SocialActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/mywaze/social/SocialActivity$2;-><init>(Lcom/waze/mywaze/social/SocialActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 123
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->FacebookEnabledNTV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, v9}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/mywaze/social/SocialActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/mywaze/social/SocialActivity$3;-><init>(Lcom/waze/mywaze/social/SocialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :goto_0
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->TwitterEnabledNTV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0, v10}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/mywaze/social/SocialActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/mywaze/social/SocialActivity$4;-><init>(Lcom/waze/mywaze/social/SocialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :goto_1
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->FoursquareEnabledNTV()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0, v11}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/mywaze/social/SocialActivity$5;

    invoke-direct {v1, p0}, Lcom/waze/mywaze/social/SocialActivity$5;-><init>(Lcom/waze/mywaze/social/SocialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :goto_2
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0, v9}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0, v10}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {p0, v11}, Lcom/waze/mywaze/social/SocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/mywaze/social/FacebookActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.waze.mywaze.facebooksettings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 168
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/mywaze/social/SocialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    return-void
.end method

.method public onFoursquareSettings(Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/mywaze/social/FoursquareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.waze.mywaze.foursquaresettings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/mywaze/social/SocialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    return-void
.end method

.method public onTwitterSettings(Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/mywaze/social/TwitterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.waze.mywaze.twittersettings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 182
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/mywaze/social/SocialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 183
    return-void
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
    .line 56
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    sget-object v2, Lcom/waze/mywaze/social/SocialActivity;->POPUP_REPORTS_VALUES:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/waze/settings/SettingsUtils;->findValueIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, index:I
    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity;->reportsView:Lcom/waze/settings/SettingsSelectionView;

    iget-object v2, p0, Lcom/waze/mywaze/social/SocialActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/mywaze/social/SocialActivity;->POPUP_REPORTS_OPTIONS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 58
    sget-object v2, Lcom/waze/mywaze/social/SocialActivity;->GROUP_ICONS_VALUES:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/waze/settings/SettingsUtils;->findValueIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity;->iconsView:Lcom/waze/settings/SettingsSelectionView;

    iget-object v2, p0, Lcom/waze/mywaze/social/SocialActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/mywaze/social/SocialActivity;->GROUP_ICONS_OPTIONS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 60
    return-void
.end method
