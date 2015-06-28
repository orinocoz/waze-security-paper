.class Lcom/waze/settings/SettingsGeneralActivity$3;
.super Ljava/lang/Object;
.source "SettingsGeneralActivity.java"

# interfaces
.implements Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;


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
    iput-object p1, p0, Lcom/waze/settings/SettingsGeneralActivity$3;->this$0:Lcom/waze/settings/SettingsGeneralActivity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/settings/SettingsValue;)V
    .locals 4
    .parameter "languages"

    .prologue
    .line 174
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 180
    :goto_1
    return-void

    .line 174
    :cond_0
    aget-object v0, p1, v1

    .line 175
    .local v0, language:Lcom/waze/settings/SettingsValue;
    iget-boolean v3, v0, Lcom/waze/settings/SettingsValue;->isSelected:Z

    if-eqz v3, :cond_1

    .line 176
    iget-object v1, p0, Lcom/waze/settings/SettingsGeneralActivity$3;->this$0:Lcom/waze/settings/SettingsGeneralActivity;

    #getter for: Lcom/waze/settings/SettingsGeneralActivity;->languageView:Lcom/waze/settings/SettingsSelectionView;
    invoke-static {v1}, Lcom/waze/settings/SettingsGeneralActivity;->access$2(Lcom/waze/settings/SettingsGeneralActivity;)Lcom/waze/settings/SettingsSelectionView;

    move-result-object v1

    iget-object v2, v0, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
