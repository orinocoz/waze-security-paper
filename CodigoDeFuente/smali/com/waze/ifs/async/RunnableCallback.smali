.class public abstract Lcom/waze/ifs/async/RunnableCallback;
.super Ljava/lang/Object;
.source "RunnableCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "callbackExecutor"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/async/RunnableCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/waze/ifs/async/RunnableCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/waze/ifs/async/RunnableCallback$1;-><init>(Lcom/waze/ifs/async/RunnableCallback;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/waze/ifs/async/RunnableCallback;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "callbackExecutor"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/async/RunnableCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/waze/ifs/async/RunnableCallback$2;

    invoke-direct {v0, p0, p1}, Lcom/waze/ifs/async/RunnableCallback$2;-><init>(Lcom/waze/ifs/async/RunnableCallback;Landroid/view/View;)V

    iput-object v0, p0, Lcom/waze/ifs/async/RunnableCallback;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter "callbackExecutor"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/waze/ifs/async/RunnableCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract callback()V
.end method

.method public abstract event()V
.end method

.method public run()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/waze/ifs/async/RunnableCallback;->event()V

    .line 72
    iget-object v1, p0, Lcom/waze/ifs/async/RunnableCallback;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Lcom/waze/ifs/async/RunnableCallback$3;

    invoke-direct {v0, p0}, Lcom/waze/ifs/async/RunnableCallback$3;-><init>(Lcom/waze/ifs/async/RunnableCallback;)V

    .line 79
    .local v0, callbackEvent:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/waze/ifs/async/RunnableCallback;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    .end local v0           #callbackEvent:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
