.class public Lcom/waze/IntentManager$WazeSDCardManager;
.super Landroid/content/BroadcastReceiver;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/IntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WazeSDCardManager"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    :cond_0
    const-string v1, "WAZE"

    const-string v2, "Received media removed/unmounted event. WAZE cannot continue!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Lcom/waze/NativeManager;->CheckSDCardAvailable()Z

    .line 297
    :cond_1
    return-void
.end method
