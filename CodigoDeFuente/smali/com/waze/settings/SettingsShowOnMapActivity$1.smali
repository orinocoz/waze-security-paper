.class Lcom/waze/settings/SettingsShowOnMapActivity$1;
.super Ljava/lang/Object;
.source "SettingsShowOnMapActivity.java"

# interfaces
.implements Lcom/waze/settings/SwitchCheckedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsShowOnMapActivity;->createCheckbox(Lcom/waze/strings/DisplayStrings;Lcom/waze/settings/SettingsSwitchView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsShowOnMapActivity;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsShowOnMapActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsShowOnMapActivity$1;->this$0:Lcom/waze/settings/SettingsShowOnMapActivity;

    iput p2, p0, Lcom/waze/settings/SettingsShowOnMapActivity$1;->val$index:I

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCallback(Z)V
    .locals 3
    .parameter "bIsChecked"

    .prologue
    .line 166
    iget-object v1, p0, Lcom/waze/settings/SettingsShowOnMapActivity$1;->this$0:Lcom/waze/settings/SettingsShowOnMapActivity;

    #getter for: Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z
    invoke-static {v1}, Lcom/waze/settings/SettingsShowOnMapActivity;->access$0(Lcom/waze/settings/SettingsShowOnMapActivity;)[Z

    move-result-object v1

    if-nez v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/waze/settings/SettingsShowOnMapActivity$1;->this$0:Lcom/waze/settings/SettingsShowOnMapActivity;

    #getter for: Lcom/waze/settings/SettingsShowOnMapActivity;->reportTypes:[Z
    invoke-static {v1}, Lcom/waze/settings/SettingsShowOnMapActivity;->access$0(Lcom/waze/settings/SettingsShowOnMapActivity;)[Z

    move-result-object v1

    iget v2, p0, Lcom/waze/settings/SettingsShowOnMapActivity$1;->val$index:I

    aput-boolean p1, v1, v2

    .line 170
    iget-object v1, p0, Lcom/waze/settings/SettingsShowOnMapActivity$1;->this$0:Lcom/waze/settings/SettingsShowOnMapActivity;

    #getter for: Lcom/waze/settings/SettingsShowOnMapActivity;->mConfigItems:Ljava/util/List;
    invoke-static {v1}, Lcom/waze/settings/SettingsShowOnMapActivity;->access$1(Lcom/waze/settings/SettingsShowOnMapActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ConfigItem;

    .line 171
    .local v0, configItem:Lcom/waze/ConfigItem;
    iget-object v1, p0, Lcom/waze/settings/SettingsShowOnMapActivity$1;->this$0:Lcom/waze/settings/SettingsShowOnMapActivity;

    invoke-virtual {v1}, Lcom/waze/settings/SettingsShowOnMapActivity;->createReportTypesString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/ConfigItem;->setValue(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v1

    const-string v2, "SettingsAdvancedShowOnMap"

    invoke-virtual {v1, v0, v2}, Lcom/waze/ConfigManager;->setConfig(Lcom/waze/ConfigItem;Ljava/lang/String;)V

    goto :goto_0
.end method
