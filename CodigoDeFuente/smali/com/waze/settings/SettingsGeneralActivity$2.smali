.class Lcom/waze/settings/SettingsGeneralActivity$2;
.super Ljava/lang/Object;
.source "SettingsGeneralActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsGeneralActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsGeneralActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsGeneralActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsGeneralActivity$2;->this$0:Lcom/waze/settings/SettingsGeneralActivity;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/settings/SettingsGeneralActivity$2;->this$0:Lcom/waze/settings/SettingsGeneralActivity;

    const-class v2, Lcom/waze/settings/SettingsLanguageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/settings/SettingsGeneralActivity$2;->this$0:Lcom/waze/settings/SettingsGeneralActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/waze/settings/SettingsGeneralActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 167
    return-void
.end method
