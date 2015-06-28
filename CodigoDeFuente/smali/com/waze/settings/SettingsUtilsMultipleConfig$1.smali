.class Lcom/waze/settings/SettingsUtilsMultipleConfig$1;
.super Ljava/lang/Object;
.source "SettingsUtilsMultipleConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsUtilsMultipleConfig;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$configIndex:[I

.field private final synthetic val$configItems:Ljava/util/List;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$langDisplayStr:Ljava/lang/String;

.field private final synthetic val$options:[Ljava/lang/String;

.field private final synthetic val$screenName:Ljava/lang/String;

.field private final synthetic val$selectionView:Lcom/waze/settings/SettingsSelectionView;

.field private final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;[ILjava/lang/String;Lcom/waze/settings/SettingsSelectionView;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$options:[Ljava/lang/String;

    iput-object p2, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$langDisplayStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$configItems:Ljava/util/List;

    iput-object p5, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$configIndex:[I

    iput-object p6, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$screenName:Ljava/lang/String;

    iput-object p7, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$selectionView:Lcom/waze/settings/SettingsSelectionView;

    iput-object p8, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$values:[Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$options:[Ljava/lang/String;

    array-length v0, v0

    new-array v8, v0, [Ljava/lang/String;

    .line 29
    .local v8, displayOptions:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 30
    .local v9, i:I
    iget-object v1, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$options:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 34
    iget-object v11, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$context:Landroid/content/Context;

    iget-object v12, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$langDisplayStr:Ljava/lang/String;

    new-instance v0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;

    iget-object v2, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$configItems:Ljava/util/List;

    iget-object v3, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$configIndex:[I

    iget-object v4, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$screenName:Ljava/lang/String;

    iget-object v5, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$selectionView:Lcom/waze/settings/SettingsSelectionView;

    iget-object v6, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$options:[Ljava/lang/String;

    iget-object v7, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->val$values:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;-><init>(Lcom/waze/settings/SettingsUtilsMultipleConfig$1;Ljava/util/List;[ILjava/lang/String;Lcom/waze/settings/SettingsSelectionView;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v11, v12, v8, v0}, Lcom/waze/settings/SettingsUtilsMultipleConfig;->showSubmenu(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V

    .line 49
    return-void

    .line 30
    :cond_0
    aget-object v10, v1, v0

    .line 31
    .local v10, option:Ljava/lang/String;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    .line 32
    add-int/lit8 v9, v9, 0x1

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
