.class Lcom/waze/settings/SettingsGasActivity$1;
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

.field private final synthetic val$mgr:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsGasActivity;Lcom/waze/NativeManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsGasActivity$1;->this$0:Lcom/waze/settings/SettingsGasActivity;

    iput-object p2, p0, Lcom/waze/settings/SettingsGasActivity$1;->val$mgr:Lcom/waze/NativeManager;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/settings/SettingsValue;)V
    .locals 7
    .parameter "values"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, found:Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v2, strings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/waze/settings/SettingsGasActivity$1;->val$mgr:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ALL_STATIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 73
    iget-object v4, p0, Lcom/waze/settings/SettingsGasActivity$1;->this$0:Lcom/waze/settings/SettingsGasActivity;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    #setter for: Lcom/waze/settings/SettingsGasActivity;->stationStrings:[Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/waze/settings/SettingsGasActivity;->access$1(Lcom/waze/settings/SettingsGasActivity;[Ljava/lang/String;)V

    .line 74
    if-nez v0, :cond_0

    .line 75
    iget-object v3, p0, Lcom/waze/settings/SettingsGasActivity$1;->this$0:Lcom/waze/settings/SettingsGasActivity;

    #getter for: Lcom/waze/settings/SettingsGasActivity;->preferredGasStations:Lcom/waze/settings/SettingsSelectionView;
    invoke-static {v3}, Lcom/waze/settings/SettingsGasActivity;->access$0(Lcom/waze/settings/SettingsGasActivity;)Lcom/waze/settings/SettingsSelectionView;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/settings/SettingsGasActivity$1;->val$mgr:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_ALL_STATIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void

    .line 66
    :cond_1
    aget-object v1, p1, v3

    .line 67
    .local v1, settingsValue:Lcom/waze/settings/SettingsValue;
    iget-object v5, v1, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-boolean v5, v1, Lcom/waze/settings/SettingsValue;->isSelected:Z

    if-eqz v5, :cond_2

    .line 69
    iget-object v5, p0, Lcom/waze/settings/SettingsGasActivity$1;->this$0:Lcom/waze/settings/SettingsGasActivity;

    #getter for: Lcom/waze/settings/SettingsGasActivity;->preferredGasStations:Lcom/waze/settings/SettingsSelectionView;
    invoke-static {v5}, Lcom/waze/settings/SettingsGasActivity;->access$0(Lcom/waze/settings/SettingsGasActivity;)Lcom/waze/settings/SettingsSelectionView;

    move-result-object v5

    iget-object v6, v1, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    .line 66
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
