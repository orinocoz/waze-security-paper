.class Lcom/waze/settings/SettingsSoundActivity$1;
.super Ljava/lang/Object;
.source "SettingsSoundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsSoundActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsSoundActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsSoundActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsSoundActivity$1;->this$0:Lcom/waze/settings/SettingsSoundActivity;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/settings/SettingsSoundActivity$1;->this$0:Lcom/waze/settings/SettingsSoundActivity;

    const-class v2, Lcom/waze/settings/SettingsNavigationGuidanceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/settings/SettingsSoundActivity$1;->this$0:Lcom/waze/settings/SettingsSoundActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/waze/settings/SettingsSoundActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    return-void
.end method
