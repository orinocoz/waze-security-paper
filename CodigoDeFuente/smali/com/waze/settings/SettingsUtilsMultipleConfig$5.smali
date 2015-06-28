.class Lcom/waze/settings/SettingsUtilsMultipleConfig$5;
.super Ljava/lang/Object;
.source "SettingsUtilsMultipleConfig.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsUtilsMultipleConfig;->setCheckboxCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsCheckboxView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$configIndex:I

.field private final synthetic val$configItems:Ljava/util/List;

.field private final synthetic val$screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$5;->val$configItems:Ljava/util/List;

    iput p2, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$5;->val$configIndex:I

    iput-object p3, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$5;->val$screenName:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$5;->val$configItems:Ljava/util/List;

    iget v2, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$5;->val$configIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ConfigItem;

    .line 137
    .local v0, configItem:Lcom/waze/ConfigItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "yes"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/ConfigItem;->setValue(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$5;->val$screenName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/waze/ConfigManager;->setConfig(Lcom/waze/ConfigItem;Ljava/lang/String;)V

    .line 139
    return-void

    .line 137
    :cond_0
    const-string v1, "no"

    goto :goto_0
.end method
