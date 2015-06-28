.class Lcom/waze/AppService$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "AppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/AppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/AppService;


# direct methods
.method constructor <init>(Lcom/waze/AppService;Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/AppService$1;->this$0:Lcom/waze/AppService;

    .line 906
    invoke-direct {p0, p2}, Lcom/waze/ifs/async/RunnableExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 4

    .prologue
    .line 911
    new-instance v0, Lcom/waze/ConnEventReceiver;

    invoke-direct {v0}, Lcom/waze/ConnEventReceiver;-><init>()V

    invoke-static {v0}, Lcom/waze/AppService;->access$0(Lcom/waze/ConnEventReceiver;)V

    .line 912
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/waze/AppService;->access$1()Lcom/waze/ConnEventReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 913
    return-void
.end method
