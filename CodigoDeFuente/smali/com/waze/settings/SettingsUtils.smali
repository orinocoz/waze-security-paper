.class public Lcom/waze/settings/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V
    .locals 2
    .parameter "activity"
    .parameter "buttonId"
    .parameter "displayStr"
    .parameter
    .parameter "activityCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lcom/waze/strings/DisplayStrings;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p3, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/settings/SettingsUtils$3;

    invoke-direct {v1, p0, p3, p4}, Lcom/waze/settings/SettingsUtils$3;-><init>(Landroid/app/Activity;Ljava/lang/Class;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public static createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 10
    .parameter "context"
    .parameter "screenName"
    .parameter
    .parameter "selectionView"
    .parameter "displayStr"
    .parameter "options"
    .parameter "values"
    .parameter "configIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;",
            "Lcom/waze/settings/SettingsSelectionView;",
            "Lcom/waze/strings/DisplayStrings;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, langDisplayStr:Ljava/lang/String;
    invoke-virtual {p3, v3}, Lcom/waze/settings/SettingsSelectionView;->setKeyText(Ljava/lang/String;)V

    .line 26
    const v0, 0x7f09062b

    invoke-virtual {p3, v0}, Lcom/waze/settings/SettingsSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v0, Lcom/waze/settings/SettingsUtils$1;

    move-object v1, p5

    move-object v2, p0

    move-object v4, p2

    move/from16 v5, p7

    move-object v6, p3

    move-object/from16 v7, p6

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/waze/settings/SettingsUtils$1;-><init>([Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/waze/settings/SettingsSelectionView;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method public static findValueIndex([II)I
    .locals 2
    .parameter "values"
    .parameter "value"

    .prologue
    .line 85
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 90
    const/4 v0, 0x0

    .end local v0           #i:I
    :cond_0
    return v0

    .line 86
    .restart local v0       #i:I
    :cond_1
    aget v1, p0, v0

    if-eq v1, p1, :cond_0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static findValueIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "values"
    .parameter "value"

    .prologue
    .line 76
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 81
    const/4 v0, 0x0

    .end local v0           #i:I
    :cond_0
    return v0

    .line 77
    .restart local v0       #i:I
    :cond_1
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setCheckboxCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsCheckboxView;I)V
    .locals 1
    .parameter "screenName"
    .parameter
    .parameter "checkboxView"
    .parameter "configIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;",
            "Lcom/waze/settings/SettingsCheckboxView;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/waze/settings/SettingsUtils;->setCheckboxCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsCheckboxView;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    return-void
.end method

.method public static setCheckboxCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsCheckboxView;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 2
    .parameter "screenName"
    .parameter
    .parameter "checkboxView"
    .parameter "configIndex"
    .parameter "customCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;",
            "Lcom/waze/settings/SettingsCheckboxView;",
            "I",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const v0, 0x7f090622

    invoke-virtual {p2, v0}, Lcom/waze/settings/SettingsCheckboxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/waze/settings/SettingsUtils$4;

    invoke-direct {v1, p1, p3, p0, p4}, Lcom/waze/settings/SettingsUtils$4;-><init>(Ljava/util/List;ILjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    return-void
.end method

.method public static setCheckboxLanguageString(Lcom/waze/settings/SettingsCheckboxView;Lcom/waze/strings/DisplayStrings;)V
    .locals 2
    .parameter "checkboxView"
    .parameter "displayStr"

    .prologue
    .line 94
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, langDisplayStr:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsCheckboxView;->setText(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;I)V
    .locals 1
    .parameter "screenName"
    .parameter
    .parameter "checkboxView"
    .parameter "configIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;",
            "Lcom/waze/settings/SettingsSwitchView;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/waze/settings/SettingsUtils;->setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    return-void
.end method

.method public static setSwitchCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSwitchView;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .parameter "screenName"
    .parameter
    .parameter "checkboxView"
    .parameter "configIndex"
    .parameter "customCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;",
            "Lcom/waze/settings/SettingsSwitchView;",
            "I",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    new-instance v0, Lcom/waze/settings/SettingsUtils$5;

    invoke-direct {v0, p1, p3, p0, p4}, Lcom/waze/settings/SettingsUtils$5;-><init>(Ljava/util/List;ILjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p2, v0}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 147
    return-void
.end method

.method public static showSubmenu(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V
    .locals 3
    .parameter "context"
    .parameter "dialogTitle"
    .parameter "options"
    .parameter "listener"

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 62
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f06000f

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 53
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 55
    :cond_1
    new-instance v2, Lcom/waze/settings/SettingsUtils$2;

    invoke-direct {v2, p3}, Lcom/waze/settings/SettingsUtils$2;-><init>(Lcom/waze/settings/SettingsDialogListener;)V

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 61
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
