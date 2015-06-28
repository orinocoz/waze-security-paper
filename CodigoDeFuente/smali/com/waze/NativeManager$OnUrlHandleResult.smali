.class public abstract Lcom/waze/NativeManager$OnUrlHandleResult;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnUrlHandleResult"
.end annotation


# instance fields
.field public result:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1266
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    .line 1268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/NativeManager$OnUrlHandleResult;->result:Z

    .line 1266
    return-void
.end method
