.class Lcom/waze/NativeManager$175;
.super Ljava/util/TimerTask;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->InitMemoryProfiler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$memoryLog:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$175;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$175;->val$memoryLog:Ljava/lang/Runnable;

    .line 4673
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4676
    iget-object v0, p0, Lcom/waze/NativeManager$175;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$175;->val$memoryLog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 4677
    return-void
.end method
