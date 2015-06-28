.class Lcom/waze/NativeManager$158;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->checkTypingLock(Lcom/waze/view/text/TypingLockListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$listener:Lcom/waze/view/text/TypingLockListener;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/view/text/TypingLockListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$158;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$158;->val$listener:Lcom/waze/view/text/TypingLockListener;

    .line 3334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/waze/NativeManager$158;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->EditBoxCheckTypingLockNTV()Z
    invoke-static {v0}, Lcom/waze/NativeManager;->access$91(Lcom/waze/NativeManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3337
    new-instance v0, Lcom/waze/NativeManager$158$1;

    iget-object v1, p0, Lcom/waze/NativeManager$158;->val$listener:Lcom/waze/view/text/TypingLockListener;

    invoke-direct {v0, p0, v1}, Lcom/waze/NativeManager$158$1;-><init>(Lcom/waze/NativeManager$158;Lcom/waze/view/text/TypingLockListener;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 3344
    :cond_0
    return-void
.end method
