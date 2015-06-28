.class public abstract Lcom/waze/ifs/async/RunnableExecutor;
.super Ljava/lang/Object;
.source "RunnableExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/async/RunnableExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "executor"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/async/RunnableExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 35
    if-eqz p1, :cond_0

    .line 37
    new-instance v0, Lcom/waze/ifs/async/RunnableExecutor$1;

    invoke-direct {v0, p0, p1}, Lcom/waze/ifs/async/RunnableExecutor$1;-><init>(Lcom/waze/ifs/async/RunnableExecutor;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/waze/ifs/async/RunnableExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 43
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "executor"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/async/RunnableExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 46
    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Lcom/waze/ifs/async/RunnableExecutor$2;

    invoke-direct {v0, p0, p1}, Lcom/waze/ifs/async/RunnableExecutor$2;-><init>(Lcom/waze/ifs/async/RunnableExecutor;Landroid/view/View;)V

    iput-object v0, p0, Lcom/waze/ifs/async/RunnableExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 54
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter "executor"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/async/RunnableExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 31
    iput-object p1, p0, Lcom/waze/ifs/async/RunnableExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 32
    return-void
.end method


# virtual methods
.method public abstract event()V
.end method

.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/waze/ifs/async/RunnableExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    .line 65
    new-instance v0, Lcom/waze/ifs/async/RunnableExecutor$3;

    invoke-direct {v0, p0}, Lcom/waze/ifs/async/RunnableExecutor$3;-><init>(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 70
    .local v0, _event:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/waze/ifs/async/RunnableExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    .end local v0           #_event:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/waze/ifs/async/RunnableExecutor;->event()V

    goto :goto_0
.end method
