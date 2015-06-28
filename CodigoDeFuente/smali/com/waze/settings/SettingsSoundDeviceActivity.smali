.class public Lcom/waze/settings/SettingsSoundDeviceActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsSoundDeviceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v9, 0x7f0300fa

    invoke-virtual {p0, v9}, Lcom/waze/settings/SettingsSoundDeviceActivity;->setContentView(I)V

    .line 21
    const v9, 0x7f090058

    invoke-virtual {p0, v9}, Lcom/waze/settings/SettingsSoundDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/waze/view/title/TitleBar;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_SOUND_DEVICE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, p0, v10}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 22
    new-instance v0, Lcom/waze/settings/SettingValueAdapter;

    invoke-direct {v0, p0}, Lcom/waze/settings/SettingValueAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, adapter:Lcom/waze/settings/SettingValueAdapter;
    invoke-virtual {p0}, Lcom/waze/settings/SettingsSoundDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "SELECTED_DEVICE"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    .local v6, selectedDevice:Ljava/lang/String;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    .line 26
    .local v5, nm:Lcom/waze/NativeManager;
    sget-object v9, Lcom/waze/settings/SettingsSoundConstants;->DEVICES:[Lcom/waze/strings/DisplayStrings;

    array-length v9, v9

    new-array v8, v9, [Lcom/waze/settings/SettingsValue;

    .line 29
    .local v8, values:[Lcom/waze/settings/SettingsValue;
    const/4 v2, 0x0

    .line 30
    .local v2, isSelected:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v9, Lcom/waze/settings/SettingsSoundConstants;->DEVICES:[Lcom/waze/strings/DisplayStrings;

    array-length v9, v9

    if-lt v1, v9, :cond_0

    .line 37
    invoke-virtual {v0, v8}, Lcom/waze/settings/SettingValueAdapter;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 40
    const v9, 0x7f090674

    invoke-virtual {p0, v9}, Lcom/waze/settings/SettingsSoundDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 41
    .local v4, list:Landroid/widget/ListView;
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    new-instance v9, Lcom/waze/settings/SettingsSoundDeviceActivity$1;

    invoke-direct {v9, p0}, Lcom/waze/settings/SettingsSoundDeviceActivity$1;-><init>(Lcom/waze/settings/SettingsSoundDeviceActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    return-void

    .line 32
    .end local v4           #list:Landroid/widget/ListView;
    :cond_0
    sget-object v9, Lcom/waze/settings/SettingsSoundConstants;->DEVICES:[Lcom/waze/strings/DisplayStrings;

    aget-object v3, v9, v1

    .line 33
    .local v3, key:Lcom/waze/strings/DisplayStrings;
    invoke-virtual {v5, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 34
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 35
    new-instance v9, Lcom/waze/settings/SettingsValue;

    invoke-virtual {v5, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v10, v2}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v9, v8, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
