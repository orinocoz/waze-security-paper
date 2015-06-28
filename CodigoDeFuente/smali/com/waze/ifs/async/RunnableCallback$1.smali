.class Lcom/waze/ifs/async/RunnableCallback$1;
.super Ljava/lang/Object;
.source "RunnableCallback.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/async/RunnableCallback;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/async/RunnableCallback;

.field private final synthetic val$callbackExecutor:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/waze/ifs/async/RunnableCallback;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/async/RunnableCallback$1;->this$0:Lcom/waze/ifs/async/RunnableCallback;

    iput-object p2, p0, Lcom/waze/ifs/async/RunnableCallback$1;->val$callbackExecutor:Landroid/app/Activity;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/waze/ifs/async/RunnableCallback$1;->val$callbackExecutor:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method
