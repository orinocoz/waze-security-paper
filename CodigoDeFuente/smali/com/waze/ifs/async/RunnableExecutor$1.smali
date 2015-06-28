.class Lcom/waze/ifs/async/RunnableExecutor$1;
.super Ljava/lang/Object;
.source "RunnableExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/async/RunnableExecutor;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/async/RunnableExecutor;

.field private final synthetic val$executor:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/waze/ifs/async/RunnableExecutor;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/async/RunnableExecutor$1;->this$0:Lcom/waze/ifs/async/RunnableExecutor;

    iput-object p2, p0, Lcom/waze/ifs/async/RunnableExecutor$1;->val$executor:Landroid/app/Activity;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/waze/ifs/async/RunnableExecutor$1;->val$executor:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method
