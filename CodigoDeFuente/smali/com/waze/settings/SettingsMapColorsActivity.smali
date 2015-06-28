.class public Lcom/waze/settings/SettingsMapColorsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsMapColorsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v5, 0x7f0300fa

    invoke-virtual {p0, v5}, Lcom/waze/settings/SettingsMapColorsActivity;->setContentView(I)V

    .line 22
    const v5, 0x7f090058

    invoke-virtual {p0, v5}, Lcom/waze/settings/SettingsMapColorsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/waze/view/title/TitleBar;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_MAP_COLOR_SCHEME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, p0, v6}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 23
    new-instance v0, Lcom/waze/settings/SettingValueAdapter;

    invoke-direct {v0, p0}, Lcom/waze/settings/SettingValueAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, adapter:Lcom/waze/settings/SettingValueAdapter;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 25
    .local v3, nativeManager:Lcom/waze/NativeManager;
    sget-object v5, Lcom/waze/settings/SettingsMapActivity;->MAP_COLORS_VALUES:[Ljava/lang/String;

    array-length v5, v5

    new-array v4, v5, [Lcom/waze/settings/SettingsValue;

    .line 26
    .local v4, values:[Lcom/waze/settings/SettingsValue;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v5, Lcom/waze/settings/SettingsMapActivity;->MAP_COLORS_VALUES:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_0

    .line 31
    invoke-virtual {v0, v4}, Lcom/waze/settings/SettingValueAdapter;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 32
    const v5, 0x7f090674

    invoke-virtual {p0, v5}, Lcom/waze/settings/SettingsMapColorsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 33
    .local v2, list:Landroid/widget/ListView;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    new-instance v5, Lcom/waze/settings/SettingsMapColorsActivity$1;

    invoke-direct {v5, p0}, Lcom/waze/settings/SettingsMapColorsActivity$1;-><init>(Lcom/waze/settings/SettingsMapColorsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    return-void

    .line 27
    .end local v2           #list:Landroid/widget/ListView;
    :cond_0
    new-instance v5, Lcom/waze/settings/SettingsValue;

    sget-object v6, Lcom/waze/settings/SettingsMapActivity;->MAP_COLORS_VALUES:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 28
    sget-object v7, Lcom/waze/settings/SettingsMapActivity;->MAP_COLORS_OPTIONS:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v3, v7}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 27
    aput-object v5, v4, v1

    .line 29
    aget-object v5, v4, v1

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/waze/settings/SettingsMapActivity;->MAP_COLORS_ICONS:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".bin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/waze/settings/SettingsValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
