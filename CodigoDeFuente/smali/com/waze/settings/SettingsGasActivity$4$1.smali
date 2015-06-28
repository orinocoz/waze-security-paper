.class Lcom/waze/settings/SettingsGasActivity$4$1;
.super Ljava/lang/Object;
.source "SettingsGasActivity.java"

# interfaces
.implements Lcom/waze/settings/SettingsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsGasActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/settings/SettingsGasActivity$4;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsGasActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsGasActivity$4$1;->this$1:Lcom/waze/settings/SettingsGasActivity$4;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity$4$1;->this$1:Lcom/waze/settings/SettingsGasActivity$4;

    #getter for: Lcom/waze/settings/SettingsGasActivity$4;->this$0:Lcom/waze/settings/SettingsGasActivity;
    invoke-static {v0}, Lcom/waze/settings/SettingsGasActivity$4;->access$0(Lcom/waze/settings/SettingsGasActivity$4;)Lcom/waze/settings/SettingsGasActivity;

    move-result-object v0

    #getter for: Lcom/waze/settings/SettingsGasActivity;->preferredGasType:Lcom/waze/settings/SettingsSelectionView;
    invoke-static {v0}, Lcom/waze/settings/SettingsGasActivity;->access$4(Lcom/waze/settings/SettingsGasActivity;)Lcom/waze/settings/SettingsSelectionView;

    move-result-object v0

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/settings/SettingsGasActivity$4$1;->this$1:Lcom/waze/settings/SettingsGasActivity$4;

    #getter for: Lcom/waze/settings/SettingsGasActivity$4;->this$0:Lcom/waze/settings/SettingsGasActivity;
    invoke-static {v2}, Lcom/waze/settings/SettingsGasActivity$4;->access$0(Lcom/waze/settings/SettingsGasActivity$4;)Lcom/waze/settings/SettingsGasActivity;

    move-result-object v2

    #getter for: Lcom/waze/settings/SettingsGasActivity;->typeStrings:[Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/settings/SettingsGasActivity;->access$6(Lcom/waze/settings/SettingsGasActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/waze/settings/SettingsGasActivity$4$1;->this$1:Lcom/waze/settings/SettingsGasActivity$4;

    #getter for: Lcom/waze/settings/SettingsGasActivity$4;->this$0:Lcom/waze/settings/SettingsGasActivity;
    invoke-static {v0}, Lcom/waze/settings/SettingsGasActivity$4;->access$0(Lcom/waze/settings/SettingsGasActivity$4;)Lcom/waze/settings/SettingsGasActivity;

    move-result-object v0

    #getter for: Lcom/waze/settings/SettingsGasActivity;->settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;
    invoke-static {v0}, Lcom/waze/settings/SettingsGasActivity;->access$3(Lcom/waze/settings/SettingsGasActivity;)Lcom/waze/settings/SettingsNativeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/waze/settings/SettingsNativeManager;->setPreferredType(I)V

    .line 115
    return-void
.end method
