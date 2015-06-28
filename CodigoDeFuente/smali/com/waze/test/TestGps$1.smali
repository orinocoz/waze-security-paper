.class Lcom/waze/test/TestGps$1;
.super Ljava/util/TimerTask;
.source "TestGps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/test/TestGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/test/TestGps;


# direct methods
.method constructor <init>(Lcom/waze/test/TestGps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/test/TestGps$1;->this$0:Lcom/waze/test/TestGps;

    .line 59
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/test/TestGps$1;)Lcom/waze/test/TestGps;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/waze/test/TestGps$1;->this$0:Lcom/waze/test/TestGps;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/waze/test/TestGps$1;->this$0:Lcom/waze/test/TestGps;

    iget-boolean v0, v0, Lcom/waze/test/TestGps;->mStarted:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/waze/test/TestGps$1;->this$0:Lcom/waze/test/TestGps;

    iget-object v0, v0, Lcom/waze/test/TestGps;->mGpsHandler:Landroid/os/Handler;

    new-instance v1, Lcom/waze/test/TestGps$1$1;

    invoke-direct {v1, p0}, Lcom/waze/test/TestGps$1$1;-><init>(Lcom/waze/test/TestGps$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/waze/test/TestGps$1;->this$0:Lcom/waze/test/TestGps;

    iget-object v0, v0, Lcom/waze/test/TestGps;->mGpsHandler:Landroid/os/Handler;

    new-instance v1, Lcom/waze/test/TestGps$1$2;

    invoke-direct {v1, p0}, Lcom/waze/test/TestGps$1$2;-><init>(Lcom/waze/test/TestGps$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
