.class Lcom/waze/settings/SettingsMainActivity$3;
.super Ljava/lang/Object;
.source "SettingsMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsMainActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsMainActivity$3;->this$0:Lcom/waze/settings/SettingsMainActivity;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity$3;->this$0:Lcom/waze/settings/SettingsMainActivity;

    iget-object v1, v1, Lcom/waze/settings/SettingsMainActivity;->editVideoUrl:Lcom/waze/ConfigItem;

    if-eqz v1, :cond_0

    .line 277
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity$3;->this$0:Lcom/waze/settings/SettingsMainActivity;

    .line 278
    const-class v2, Lcom/waze/ifs/ui/VideoActivity;

    .line 277
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/waze/settings/SettingsMainActivity$3;->this$0:Lcom/waze/settings/SettingsMainActivity;

    iget-object v2, v2, Lcom/waze/settings/SettingsMainActivity;->editVideoUrl:Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v1, "landscape"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    iget-object v1, p0, Lcom/waze/settings/SettingsMainActivity$3;->this$0:Lcom/waze/settings/SettingsMainActivity;

    invoke-virtual {v1, v0}, Lcom/waze/settings/SettingsMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 283
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
