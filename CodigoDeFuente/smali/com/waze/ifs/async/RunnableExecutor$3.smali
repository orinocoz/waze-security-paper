.class Lcom/waze/ifs/async/RunnableExecutor$3;
.super Ljava/lang/Object;
.source "RunnableExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/async/RunnableExecutor;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/async/RunnableExecutor;


# direct methods
.method constructor <init>(Lcom/waze/ifs/async/RunnableExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/async/RunnableExecutor$3;->this$0:Lcom/waze/ifs/async/RunnableExecutor;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/waze/ifs/async/RunnableExecutor$3;->this$0:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v0}, Lcom/waze/ifs/async/RunnableExecutor;->event()V

    .line 68
    return-void
.end method
