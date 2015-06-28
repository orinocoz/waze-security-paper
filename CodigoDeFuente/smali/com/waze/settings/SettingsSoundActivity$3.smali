.class Lcom/waze/settings/SettingsSoundActivity$3;
.super Lcom/waze/settings/SettingsSeekbarView$OnSeekBarChangeListenerBasic;
.source "SettingsSoundActivity.java"


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
    iput-object p1, p0, Lcom/waze/settings/SettingsSoundActivity$3;->this$0:Lcom/waze/settings/SettingsSoundActivity;

    .line 86
    invoke-direct {p0}, Lcom/waze/settings/SettingsSeekbarView$OnSeekBarChangeListenerBasic;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;I)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/waze/settings/SettingsSoundActivity$3;->this$0:Lcom/waze/settings/SettingsSoundActivity;

    invoke-virtual {v0, p2}, Lcom/waze/settings/SettingsSoundActivity;->setPromptsVolume(I)V

    .line 90
    return-void
.end method
