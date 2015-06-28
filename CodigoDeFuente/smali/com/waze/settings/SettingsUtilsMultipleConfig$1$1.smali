.class Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;
.super Ljava/lang/Object;
.source "SettingsUtilsMultipleConfig.java"

# interfaces
.implements Lcom/waze/settings/SettingsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsUtilsMultipleConfig$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/settings/SettingsUtilsMultipleConfig$1;

.field private final synthetic val$configIndex:[I

.field private final synthetic val$configItems:Ljava/util/List;

.field private final synthetic val$options:[Ljava/lang/String;

.field private final synthetic val$screenName:Ljava/lang/String;

.field private final synthetic val$selectionView:Lcom/waze/settings/SettingsSelectionView;

.field private final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsUtilsMultipleConfig$1;Ljava/util/List;[ILjava/lang/String;Lcom/waze/settings/SettingsSelectionView;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->this$1:Lcom/waze/settings/SettingsUtilsMultipleConfig$1;

    iput-object p2, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$configItems:Ljava/util/List;

    iput-object p3, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$configIndex:[I

    iput-object p4, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$screenName:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$selectionView:Lcom/waze/settings/SettingsSelectionView;

    iput-object p6, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$options:[Ljava/lang/String;

    iput-object p7, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$values:[Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 37
    if-eq p1, v3, :cond_0

    .line 39
    iget-object v1, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$configItems:Ljava/util/List;

    iget-object v2, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$configIndex:[I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ConfigItem;

    .line 40
    .local v0, configItem:Lcom/waze/ConfigItem;
    const-string v1, "no"

    invoke-virtual {v0, v1}, Lcom/waze/ConfigItem;->setValue(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$screenName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/waze/ConfigManager;->setConfig(Lcom/waze/ConfigItem;Ljava/lang/String;)V

    .line 43
    .end local v0           #configItem:Lcom/waze/ConfigItem;
    :cond_0
    iget-object v1, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$configItems:Ljava/util/List;

    iget-object v2, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$configIndex:[I

    aget v2, v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ConfigItem;

    .line 44
    .restart local v0       #configItem:Lcom/waze/ConfigItem;
    iget-object v1, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$selectionView:Lcom/waze/settings/SettingsSelectionView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$options:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$values:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/waze/ConfigItem;->setValue(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$1$1;->val$screenName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/waze/ConfigManager;->setConfig(Lcom/waze/ConfigItem;Ljava/lang/String;)V

    .line 47
    return-void
.end method
