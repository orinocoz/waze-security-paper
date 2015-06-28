.class Lcom/waze/NativeManager$157;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->EditBoxCheckTypingLock(Lcom/waze/EditBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$clearTextEditBoxEvent:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$157;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$157;->val$clearTextEditBoxEvent:Ljava/lang/Runnable;

    .line 3317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3319
    iget-object v1, p0, Lcom/waze/NativeManager$157;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->EditBoxCheckTypingLockNTV()Z
    invoke-static {v1}, Lcom/waze/NativeManager;->access$91(Lcom/waze/NativeManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3322
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 3323
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 3328
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 3326
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    iget-object v1, p0, Lcom/waze/NativeManager$157;->val$clearTextEditBoxEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
