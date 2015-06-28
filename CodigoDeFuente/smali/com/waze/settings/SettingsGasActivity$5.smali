.class Lcom/waze/settings/SettingsGasActivity$5;
.super Ljava/lang/Object;
.source "SettingsGasActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/waze/settings/SettingsGasActivity$5;->this$0:Lcom/waze/settings/SettingsGasActivity;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 138
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/waze/NativeManager;->SetShowGasPricePopupAgain(Z)V

    .line 139
    return-void
.end method
