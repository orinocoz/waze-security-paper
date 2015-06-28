.class Lcom/waze/NativeManager$79;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->activateProximity(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$activate:Z

.field private final synthetic val$twice:Z


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$79;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$79;->val$activate:Z

    iput-boolean p3, p0, Lcom/waze/NativeManager$79;->val$twice:Z

    .line 1669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1672
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 1673
    .local v0, mainActivity:Lcom/waze/MainActivity;
    if-nez v0, :cond_0

    .line 1681
    :goto_0
    return-void

    .line 1676
    :cond_0
    iget-boolean v1, p0, Lcom/waze/NativeManager$79;->val$activate:Z

    if-eqz v1, :cond_1

    .line 1677
    iget-boolean v1, p0, Lcom/waze/NativeManager$79;->val$twice:Z

    invoke-static {v0, v1}, Lcom/waze/sensor/VoiceActivator;->activate(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1679
    :cond_1
    invoke-static {v0}, Lcom/waze/sensor/VoiceActivator;->deactivate(Landroid/content/Context;)V

    goto :goto_0
.end method
