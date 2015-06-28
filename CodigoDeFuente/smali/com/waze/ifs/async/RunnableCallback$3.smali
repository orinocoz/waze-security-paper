.class Lcom/waze/ifs/async/RunnableCallback$3;
.super Ljava/lang/Object;
.source "RunnableCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/async/RunnableCallback;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/async/RunnableCallback;


# direct methods
.method constructor <init>(Lcom/waze/ifs/async/RunnableCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/async/RunnableCallback$3;->this$0:Lcom/waze/ifs/async/RunnableCallback;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/waze/ifs/async/RunnableCallback$3;->this$0:Lcom/waze/ifs/async/RunnableCallback;

    invoke-virtual {v0}, Lcom/waze/ifs/async/RunnableCallback;->callback()V

    .line 77
    return-void
.end method
