.class Lcom/waze/social/facebook/FacebookWrapper$6;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "FacebookWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/social/facebook/FacebookWrapper;->getFbPermissions(Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/social/facebook/FacebookWrapper;

.field private final synthetic val$fbPermRequest:Lcom/waze/ifs/async/RunnableUICallback;


# direct methods
.method constructor <init>(Lcom/waze/social/facebook/FacebookWrapper;Ljava/util/concurrent/Executor;Lcom/waze/ifs/async/RunnableUICallback;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/social/facebook/FacebookWrapper$6;->this$0:Lcom/waze/social/facebook/FacebookWrapper;

    iput-object p3, p0, Lcom/waze/social/facebook/FacebookWrapper$6;->val$fbPermRequest:Lcom/waze/ifs/async/RunnableUICallback;

    .line 473
    invoke-direct {p0, p2}, Lcom/waze/ifs/async/RunnableExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/waze/social/facebook/FacebookWrapper$6;->val$fbPermRequest:Lcom/waze/ifs/async/RunnableUICallback;

    invoke-virtual {v0}, Lcom/waze/ifs/async/RunnableUICallback;->run()V

    .line 477
    return-void
.end method
