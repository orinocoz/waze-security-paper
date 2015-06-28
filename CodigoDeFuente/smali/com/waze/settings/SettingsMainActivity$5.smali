.class Lcom/waze/settings/SettingsMainActivity$5;
.super Ljava/lang/Object;
.source "SettingsMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsMainActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsMainActivity$5;->this$0:Lcom/waze/settings/SettingsMainActivity;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 296
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/ConfigManager;->sendLogsClick()V

    .line 297
    return-void
.end method
