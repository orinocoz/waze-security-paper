.class Lcom/waze/NativeManager$199;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenQuickMenuSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$199;->this$0:Lcom/waze/NativeManager;

    .line 5713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5716
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5717
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    const-class v2, Lcom/waze/settings/SettingsMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5719
    .local v0, quickMenuSettingsIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 5721
    .end local v0           #quickMenuSettingsIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
