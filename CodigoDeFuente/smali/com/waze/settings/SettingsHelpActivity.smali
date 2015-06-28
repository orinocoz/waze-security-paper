.class public Lcom/waze/settings/SettingsHelpActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsHelpActivity.java"


# instance fields
.field protected editVideoUrl:Lcom/waze/ConfigItem;

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

.field protected showGuidedTour:Z

.field protected showHowToEditMap:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/waze/settings/SettingsHelpActivity;->showGuidedTour:Z

    .line 32
    iput-boolean v0, p0, Lcom/waze/settings/SettingsHelpActivity;->showHowToEditMap:Z

    .line 35
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsHelpActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 36
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

    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    if-ne p2, v0, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsHelpActivity;->setResult(I)V

    .line 157
    invoke-virtual {p0}, Lcom/waze/settings/SettingsHelpActivity;->finish()V

    .line 159
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f09063c

    const v8, 0x7f09063b

    const/16 v7, 0x8

    const v6, 0x7f09063a

    const v5, 0x7f090639

    .line 40
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v0, "waze"

    const-string v1, "start settings activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const v0, 0x7f0300ec

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsHelpActivity;->setContentView(I)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/settings/SettingsHelpActivity;->mConfigItems:Ljava/util/ArrayList;

    .line 44
    iget-object v0, p0, Lcom/waze/settings/SettingsHelpActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Help"

    const-string v3, "How to edit map url"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/waze/settings/SettingsHelpActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Help"

    const-string v3, "Show Guided Tour"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/waze/settings/SettingsHelpActivity;->mConfigItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Help"

    const-string v3, "Show how to edit"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    new-instance v1, Lcom/waze/settings/SettingsHelpActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsHelpActivity$1;-><init>(Lcom/waze/settings/SettingsHelpActivity;)V

    .line 77
    iget-object v2, p0, Lcom/waze/settings/SettingsHelpActivity;->mConfigItems:Ljava/util/ArrayList;

    const-string v3, ""

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 79
    const-string v0, "SETTINGS_CLICK"

    const-string v1, "VAUE"

    const-string v2, "HELP"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_HELP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 83
    iget-boolean v0, p0, Lcom/waze/settings/SettingsHelpActivity;->showGuidedTour:Z

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0, v5}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_WATCH_THE_GUIDED_TOUR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 90
    :goto_0
    iget-boolean v0, p0, Lcom/waze/settings/SettingsHelpActivity;->showHowToEditMap:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->GetIsShowHowToEditNTV()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0, v6}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HOW_TO_EDIT_THE_MAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_1
    invoke-virtual {p0, v8}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HELP_CENTER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v9}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SEND_LOGS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 103
    const v0, 0x7f09063d

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ABOUT_AND_NOTICES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, v5}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/settings/SettingsHelpActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsHelpActivity$2;-><init>(Lcom/waze/settings/SettingsHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0, v6}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/settings/SettingsHelpActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsHelpActivity$3;-><init>(Lcom/waze/settings/SettingsHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0, v8}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/settings/SettingsHelpActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsHelpActivity$4;-><init>(Lcom/waze/settings/SettingsHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0, v9}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/settings/SettingsHelpActivity$5;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsHelpActivity$5;-><init>(Lcom/waze/settings/SettingsHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f09063d

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/settings/SettingsHelpActivity$6;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsHelpActivity$6;-><init>(Lcom/waze/settings/SettingsHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void

    .line 87
    :cond_1
    invoke-virtual {p0, v5}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    invoke-virtual {v0, v7}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto/16 :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0, v6}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    invoke-virtual {v0, v7}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto/16 :goto_1
.end method
