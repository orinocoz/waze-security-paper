.class Lcom/waze/settings/SettingsHelpActivity$3;
.super Ljava/lang/Object;
.source "SettingsHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsHelpActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsHelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsHelpActivity$3;->this$0:Lcom/waze/settings/SettingsHelpActivity;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity$3;->this$0:Lcom/waze/settings/SettingsHelpActivity;

    const-class v2, Lcom/waze/ifs/ui/VideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/waze/settings/SettingsHelpActivity$3;->this$0:Lcom/waze/settings/SettingsHelpActivity;

    iget-object v2, v2, Lcom/waze/settings/SettingsHelpActivity;->editVideoUrl:Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity$3;->this$0:Lcom/waze/settings/SettingsHelpActivity;

    invoke-virtual {v1, v0}, Lcom/waze/settings/SettingsHelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method
