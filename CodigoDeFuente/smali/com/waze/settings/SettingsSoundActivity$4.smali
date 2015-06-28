.class Lcom/waze/settings/SettingsSoundActivity$4;
.super Ljava/lang/Object;
.source "SettingsSoundActivity.java"

# interfaces
.implements Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsSoundActivity;->onResume()V
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
    iput-object p1, p0, Lcom/waze/settings/SettingsSoundActivity$4;->this$0:Lcom/waze/settings/SettingsSoundActivity;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/settings/SettingsValue;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/waze/settings/SettingsSoundActivity$4;->this$0:Lcom/waze/settings/SettingsSoundActivity;

    #getter for: Lcom/waze/settings/SettingsSoundActivity;->navLanguageView:Lcom/waze/settings/SettingsSelectionView;
    invoke-static {v1}, Lcom/waze/settings/SettingsSoundActivity;->access$0(Lcom/waze/settings/SettingsSoundActivity;)Lcom/waze/settings/SettingsSelectionView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setVisibility(I)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 131
    .local v0, value:Lcom/waze/settings/SettingsValue;
    iget-boolean v3, v0, Lcom/waze/settings/SettingsValue;->isSelected:Z

    if-eqz v3, :cond_2

    .line 132
    iget-object v1, p0, Lcom/waze/settings/SettingsSoundActivity$4;->this$0:Lcom/waze/settings/SettingsSoundActivity;

    #getter for: Lcom/waze/settings/SettingsSoundActivity;->navLanguageView:Lcom/waze/settings/SettingsSelectionView;
    invoke-static {v1}, Lcom/waze/settings/SettingsSoundActivity;->access$0(Lcom/waze/settings/SettingsSoundActivity;)Lcom/waze/settings/SettingsSelectionView;

    move-result-object v1

    iget-object v2, v0, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
