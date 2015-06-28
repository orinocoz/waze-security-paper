.class public Lcom/waze/settings/SettingsNotificationActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsNotificationActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field private static final ASK_ME_PLACES_VALUE:Ljava/lang/String; = "SettingsAskMePlacesOnOff"

.field public static final NOTIFICATIONS_CATEGORY:Ljava/lang/String; = "Display"

.field public static final NOTIFICATIONS_VALUE:Ljava/lang/String; = "SettingsNotificationOnOff"

.field private static final Settings_AskMe_INDEX:I = 0x1

.field private static final Settings_Notification_INDEX:I = 0x0

.field public static final screenName:Ljava/lang/String; = "SettingsNotification"


# instance fields
.field private SettingsAskMeOnOff:Lcom/waze/settings/SettingsSwitchView;

.field private SettingsNotificationOnOff:Lcom/waze/settings/SettingsSwitchView;

.field private final mAskMeheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

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

.field private final mNotificationsCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 70
    new-instance v0, Lcom/waze/settings/SettingsNotificationActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/settings/SettingsNotificationActivity$1;-><init>(Lcom/waze/settings/SettingsNotificationActivity;)V

    iput-object v0, p0, Lcom/waze/settings/SettingsNotificationActivity;->mNotificationsCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 83
    new-instance v0, Lcom/waze/settings/SettingsNotificationActivity$2;

    invoke-direct {v0, p0}, Lcom/waze/settings/SettingsNotificationActivity$2;-><init>(Lcom/waze/settings/SettingsNotificationActivity;)V

    iput-object v0, p0, Lcom/waze/settings/SettingsNotificationActivity;->mAskMeheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 23
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-string v1, "waze"

    const-string v2, "start settings activity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const v1, 0x7f0300f2

    invoke-virtual {p0, v1}, Lcom/waze/settings/SettingsNotificationActivity;->setContentView(I)V

    .line 49
    const v1, 0x7f090058

    invoke-virtual {p0, v1}, Lcom/waze/settings/SettingsNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NOTIFICATIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, p0, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/waze/settings/SettingsNotificationActivity;->mConfigItems:Ljava/util/List;

    .line 52
    iget-object v1, p0, Lcom/waze/settings/SettingsNotificationActivity;->mConfigItems:Ljava/util/List;

    new-instance v2, Lcom/waze/ConfigItem;

    const-string v3, "Display"

    const-string v4, "SettingsNotificationOnOff"

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lcom/waze/settings/SettingsNotificationActivity;->mConfigItems:Ljava/util/List;

    new-instance v2, Lcom/waze/ConfigItem;

    const-string v3, "Display"

    const-string v4, "SettingsAskMePlacesOnOff"

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 57
    .local v0, nm:Lcom/waze/NativeManager;
    const v1, 0x7f09065b

    invoke-virtual {p0, v1}, Lcom/waze/settings/SettingsNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsSwitchView;

    iput-object v1, p0, Lcom/waze/settings/SettingsNotificationActivity;->SettingsNotificationOnOff:Lcom/waze/settings/SettingsSwitchView;

    .line 58
    iget-object v1, p0, Lcom/waze/settings/SettingsNotificationActivity;->SettingsNotificationOnOff:Lcom/waze/settings/SettingsSwitchView;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ENABLE_PUSH:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 60
    const v1, 0x7f09065c

    invoke-virtual {p0, v1}, Lcom/waze/settings/SettingsNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsSwitchView;

    iput-object v1, p0, Lcom/waze/settings/SettingsNotificationActivity;->SettingsAskMeOnOff:Lcom/waze/settings/SettingsSwitchView;

    .line 61
    iget-object v1, p0, Lcom/waze/settings/SettingsNotificationActivity;->SettingsAskMeOnOff:Lcom/waze/settings/SettingsSwitchView;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ASK_ME_ABOUT_PLACES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 67
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsNotificationActivity;->mConfigItems:Ljava/util/List;

    const-string v2, "SettingsNotification"

    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public updateConfigItems(Ljava/util/List;)V
    .locals 6
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    iget-object v1, p0, Lcom/waze/settings/SettingsNotificationActivity;->SettingsNotificationOnOff:Lcom/waze/settings/SettingsSwitchView;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ConfigItem;

    invoke-virtual {v0}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 38
    const-string v0, "SettingsNotification"

    iget-object v1, p0, Lcom/waze/settings/SettingsNotificationActivity;->mConfigItems:Ljava/util/List;

    iget-object v2, p0, Lcom/waze/settings/SettingsNotificationActivity;->SettingsNotificationOnOff:Lcom/waze/settings/SettingsSwitchView;

    iget-object v3, p0, Lcom/waze/settings/SettingsNotificationActivity;->mNotificationsCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 40
    iget-object v1, p0, Lcom/waze/settings/SettingsNotificationActivity;->SettingsAskMeOnOff:Lcom/waze/settings/SettingsSwitchView;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ConfigItem;

    invoke-virtual {v0}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 41
    const-string v0, "SettingsNotification"

    iget-object v1, p0, Lcom/waze/settings/SettingsNotificationActivity;->mConfigItems:Ljava/util/List;

    iget-object v2, p0, Lcom/waze/settings/SettingsNotificationActivity;->SettingsAskMeOnOff:Lcom/waze/settings/SettingsSwitchView;

    iget-object v3, p0, Lcom/waze/settings/SettingsNotificationActivity;->mAskMeheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-static {v0, v1, v2, v5, v3}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 42
    return-void
.end method
