.class Lcom/waze/settings/SettingsGasActivity$3;
.super Ljava/lang/Object;
.source "SettingsGasActivity.java"

# interfaces
.implements Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsGasActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsGasActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsGasActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsGasActivity$3;->this$0:Lcom/waze/settings/SettingsGasActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/settings/SettingsValue;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, strings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/waze/settings/SettingsGasActivity$3;->this$0:Lcom/waze/settings/SettingsGasActivity;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    #setter for: Lcom/waze/settings/SettingsGasActivity;->typeStrings:[Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/waze/settings/SettingsGasActivity;->access$5(Lcom/waze/settings/SettingsGasActivity;[Ljava/lang/String;)V

    .line 105
    return-void

    .line 97
    :cond_0
    aget-object v0, p1, v2

    .line 98
    .local v0, settingsValue:Lcom/waze/settings/SettingsValue;
    iget-object v4, v0, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-boolean v4, v0, Lcom/waze/settings/SettingsValue;->isSelected:Z

    if-eqz v4, :cond_1

    .line 100
    iget-object v4, p0, Lcom/waze/settings/SettingsGasActivity$3;->this$0:Lcom/waze/settings/SettingsGasActivity;

    #getter for: Lcom/waze/settings/SettingsGasActivity;->preferredGasType:Lcom/waze/settings/SettingsSelectionView;
    invoke-static {v4}, Lcom/waze/settings/SettingsGasActivity;->access$4(Lcom/waze/settings/SettingsGasActivity;)Lcom/waze/settings/SettingsSelectionView;

    move-result-object v4

    iget-object v5, v0, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 97
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
