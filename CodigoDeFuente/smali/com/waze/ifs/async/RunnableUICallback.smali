.class public abstract Lcom/waze/ifs/async/RunnableUICallback;
.super Lcom/waze/ifs/async/RunnableCallback;
.source "RunnableUICallback.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/waze/AppService;->getInstance()Lcom/waze/AppService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waze/ifs/async/RunnableCallback;-><init>(Ljava/util/concurrent/Executor;)V

    .line 24
    return-void
.end method
