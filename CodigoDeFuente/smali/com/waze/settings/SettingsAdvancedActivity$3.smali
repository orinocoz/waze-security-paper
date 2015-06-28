.class Lcom/waze/settings/SettingsAdvancedActivity$3;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Lcom/waze/settings/SwitchCheckedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsAdvancedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsAdvancedActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsAdvancedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsAdvancedActivity$3;->this$0:Lcom/waze/settings/SettingsAdvancedActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCallback(Z)V
    .locals 2
    .parameter "bIsChecked"

    .prologue
    .line 152
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    .line 153
    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1, p1}, Lcom/waze/ConfigManager;->setConfigSwitchValue(IZ)V

    .line 154
    return-void
.end method
