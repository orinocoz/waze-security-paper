.class public Lcom/waze/settings/SettingsUtilsMultipleConfig;
.super Ljava/lang/Object;
.source "SettingsUtilsMultipleConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
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
    .line 90
    .local p3, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/settings/SettingsUtilsMultipleConfig$4;

    invoke-direct {v1, p0, p3, p4}, Lcom/waze/settings/SettingsUtilsMultipleConfig$4;-><init>(Landroid/app/Activity;Ljava/lang/Class;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public static createFakeSettingsSelectionView(Landroid/content/Context;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V
    .locals 3
    .parameter "context"
    .parameter "selectionView"
    .parameter "displayStr"
    .parameter "options"
    .parameter "listener"

    .prologue
    .line 72
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, langDisplayStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/waze/settings/SettingsSelectionView;->setKeyText(Ljava/lang/String;)V

    .line 74
    const v1, 0x7f09062b

    invoke-virtual {p1, v1}, Lcom/waze/settings/SettingsSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 75
    new-instance v2, Lcom/waze/settings/SettingsUtilsMultipleConfig$3;

    invoke-direct {v2, p3, p0, v0, p4}, Lcom/waze/settings/SettingsUtilsMultipleConfig$3;-><init>([Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V

    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public static createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;[I)V
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
            "[I)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, langDisplayStr:Ljava/lang/String;
    invoke-virtual {p3, v3}, Lcom/waze/settings/SettingsSelectionView;->setKeyText(Ljava/lang/String;)V

    .line 25
    const v0, 0x7f09062b

    invoke-virtual {p3, v0}, Lcom/waze/settings/SettingsSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;

    move-object v1, p5

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v5, p7

    move-object v6, p1

    move-object v7, p3

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;-><init>([Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;[ILjava/lang/String;Lcom/waze/settings/SettingsSelectionView;[Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public static findValueIndex([II)I
    .locals 2
    .parameter "values"
    .parameter "value"

    .prologue
    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 121
    const/4 v0, 0x0

    .end local v0           #i:I
    :cond_0
    return v0

    .line 117
    .restart local v0       #i:I
    :cond_1
    aget v1, p0, v0

    if-eq v1, p1, :cond_0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static findValueIndex([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "values"
    .parameter "defaultvalue"
    .parameter "value"

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_2

    .line 112
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 102
    :cond_0
    aget-object v1, p0, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 103
    goto :goto_2

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    .line 108
    goto :goto_2

    .line 106
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static setCheckboxCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsCheckboxView;I)V
    .locals 2
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
    .line 133
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const v0, 0x7f090622

    invoke-virtual {p2, v0}, Lcom/waze/settings/SettingsCheckboxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/waze/settings/SettingsUtilsMultipleConfig$5;

    invoke-direct {v1, p1, p3, p0}, Lcom/waze/settings/SettingsUtilsMultipleConfig$5;-><init>(Ljava/util/List;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    return-void
.end method

.method public static setCheckboxLanguageString(Lcom/waze/settings/SettingsCheckboxView;Lcom/waze/strings/DisplayStrings;)V
    .locals 2
    .parameter "checkboxView"
    .parameter "displayStr"

    .prologue
    .line 125
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, langDisplayStr:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsCheckboxView;->setText(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static showSubmenu(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V
    .locals 3
    .parameter "context"
    .parameter "dialogTitle"
    .parameter "options"
    .parameter "listener"

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 67
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 60
    :cond_1
    new-instance v2, Lcom/waze/settings/SettingsUtilsMultipleConfig$2;

    invoke-direct {v2, p3}, Lcom/waze/settings/SettingsUtilsMultipleConfig$2;-><init>(Lcom/waze/settings/SettingsDialogListener;)V

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 66
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
