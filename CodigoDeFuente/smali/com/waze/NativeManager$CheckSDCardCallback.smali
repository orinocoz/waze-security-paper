.class Lcom/waze/NativeManager$CheckSDCardCallback;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckSDCardCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/NativeManager$CheckSDCardCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 3740
    invoke-direct {p0}, Lcom/waze/NativeManager$CheckSDCardCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3743
    invoke-static {}, Lcom/waze/MsgBox;->Notify()V

    .line 3744
    invoke-static {}, Lcom/waze/NativeManager;->access$13()Lcom/waze/NativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3745
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3746
    invoke-static {}, Lcom/waze/NativeManager;->access$13()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->ShutDown()V

    .line 3750
    :cond_0
    :goto_0
    return-void

    .line 3747
    :cond_1
    invoke-static {}, Lcom/waze/NativeManager;->access$13()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->getInitializedStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3748
    invoke-static {}, Lcom/waze/NativeManager;->access$13()Lcom/waze/NativeManager;

    move-result-object v0

    #calls: Lcom/waze/NativeManager;->appLayerShutDown()V
    invoke-static {v0}, Lcom/waze/NativeManager;->access$16(Lcom/waze/NativeManager;)V

    goto :goto_0
.end method
