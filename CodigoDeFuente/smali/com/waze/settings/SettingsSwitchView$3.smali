.class Lcom/waze/settings/SettingsSwitchView$3;
.super Ljava/lang/Object;
.source "SettingsSwitchView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsSwitchView;->changeBgAlphaSecondPhase(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsSwitchView;

.field private final synthetic val$mode:Lcom/waze/settings/SettingsSwitchView$SwitchModes;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsSwitchView$3;->this$0:Lcom/waze/settings/SettingsSwitchView;

    iput-object p2, p0, Lcom/waze/settings/SettingsSwitchView$3;->val$mode:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 228
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 222
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView$3;->this$0:Lcom/waze/settings/SettingsSwitchView;

    iget-object v1, p0, Lcom/waze/settings/SettingsSwitchView$3;->val$mode:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    #calls: Lcom/waze/settings/SettingsSwitchView;->toggleBgImage(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    invoke-static {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->access$5(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    .line 216
    return-void
.end method
