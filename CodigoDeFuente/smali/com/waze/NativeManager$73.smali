.class Lcom/waze/NativeManager$73;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->AccountPasswordRecovery()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$73;->this$0:Lcom/waze/NativeManager;

    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1483
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->closeAllActivities()V

    .line 1484
    sput-boolean v3, Lcom/waze/MainActivity;->bToOpenPasswordRecovery:Z

    .line 1485
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1487
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    const-class v2, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1488
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "back"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1489
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1490
    const-string v1, "fon_shon_rea_son"

    .line 1491
    const-string v2, "FEATURE"

    .line 1490
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, v0, v2}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1498
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1496
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/MainActivity;->openPasswordRecovery()V

    goto :goto_0
.end method
