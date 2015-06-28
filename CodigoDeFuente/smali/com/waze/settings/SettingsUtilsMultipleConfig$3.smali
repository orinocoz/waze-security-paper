.class Lcom/waze/settings/SettingsUtilsMultipleConfig$3;
.super Ljava/lang/Object;
.source "SettingsUtilsMultipleConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsUtilsMultipleConfig;->createFakeSettingsSelectionView(Landroid/content/Context;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$langDisplayStr:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/waze/settings/SettingsDialogListener;

.field private final synthetic val$options:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$3;->val$options:[Ljava/lang/String;

    iput-object p2, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$3;->val$langDisplayStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$3;->val$listener:Lcom/waze/settings/SettingsDialogListener;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 78
    iget-object v3, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$3;->val$options:[Ljava/lang/String;

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/String;

    .line 79
    .local v0, displayOptions:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 80
    .local v1, i:I
    iget-object v4, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$3;->val$options:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 84
    iget-object v3, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$3;->val$langDisplayStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$3;->val$listener:Lcom/waze/settings/SettingsDialogListener;

    invoke-static {v3, v4, v0, v5}, Lcom/waze/settings/SettingsUtilsMultipleConfig;->showSubmenu(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V

    .line 85
    return-void

    .line 80
    :cond_0
    aget-object v2, v4, v3

    .line 81
    .local v2, option:Ljava/lang/String;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
