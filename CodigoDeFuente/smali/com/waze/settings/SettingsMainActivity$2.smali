.class Lcom/waze/settings/SettingsMainActivity$2;
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
    iput-object p1, p0, Lcom/waze/settings/SettingsMainActivity$2;->this$0:Lcom/waze/settings/SettingsMainActivity;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/settings/SettingsMainActivity$2;)Lcom/waze/settings/SettingsMainActivity;
    .locals 1
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/waze/settings/SettingsMainActivity$2;->this$0:Lcom/waze/settings/SettingsMainActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 251
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 252
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/waze/settings/SettingsMainActivity$2;->this$0:Lcom/waze/settings/SettingsMainActivity;

    invoke-virtual {v2}, Lcom/waze/settings/SettingsMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 255
    new-instance v0, Lcom/waze/install/InstallNativeManager;

    invoke-direct {v0}, Lcom/waze/install/InstallNativeManager;-><init>()V

    .line 256
    .local v0, installNativeManager:Lcom/waze/install/InstallNativeManager;
    const/4 v2, 0x0

    .line 257
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 258
    new-instance v5, Lcom/waze/settings/SettingsMainActivity$2$1;

    invoke-direct {v5, p0}, Lcom/waze/settings/SettingsMainActivity$2$1;-><init>(Lcom/waze/settings/SettingsMainActivity$2;)V

    .line 256
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/waze/install/InstallNativeManager;->getVideoUrl(ZIILcom/waze/install/InstallNativeManager$VideoUrlListener;)V

    .line 269
    return-void
.end method
