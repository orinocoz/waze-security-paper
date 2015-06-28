.class Lcom/waze/settings/SettingsSoundDeviceActivity$1;
.super Ljava/lang/Object;
.source "SettingsSoundDeviceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsSoundDeviceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsSoundDeviceActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsSoundDeviceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsSoundDeviceActivity$1;->this$0:Lcom/waze/settings/SettingsSoundDeviceActivity;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 49
    .local v2, nm:Lcom/waze/NativeManager;
    sget-object v4, Lcom/waze/settings/SettingsSoundConstants;->DEVICES:[Lcom/waze/strings/DisplayStrings;

    aget-object v1, v4, p3

    .line 50
    .local v1, key:Lcom/waze/strings/DisplayStrings;
    invoke-virtual {v2, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, value:Ljava/lang/String;
    new-instance v0, Lcom/waze/ConfigItem;

    const-string v4, "Sound"

    const-string v5, "Device Name"

    invoke-direct {v0, v4, v5, v3}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v0, item:Lcom/waze/ConfigItem;
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Lcom/waze/ConfigManager;->setConfig(Lcom/waze/ConfigItem;Ljava/lang/String;)V

    .line 54
    iget-object v4, p0, Lcom/waze/settings/SettingsSoundDeviceActivity$1;->this$0:Lcom/waze/settings/SettingsSoundDeviceActivity;

    invoke-virtual {v4}, Lcom/waze/settings/SettingsSoundDeviceActivity;->finish()V

    .line 55
    return-void
.end method
