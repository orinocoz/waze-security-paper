.class Lcom/waze/settings/SettingsSwitchView$1;
.super Ljava/lang/Object;
.source "SettingsSwitchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsSwitchView;

.field private final synthetic val$listener:Lcom/waze/settings/SwitchCheckedCallback;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SwitchCheckedCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsSwitchView$1;->this$0:Lcom/waze/settings/SettingsSwitchView;

    iput-object p2, p0, Lcom/waze/settings/SettingsSwitchView$1;->val$listener:Lcom/waze/settings/SwitchCheckedCallback;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/waze/settings/SettingsSwitchView$1;->this$0:Lcom/waze/settings/SettingsSwitchView;

    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView$1;->this$0:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v0}, Lcom/waze/settings/SettingsSwitchView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->UNCHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    :goto_0
    #setter for: Lcom/waze/settings/SettingsSwitchView;->mSwitchMode:Lcom/waze/settings/SettingsSwitchView$SwitchModes;
    invoke-static {v1, v0}, Lcom/waze/settings/SettingsSwitchView;->access$0(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    .line 77
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView$1;->this$0:Lcom/waze/settings/SettingsSwitchView;

    iget-object v1, p0, Lcom/waze/settings/SettingsSwitchView$1;->this$0:Lcom/waze/settings/SettingsSwitchView;

    #getter for: Lcom/waze/settings/SettingsSwitchView;->mSwitchMode:Lcom/waze/settings/SettingsSwitchView$SwitchModes;
    invoke-static {v1}, Lcom/waze/settings/SettingsSwitchView;->access$1(Lcom/waze/settings/SettingsSwitchView;)Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    move-result-object v1

    #calls: Lcom/waze/settings/SettingsSwitchView;->animateSwitch(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    invoke-static {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->access$2(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    .line 78
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView$1;->val$listener:Lcom/waze/settings/SwitchCheckedCallback;

    iget-object v1, p0, Lcom/waze/settings/SettingsSwitchView$1;->this$0:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v1}, Lcom/waze/settings/SettingsSwitchView;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/waze/settings/SwitchCheckedCallback;->OnCallback(Z)V

    .line 79
    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->CHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    goto :goto_0
.end method
