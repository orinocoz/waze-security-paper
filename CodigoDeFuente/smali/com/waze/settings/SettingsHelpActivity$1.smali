.class Lcom/waze/settings/SettingsHelpActivity$1;
.super Ljava/lang/Object;
.source "SettingsHelpActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


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
    iput-object p1, p0, Lcom/waze/settings/SettingsHelpActivity$1;->this$0:Lcom/waze/settings/SettingsHelpActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfigItems(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    iget-object v2, p0, Lcom/waze/settings/SettingsHelpActivity$1;->this$0:Lcom/waze/settings/SettingsHelpActivity;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    iput-object v1, v2, Lcom/waze/settings/SettingsHelpActivity;->editVideoUrl:Lcom/waze/ConfigItem;

    .line 53
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, value:Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity$1;->this$0:Lcom/waze/settings/SettingsHelpActivity;

    iput-boolean v4, v1, Lcom/waze/settings/SettingsHelpActivity;->showGuidedTour:Z

    .line 63
    :goto_0
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity$1;->this$0:Lcom/waze/settings/SettingsHelpActivity;

    iput-boolean v4, v1, Lcom/waze/settings/SettingsHelpActivity;->showHowToEditMap:Z

    .line 76
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 58
    .restart local v0       #value:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity$1;->this$0:Lcom/waze/settings/SettingsHelpActivity;

    iput-boolean v3, v1, Lcom/waze/settings/SettingsHelpActivity;->showGuidedTour:Z

    .line 59
    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity$1;->this$0:Lcom/waze/settings/SettingsHelpActivity;

    const v2, 0x7f090639

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/DrillDownSettingView;

    invoke-virtual {v1, v5}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity$1;->this$0:Lcom/waze/settings/SettingsHelpActivity;

    iput-boolean v3, v1, Lcom/waze/settings/SettingsHelpActivity;->showHowToEditMap:Z

    .line 70
    iget-object v1, p0, Lcom/waze/settings/SettingsHelpActivity$1;->this$0:Lcom/waze/settings/SettingsHelpActivity;

    const v2, 0x7f09063a

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/DrillDownSettingView;

    invoke-virtual {v1, v5}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto :goto_1
.end method
