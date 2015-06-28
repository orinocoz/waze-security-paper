.class Lcom/waze/pioneer/PioneerManager$5;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "PioneerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/pioneer/PioneerManager;->onPioneerConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/pioneer/PioneerManager;

.field private final synthetic val$event:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/waze/pioneer/PioneerManager;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/pioneer/PioneerManager$5;->this$0:Lcom/waze/pioneer/PioneerManager;

    iput-object p3, p0, Lcom/waze/pioneer/PioneerManager$5;->val$event:Ljava/lang/Runnable;

    .line 425
    invoke-direct {p0, p2}, Lcom/waze/ifs/async/RunnableExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/waze/pioneer/PioneerManager$5;->val$event:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 429
    return-void
.end method
