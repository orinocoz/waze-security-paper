.class Lcom/waze/settings/SettingsMainActivity$2$1;
.super Ljava/lang/Object;
.source "SettingsMainActivity.java"

# interfaces
.implements Lcom/waze/install/InstallNativeManager$VideoUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsMainActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/settings/SettingsMainActivity$2;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsMainActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsMainActivity$2$1;->this$1:Lcom/waze/settings/SettingsMainActivity$2;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    .line 262
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity$2$1;->this$1:Lcom/waze/settings/SettingsMainActivity$2;

    #getter for: Lcom/waze/settings/SettingsMainActivity$2;->this$0:Lcom/waze/settings/SettingsMainActivity;
    invoke-static {v1}, Lcom/waze/settings/SettingsMainActivity$2;->access$0(Lcom/waze/settings/SettingsMainActivity$2;)Lcom/waze/settings/SettingsMainActivity;

    move-result-object v1

    .line 263
    const-class v2, Lcom/waze/ifs/ui/VideoActivity;

    .line 261
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity$2$1;->this$1:Lcom/waze/settings/SettingsMainActivity$2;

    #getter for: Lcom/waze/settings/SettingsMainActivity$2;->this$0:Lcom/waze/settings/SettingsMainActivity;
    invoke-static {v1}, Lcom/waze/settings/SettingsMainActivity$2;->access$0(Lcom/waze/settings/SettingsMainActivity$2;)Lcom/waze/settings/SettingsMainActivity;

    move-result-object v1

    .line 266
    invoke-virtual {v1, v0}, Lcom/waze/settings/SettingsMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void
.end method
