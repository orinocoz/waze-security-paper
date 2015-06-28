.class Lcom/waze/ifs/async/RunnableCallback$2;
.super Ljava/lang/Object;
.source "RunnableCallback.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/async/RunnableCallback;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/async/RunnableCallback;

.field private final synthetic val$callbackExecutor:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/ifs/async/RunnableCallback;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/async/RunnableCallback$2;->this$0:Lcom/waze/ifs/async/RunnableCallback;

    iput-object p2, p0, Lcom/waze/ifs/async/RunnableCallback$2;->val$callbackExecutor:Landroid/view/View;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/waze/ifs/async/RunnableCallback$2;->val$callbackExecutor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method
