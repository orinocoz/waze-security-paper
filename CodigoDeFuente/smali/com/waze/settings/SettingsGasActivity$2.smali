.class Lcom/waze/settings/SettingsGasActivity$2;
.super Ljava/lang/Object;
.source "SettingsGasActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$preferredStationStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsGasActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsGasActivity$2;->this$0:Lcom/waze/settings/SettingsGasActivity;

    iput-object p2, p0, Lcom/waze/settings/SettingsGasActivity$2;->val$preferredStationStr:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/settings/SettingsGasActivity$2;)Lcom/waze/settings/SettingsGasActivity;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity$2;->this$0:Lcom/waze/settings/SettingsGasActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity$2;->this$0:Lcom/waze/settings/SettingsGasActivity;

    iget-object v1, p0, Lcom/waze/settings/SettingsGasActivity$2;->val$preferredStationStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/settings/SettingsGasActivity$2;->this$0:Lcom/waze/settings/SettingsGasActivity;

    #getter for: Lcom/waze/settings/SettingsGasActivity;->stationStrings:[Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/settings/SettingsGasActivity;->access$2(Lcom/waze/settings/SettingsGasActivity;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/waze/settings/SettingsGasActivity$2$1;

    invoke-direct {v3, p0}, Lcom/waze/settings/SettingsGasActivity$2$1;-><init>(Lcom/waze/settings/SettingsGasActivity$2;)V

    invoke-static {v0, v1, v2, v3}, Lcom/waze/settings/SettingsUtils;->showSubmenu(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V

    .line 90
    return-void
.end method
