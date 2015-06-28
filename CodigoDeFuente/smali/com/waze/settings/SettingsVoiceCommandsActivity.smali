.class public Lcom/waze/settings/SettingsVoiceCommandsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsVoiceCommandsActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field private static final ACTIVATION_OPTIONS:[Ljava/lang/String; = null

.field private static final ACTIVATION_VALUES:[Ljava/lang/String; = null

.field private static final ENABLE_INDEX:I = 0x0

.field private static final PROXIMITY_INDEX:I = 0x1


# instance fields
.field private enableView:Lcom/waze/settings/SettingsCheckboxView;

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

.field private nativeManager:Lcom/waze/NativeManager;

.field private proximityEnabledView:Lcom/waze/settings/SettingsSelectionView;

.field final screenName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "3 finger tap"

    aput-object v1, v0, v2

    const-string v1, "3 fingers or wave"

    aput-object v1, v0, v3

    const-string v1, "3 fingers or wave twice"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->ACTIVATION_OPTIONS:[Ljava/lang/String;

    .line 24
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "no"

    aput-object v1, v0, v2

    const-string v1, "yes"

    aput-object v1, v0, v3

    const-string v1, "twice"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->ACTIVATION_VALUES:[Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 28
    const-string v0, "SettingsVoice"

    iput-object v0, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->screenName:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 35
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f0300fb

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsVoiceCommandsActivity;->setContentView(I)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->mConfigItems:Ljava/util/ArrayList;

    .line 59
    iget-object v0, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "ASR"

    const-string v3, "Enabled"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "ASR"

    const-string v3, "Proximity activation"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->mConfigItems:Ljava/util/ArrayList;

    const-string v2, "SettingsVoice"

    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 63
    const-string v0, "SETTINGS_CLICK"

    const-string v1, "VAUE"

    const-string v2, "VOICE"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsVoiceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_VOICE_COMMANDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 68
    const v0, 0x7f090675

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsVoiceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsCheckboxView;

    iput-object v0, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->enableView:Lcom/waze/settings/SettingsCheckboxView;

    .line 69
    iget-object v0, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->enableView:Lcom/waze/settings/SettingsCheckboxView;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ENABLE:Lcom/waze/strings/DisplayStrings;

    invoke-static {v0, v1}, Lcom/waze/settings/SettingsUtils;->setCheckboxLanguageString(Lcom/waze/settings/SettingsCheckboxView;Lcom/waze/strings/DisplayStrings;)V

    .line 70
    const v0, 0x7f090676

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsVoiceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->proximityEnabledView:Lcom/waze/settings/SettingsSelectionView;

    .line 71
    const-string v1, "SettingsVoice"

    iget-object v2, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->mConfigItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->proximityEnabledView:Lcom/waze/settings/SettingsSelectionView;

    .line 72
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ACTIVATION:Lcom/waze/strings/DisplayStrings;

    sget-object v5, Lcom/waze/settings/SettingsVoiceCommandsActivity;->ACTIVATION_OPTIONS:[Ljava/lang/String;

    sget-object v6, Lcom/waze/settings/SettingsVoiceCommandsActivity;->ACTIVATION_VALUES:[Ljava/lang/String;

    const/4 v7, 0x1

    move-object v0, p0

    .line 71
    invoke-static/range {v0 .. v7}, Lcom/waze/settings/SettingsUtils;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 73
    const v0, 0x7f090677

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsVoiceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOU_CAN_USE_VOICE_COMMANDS_FOR_FOLLOWING_FUNCTIONSC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v0, 0x7f090678

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsVoiceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_REPORT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_EXC_SREPORT_HEAVY_TRAFFICS__YOUSLL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, text1:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_BE_PROMPTED_FOR_ADDITIONAL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_DETAILS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 78
    const v0, 0x7f090679

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsVoiceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v0, 0x7f09067a

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsVoiceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NAVIGATE_TO_S_DRIVE_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_NOTEC__IN_THIS_VERSION_YOU_CAN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ONLY_COMMAND_NAVIGATION_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HOME_OR_TO_WORK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 83
    const v0, 0x7f09067b

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsVoiceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v0, 0x7f09067c

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsVoiceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_EXC_SDRIVE_HOMES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_STOP_NAVIGATION_OR_STOP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NAVIGATING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 88
    const v0, 0x7f09067d

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsVoiceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CANCEL_CANCELS_THE_COMMAND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v0, 0x7f09067e

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsVoiceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_BACK_TAKES_YOU_BACK_ONE_LEVEL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
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

    .line 38
    iget-object v2, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->enableView:Lcom/waze/settings/SettingsCheckboxView;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "yes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/waze/settings/SettingsCheckboxView;->setValue(Z)V

    .line 39
    const-string v1, "SettingsVoice"

    iget-object v2, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->mConfigItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->enableView:Lcom/waze/settings/SettingsCheckboxView;

    invoke-static {v1, v2, v3, v4}, Lcom/waze/settings/SettingsUtils;->setCheckboxCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsCheckboxView;I)V

    .line 40
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, activationValue:Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->proximityEnabledView:Lcom/waze/settings/SettingsSelectionView;

    iget-object v2, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_3_FINGER_TAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->proximityEnabledView:Lcom/waze/settings/SettingsSelectionView;

    iget-object v2, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_3_FINGERS_OR_WAVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    const-string v1, "twice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->proximityEnabledView:Lcom/waze/settings/SettingsSelectionView;

    iget-object v2, p0, Lcom/waze/settings/SettingsVoiceCommandsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_3_FINGERS_OR_WAVE_TWICE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    goto :goto_0
.end method
