.class Lcom/waze/settings/SettingsSoundActivity$2;
.super Ljava/lang/Object;
.source "SettingsSoundActivity.java"

# interfaces
.implements Lcom/waze/settings/SwitchCheckedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsSoundActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/waze/settings/SettingsSoundActivity$2;->this$0:Lcom/waze/settings/SettingsSoundActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCallback(Z)V
    .locals 1
    .parameter "bIsChecked"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/waze/settings/SettingsSoundActivity$2;->this$0:Lcom/waze/settings/SettingsSoundActivity;

    invoke-virtual {v0, p1}, Lcom/waze/settings/SettingsSoundActivity;->setRoute2Speaker(Z)V

    .line 78
    return-void
.end method
